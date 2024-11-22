----------------------------------------------------------------------------------
-- Company: KUL - rnd embed - Beats N Bytes
-- Engineer: Wout Lyen
-- 
-- Create Date: 11/22/2024
-- Design Name: test bench biquad
-- Module Name: tb_biquad - Behavioral
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

use std.env.stop;


library work;
use work.wav2axi;
use work.axi2wav;
use work.axi4_audio_pkg.all;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_biquad is
--  Port ( );
end tb_biquad;

architecture Behavioral of tb_biquad is
    ------------------------------------
    -- Clock
    ------------------------------------
    signal clk : STD_LOGIC := '0';
    signal clk_period : time := 10 ns;

    ------------------------------------
    -- AXI streams
    ------------------------------------
    signal wav_axi_fwd : t_axi4_audio_fwd;
    signal wav_axi_bwd : t_axi4_audio_bwd := (TReady => '1');
    signal to_biquad_axi_fwd : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0'); 
    signal biquad_axi_fwd : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0');
    signal after_biquad_axi_fwd : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0');
    signal biquad_axi_bwd : t_axi4_audio_bwd := (TReady => '1');
    signal bp_period : time := 100000 ns;

    signal valid : std_logic;
    signal count_reg : unsigned(24 downto 0) := (others => '0'); -- Internal counter signal

begin

    --clock
    clk <= not clk after clk_period/2;
    -- wav_axi_bwd.TReady <= not wav_axi_bwd.TReady after bp_period;

     -- device under test
     i_dut: entity wav2axi
     generic map(
        g_file_name => "Waiting.wav",
        g_channel => 0,
        g_start_del => 50
     )
     port map(
         -- input
         ratio => 256,
         clk_in => clk,
         
         -- output
         axi_out_fwd => wav_axi_fwd,
         axi_out_bwd => wav_axi_bwd
     );

     process (all)
     begin
        if wav_axi_fwd.TID = 1 and wav_axi_fwd.TValid = '1' then
            to_biquad_axi_fwd.TValid <= '0';
        elsif wav_axi_fwd.TID = 0 and wav_axi_fwd.TValid = '1' then
            to_biquad_axi_fwd.TValid <= '1';
        end if;   
        to_biquad_axi_fwd.TData <= wav_axi_fwd.TData;
        to_biquad_axi_fwd.TLast <= wav_axi_fwd.TLast;
        
        if (count_reg mod 2000000) >= 1000000 then
            to_biquad_axi_fwd.TID(0) <= not wav_axi_fwd.TID(0);
        else
            to_biquad_axi_fwd.TID <= wav_axi_fwd.TID;
        end if;

     end process;
     
     i_biquad: entity work.biquad
      generic map(
         g_coefficient_width => 27,
         g_chip_scope => "False"
     )
      port map(
         clk => clk,
         axi_in_fwd => to_biquad_axi_fwd,
         axi_in_bwd => wav_axi_bwd,
         axi_out_fwd => biquad_axi_fwd,
         axi_out_bwd => biquad_axi_bwd
     );

     process (clk)
     begin
        if rising_edge(clk) then
            if biquad_axi_fwd.TValid = '1' and biquad_axi_bwd.TReady = '1' then
                valid <= '1';
                after_biquad_axi_fwd.TID(0) <= not after_biquad_axi_fwd.TID(0);
            else
                valid <= '0';
            end if;

            if count_reg = 30000000 then
                count_reg <= count_reg; --(others => '0'); -- Reset counter after reaching 15000
            else
                count_reg <= count_reg + 1; -- Increment counter
            end if;
        end if;
     end process;

     after_biquad_axi_fwd.TValid <= valid or biquad_axi_fwd.TValid;
     after_biquad_axi_fwd.TLast <= biquad_axi_fwd.TLast;
     after_biquad_axi_fwd.TData <= biquad_axi_fwd.TData;

     -- device under test
     i_dut_2: entity axi2wav
     generic map(
        g_file_name => "Waiting_out.wav",
        g_channel => 0 
     )
     port map(
         -- input
         ratio => 256,
         clk_in => clk,
         
         -- output
         axi_in_fwd => after_biquad_axi_fwd,
         axi_in_bwd => biquad_axi_bwd
     );

end Behavioral;
