----------------------------------------------------------------------------------
-- Company: KUL - rnd embed - Beats N Bytes
-- Engineer: Robbe Decapmaker <debber@dcpm.be>
-- 
-- Create Date: 11/22/2024 11:09:52 AM
-- Design Name: Channel Splitter
-- Module Name: channel_splitter - Behavioral
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
use work.generic_fifo;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity channel_splitter is
    generic (
        g_input_channels : integer := 2;
        g_output_channels: integer := 2**c_ID_width;
        g_internal_fifo_depth : integer := 16;
        g_internal_fifo_width : integer := c_audio_width + c_ID_width;
        g_internal_fifo_mode : string := "fwft";
        g_chip_scope : string := "false"
    );
    Port (
        -- clocking
        clk_in : in STD_LOGIC;
        clk_out : in STD_LOGIC;

        -- channel enable
        channel_enable : in STD_LOGIC_VECTOR(g_output_channels -1 downto 0);
        clk_axi_mm: in STD_LOGIC;

        -- input axi 
        axi_in_fwd_bus : in t_axi4_audio_fwd_bus(g_input_channels -1 downto 0);
        axi_in_bwd_bus : out t_axi4_audio_bwd_bus(g_input_channels -1 downto 0);

        -- output axi
        axi_out_fwd_bus : out t_axi4_audio_fwd_bus(g_output_channels -1 downto 0);
        axi_out_bwd_bus : in t_axi4_audio_bwd_bus(g_output_channels -1 downto 0)
     );
end channel_splitter;

architecture Behavioral of channel_splitter is
    -------------------------------------
    -- AXI MM
    -------------------------------------
    signal channel_enable_sync_1 : STD_LOGIC_VECTOR(g_output_channels -1 downto 0);
    signal channel_enable_sync_2 : STD_LOGIC_VECTOR(g_output_channels -1 downto 0);
    signal channel_enable_sync_3 : STD_LOGIC_VECTOR(g_output_channels -1 downto 0);

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
    signal active_input : integer range 0 to g_input_channels := 0;
    signal active_input_axi_fwd : t_axi4_audio_fwd;
    signal active_input_axi_bwd : t_axi4_audio_bwd;

    -------------------------------------
    -- Output
    -------------------------------------
    signal internal_valid : STD_LOGIC := '0';


begin
    p_axi_mm_in : process (clk_axi_mm)
    begin
        if rising_edge(clk_axi_mm) then
            channel_enable_sync_1 <= channel_enable;
        end if;
    end process;

    p_axi_mm_sync : process (clk_out)
    begin
        if rising_edge(clk_out) then
            channel_enable_sync_2 <= channel_enable_sync_1;
            channel_enable_sync_3 <= channel_enable_sync_2;
        end if;
    end process;

    p_input: process (clk_in)
    begin
        if rising_edge(clk_in) then
            active_input <= active_input + 1;
            if active_input >= g_input_channels -1 then
                active_input <= 0;
            end if;
        end if;
    end process;

    p_input_comb: process (all)
    begin
        for i in 0 to g_input_channels -1 loop
            if i = active_input then 
                axi_in_bwd_bus(i) <= active_input_axi_bwd;
                active_input_axi_fwd <= axi_in_fwd_bus(i);
            else 
                axi_in_bwd_bus(i) <= audio_bwd_inactive;
            end if;
        end loop;
        active_input_axi_bwd.TReady <= not full;
        din <= active_input_axi_fwd.TData & active_input_axi_fwd.TID;
        wr_en <= active_input_axi_fwd.TValid;
    end process;

    -- generic fifo 
    generic_fifo_inst: entity work.generic_fifo
     generic map(
        g_fifo_depth => g_internal_fifo_depth,
        g_fifo_width => g_internal_fifo_width,
        g_fifo_mode => g_internal_fifo_mode
    )
     port map(
        clk_in => clk_in,
        clk_out => clk_out,
        almost_full => almost_full,
        full => full,
        din => din,
        wr_en => wr_en,
        -- wr_data_count => wr_data_count,
        rst => '0',
        -- wr_rst_busy => wr_rst_busy,
        almost_empty => almost_empty,
        empty => empty,
        -- data_valid => data_valid,
        dout => dout,
        rd_en => rd_en
        -- rd_data_count => rd_data_count,
        -- rd_rst_busy => rd_rst_busy
    );

    --TODO: uitlezen + channel enable + nog wa stuffs wss 
    -- p_output: process (clk_out)
    p_output: process (all)
        variable fifo_tid : STD_LOGIC_VECTOR(c_ID_width -1 downto 0);
        variable fifo_data: STD_LOGIC_VECTOR(c_audio_width -1 downto 0);
    begin
        -- if rising_edge(clk_out) then
            fifo_data := dout(g_internal_fifo_width -1 downto c_ID_width);
            fifo_tid := dout (c_ID_width -1 downto 0);
            rd_en <= '0';
            internal_valid <= '0';

            -- set all the outputs to inactive
            for i in 0 to g_output_channels -1 loop
                if i = to_integer(unsigned(fifo_tid)) then
                    axi_out_fwd_bus(i).TData <= fifo_data;
                    axi_out_fwd_bus(i).TID <= fifo_tid;
                    axi_out_fwd_bus(i).TValid <= internal_valid;
                else 
                    axi_out_fwd_bus(i) <= audio_fwd_inactive;
                end if;
            end loop;
            
            -- check if channel is enabled and valid data is present
            if channel_enable_sync_3(to_integer(unsigned(fifo_tid))) = '1' and empty = '0' then
                -- check if output bus is ready
                if axi_out_bwd_bus(to_integer(unsigned(fifo_tid))).TReady = '1' then
                    -- output the data onto the bus.
                    internal_valid <= '1';
                    -- get the next sample
                    rd_en <= '1';
                end if;
            elsif empty = '0' then -- if chan not enabled, throw away the sample
                rd_en <= '1';
            end if;

        -- end if;
    end process; 
    
end Behavioral;
