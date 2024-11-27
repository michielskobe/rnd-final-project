----------------------------------------------------------------------------------
-- Company: KUL - rnd embed - Beats N Bytes
-- Engineer: Robbe Decapmaker <debber@dcpm.be>
-- 
-- Create Date: 11/19/2024 09:49:36 PM
-- Design Name: Volume control
-- Module Name: volume_ctrl - Behavioral
-- Project Name: Blendinator
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: axi4_audio_pkg
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- Max frequency : ~270MHz
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.MATH_REAL.all;
use ieee.STD_LOGIC_UNSIGNED.all;
use work.axi4_audio_pkg.all;
use ieee.fixed_pkg.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity volume_ctrl is
    generic (
        g_volume_width : integer := 18;
        g_chip_scope : string := "False"
    );
    port(
        -- clocking
        clk : in STD_LOGIC;
        axi_clk : in STD_LOGIC;

        -- register settings
        channel_address: in STD_LOGIC_VECTOR(c_ID_width -1 downto 0);
        channel_volume : in STD_LOGIC_VECTOR(g_volume_width -1 downto 0);

        -- axi inputs
        axi_in_fwd : in t_axi4_audio_fwd;
        axi_in_bwd : out t_axi4_audio_bwd;

        -- axi outputs
        axi_out_fwd : out t_axi4_audio_fwd;
        axi_out_bwd : in t_axi4_audio_bwd
    );
end volume_ctrl;

architecture Behavioral of volume_ctrl is
    -------------------------------------
    -- Memory init
    -------------------------------------
    type t_volume_array is array (0 to 2**c_ID_width) of sfixed(g_volume_width -1 downto 0);
    signal volume_array : t_volume_array := (others => (others => '0'));

    -------------------------------------
    -- Pipeline
    -------------------------------------
    signal tid_pre_calc : STD_LOGIC_VECTOR(c_ID_width -1 downto 0);
    signal tid_mid_calc : STD_LOGIC_VECTOR(c_ID_width -1 downto 0);
    signal tid_late_calc : STD_LOGIC_VECTOR(c_ID_width -1 downto 0);
    signal tid_post_calc : STD_LOGIC_VECTOR(c_ID_width -1 downto 0);
    signal vol : sfixed(g_volume_width -1 downto 0);
    signal res : sfixed(48 -1 downto 0);

    signal sample_pre_calc : sfixed(c_audio_width -1 downto 0);
    signal sample_mid_calc : sfixed(c_audio_width -1 downto 0);
    signal sample_late_calc : sfixed(c_audio_width -1 downto 0);
    signal sample_post_calc : sfixed(c_audio_width -1 downto 0);

    -------------------------------------
    -- Control flow
    -------------------------------------
    signal prime_counter : integer range 0 to 6 := 0;
begin

    p_axi_mm : process (axi_clk)
    begin
        if rising_edge(axi_clk) then
            -- move axi register commands into memory
            volume_array(to_integer(unsigned(channel_address))) <= to_sfixed(channel_volume, vol);
        end if;
    end process;

    -------------------------------------
    -- Pipeline
    -------------------------------------
    p_volume : process (clk)
    begin
        if rising_edge(clk) then
            if axi_in_fwd.TValid = '1' and axi_out_bwd.TReady = '1' then
                -- get the axi data
                sample_pre_calc <= to_sfixed(axi_in_fwd.TData, sample_pre_calc);
                tid_pre_calc <= axi_in_fwd.TID;
                
                -- get volume
                sample_mid_calc <= sample_pre_calc;
                vol <= volume_array(to_integer(unsigned(tid_pre_calc)));
                tid_mid_calc <= tid_pre_calc;

                -- calculate the volume change
                res <= resize(vol * sample_mid_calc, res);
                tid_late_calc <= tid_mid_calc;

                -- reduce output to sample size
                sample_post_calc <= resize(res, sample_post_calc);
                tid_post_calc <= tid_late_calc;

                -- output the calculated result
                axi_out_fwd.TData <= to_slv(sample_post_calc);
                axi_out_fwd.TID <= tid_post_calc;
            end if;
        end if;
    end process;

    -------------------------------------
    -- Control flow
    -------------------------------------
    -- we are ready if the module behind us is ready
    axi_in_bwd.TReady <= axi_out_bwd.TReady;

    p_ctrl_flow : process (clk)
    begin
        if rising_edge(clk) then
            if axi_in_fwd.TValid = '1' and axi_out_bwd.TReady = '1' then
                prime_counter <= prime_counter + 1;
                if prime_counter >= 5 then
                    prime_counter <= prime_counter;
                end if;
            end if;
        end if;
    end process;

    p_valid : process (all)
    begin
        if prime_counter >= 5 then
            axi_out_fwd.TValid <= axi_in_fwd.TValid;
        else
            axi_out_fwd.TValid <= '0';
        end if;
    end process;
end Behavioral;
