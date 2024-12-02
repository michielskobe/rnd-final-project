----------------------------------------------------------------------------------
-- Company: KUL - rnd embed - Beats N Bytes
-- Engineer: Robbe Decapmaker <debber@dcpm.be>
-- 
-- Create Date: 11/25/2024 04:00:56 PM
-- Design Name: channel mapper 
-- Module Name: channel_mapper - Behavioral
-- Project Name: Blendinator
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.MATH_REAL.all;
use ieee.STD_LOGIC_UNSIGNED.all;
use work.axi4_audio_pkg.all;
use work.mixer_settings_pkg.all;
use work.generic_fifo;
use ieee.fixed_pkg.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity channel_mapper is
    generic (
        g_input_channels : integer := 2;
        g_output_channels: integer := 1;
        g_output_tid: integer := 0;
        g_internal_fifo_depth : integer := 16;
        g_internal_fifo_width : integer := c_audio_width + c_ID_width;
        g_internal_fifo_mode : string := "fwft";
        g_chip_scope : string := "false"
    );
    Port (
        -- clocking
        clk : in STD_LOGIC;

        -- channel enable
        dma_enable : in std_logic;
        clk_axi_mm: in STD_LOGIC;

        -- input axi 
        axi_in_fwd_bus : in t_axi4_audio_fwd_bus(g_input_channels -1 downto 0);
        axi_in_bwd_bus : out t_axi4_audio_bwd_bus(g_input_channels -1 downto 0);

        -- output axi
        axi_out_fwd_bus : out t_axi4_audio_fwd_bus(g_output_channels -1 downto 0);
        axi_out_bwd_bus : in t_axi4_audio_bwd_bus(g_output_channels -1 downto 0)
     );
end channel_mapper;

architecture Behavioral of channel_mapper is
    -------------------------------------
    -- AXI MM
    -------------------------------------
    signal dma_enable_sync_1 : std_logic := '0';
    signal dma_enable_sync_2 : std_logic := '0';
    signal dma_enable_sync_3 : std_logic := '0';

    -------------------------------------
    -- FIFO
    -------------------------------------
    signal almost_full : STD_LOGIC;
    signal full : STD_LOGIC;
    signal din : STD_LOGIC_VECTOR(g_internal_fifo_width -1 downto 0) := (others => '0');
    signal wr_en : STD_LOGIC := '0';
    signal almost_empty : STD_LOGIC;
    signal empty : STD_LOGIC;
    signal dout : STD_LOGIC_VECTOR(g_internal_fifo_width -1 downto 0) := (others => '0');
    signal rd_en : STD_LOGIC := '0';

    -------------------------------------
    -- Input
    -------------------------------------
    signal anal_pre_calc : sfixed(c_audio_width -1 downto 0);
    signal dma_pre_calc : sfixed(c_audio_width -1 downto 0);
    signal post_calc : sfixed(c_audio_width downto 0);
    signal post_resize : sfixed(c_audio_width -1 downto 0);

    signal prime_counter : integer range 0 to 3 := 0;


    signal internal_fwd : t_axi4_audio_fwd;
    signal internal_bwd : t_axi4_audio_bwd;

    signal internal_ready: STD_LOGIC := '0';
    signal internal_valid: STD_LOGIC := '0';

begin
    internal_fwd.TID <= std_logic_vector(to_unsigned(g_output_tid, c_ID_width));
    p_axi_mm_in : process (clk_axi_mm)
    begin
        if rising_edge(clk_axi_mm) then
            dma_enable_sync_1 <= dma_enable;
        end if;
    end process;

    p_axi_mm_sync : process (clk)
    begin
        if rising_edge(clk) then
            dma_enable_sync_2 <= dma_enable_sync_1;
            dma_enable_sync_3 <= dma_enable_sync_2;
        end if;
    end process;


    process (clk)
    begin
        if rising_edge(clk) then
            if dma_enable = '1' then
                -- check if both busses are valid
                if internal_valid = '1' and axi_in_bwd_bus(0).TReady = '1' then
                    anal_pre_calc <= to_sfixed(axi_in_fwd_bus(0).TData, anal_pre_calc);
                    dma_pre_calc <= to_sfixed(axi_in_fwd_bus(1).TData, dma_pre_calc);

                    post_calc <= anal_pre_calc + dma_pre_calc;
                    post_resize <= resize(post_calc, post_resize);
                    internal_fwd.TData <= to_slv(post_resize);
                end if;
            end if;
        end if;
    end process;

    p_out : process (all)
    begin
    end process;

    
    -------------------------------------
    -- Control flow
    -------------------------------------
    p_ctrl_flow : process (clk)
    begin
        if rising_edge(clk) then
            if dma_enable = '1' then
                -- check if both busses are valid
                if internal_valid = '1' and axi_in_bwd_bus(0).TReady = '1' then
                    prime_counter <= prime_counter + 1;
                    if prime_counter >= 2 then
                        prime_counter <= prime_counter;
                    end if;
                end if;
            end if;
        end if;
    end process;

    p_ctrl_flow_valid: process (all)
    begin
        if dma_enable = '1' then
            -- check if both busses are valid
            if  prime_counter >= 2 then
                internal_fwd.TVALID <= internal_valid;
            else 
                internal_fwd.TValid <= '0';
            end if;
        end if;
        
    end process;

    p_ctrl_flow_ready: process (all)
    begin
        internal_valid <= axi_in_fwd_bus(0).TVALID and axi_in_fwd_bus(1).TVALID;
        if dma_enable = '1' then
            axi_out_fwd_bus(0) <= internal_fwd;
            internal_bwd <= axi_out_bwd_bus(0);
            axi_in_bwd_bus(0).TREADY <= axi_out_bwd_bus(0).TREADY and internal_valid;
            axi_in_bwd_bus(1).TREADY <= axi_out_bwd_bus(0).TREADY and internal_valid;
        else
            -- only the anal bus should be considered
            axi_in_bwd_bus(1).TREADY <= '1';
            axi_out_fwd_bus(0) <= axi_in_fwd_bus(0);
            axi_in_bwd_bus(0) <= axi_out_bwd_bus(0);
            axi_out_fwd_bus(0).TID <= internal_fwd.TID;
        end if;

    end process;
end Behavioral;
