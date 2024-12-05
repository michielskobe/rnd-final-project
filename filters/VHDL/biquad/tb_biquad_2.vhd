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
use work.axi4_mm_filter_pkg.all;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_biquad_2 is
--  Port ( );
end tb_biquad_2;

architecture Behavioral of tb_biquad_2 is
    ------------------------------------
    -- Clock
    ------------------------------------
    signal clk : STD_LOGIC := '0';
    signal clk_period : time := 10 ns;

    ------------------------------------
    -- AXI streams
    ------------------------------------
    signal wav_axi_fwd : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0');
    signal wav_axi_bwd : t_axi4_audio_bwd := (TReady => '1');

    signal wav_axi_fwd_2 : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0');
    signal wav_axi_bwd_2 : t_axi4_audio_bwd := (TReady => '1');


    signal axi_biquad_fwd : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0');
    signal axi_biquad_bwd : t_axi4_audio_bwd := (TReady => '1');


    signal biquad_axi_fwd : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0');
    signal biquad_axi_bwd : t_axi4_audio_bwd := (TReady => '1');

    signal axi_wav_fwd : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0');
    signal axi_wav_bwd : t_axi4_audio_bwd := (TReady => '1');

    signal axi_wav_fwd_2 : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0');
    signal axi_wav_bwd_2 : t_axi4_audio_bwd := (TReady => '1');

    signal bp_period : time := 100000 ns;

    signal count_reg : unsigned(7 downto 0) := (others => '0'); -- Internal counter signal

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

     i_dut_2: entity wav2axi
     generic map(
        g_file_name => "Heads_Will_Roll.wav",
        g_channel => 2,
        g_start_del => 50
     )
     port map(
         -- input
         ratio => 256,
         clk_in => clk,
         
         -- output
         axi_out_fwd => wav_axi_fwd_2,
         axi_out_bwd => wav_axi_bwd_2
     );
     
     process (clk)
     begin
        if rising_edge(clk) then
            
            if count_reg >= 255 then
                count_reg <= ((others => '0') );
            else
                count_reg <= count_reg + 1;
            end if;

        end if;
     end process;

     process (all)
     begin
        if count_reg mod 2 >= 1 then
            axi_biquad_fwd.TID <= wav_axi_fwd_2.TID;
            axi_biquad_fwd.TData <= wav_axi_fwd_2.TData;
            axi_biquad_fwd.TLast <= wav_axi_fwd_2.TLast;
            axi_biquad_fwd.TValid <= wav_axi_fwd_2.TValid;
            wav_axi_bwd_2.TReady <= axi_biquad_bwd.TReady;

            wav_axi_bwd.TReady <= '0';

        else
            axi_biquad_fwd.TID <= wav_axi_fwd.TID;
            axi_biquad_fwd.TData <= wav_axi_fwd.TData;
            axi_biquad_fwd.TLast <= wav_axi_fwd.TLast;
            axi_biquad_fwd.TValid <= wav_axi_fwd.TValid;
            wav_axi_bwd.TReady <= axi_biquad_bwd.TReady;

            wav_axi_bwd_2.TReady <= '0';

        end if;

     end process;

     i_biquad: entity work.biquad_tdm
      generic map(
         g_coefficient_width => 27,
         g_chip_scope => "False"
     )
      port map(
         clk => clk,
         axi_clk => '0',
         axi_in_mm => axi4_mm_filter_inactive,
         axi_in_fwd => axi_biquad_fwd,
         axi_in_bwd => axi_biquad_bwd,
         axi_out_fwd => biquad_axi_fwd,
         axi_out_bwd => biquad_axi_bwd
     );

    process (all)
    begin
        if biquad_axi_fwd.TID > 1 then
            axi_wav_fwd.TValid <= '0';

            axi_wav_fwd_2.TValid <= biquad_axi_fwd.TValid;
            axi_wav_fwd_2.TData <= biquad_axi_fwd.TData;
            axi_wav_fwd_2.TID <= biquad_axi_fwd.TID;
            axi_wav_fwd_2.TLast <= biquad_axi_fwd.TLast;

            biquad_axi_bwd.TReady <= axi_wav_bwd_2.TReady;

        else
            axi_wav_fwd_2.TValid <= '0';

            axi_wav_fwd.TValid <= biquad_axi_fwd.TValid;
            axi_wav_fwd.TData <= biquad_axi_fwd.TData;
            axi_wav_fwd.TID <= biquad_axi_fwd.TID;
            axi_wav_fwd.TLast <= biquad_axi_fwd.TLast;

            biquad_axi_bwd.TReady <= axi_wav_bwd.TReady;

        end if;
    end process;

     -- device under test
     i_dut_3: entity axi2wav
     generic map(
        g_file_name => "Waiting_out.wav",
        g_channel => 0 
     )
     port map(
         -- input
         ratio => 256,
         clk_in => clk,
         
         -- output
         axi_in_fwd => axi_wav_fwd,
         axi_in_bwd => axi_wav_bwd
     );

     -- device under test
     i_dut_4: entity axi2wav
     generic map(
        g_file_name => "Heads_Will_Roll_out.wav",
        g_channel => 0 
     )
     port map(
         -- input
         ratio => 256,
         clk_in => clk,
         
         -- output
         axi_in_fwd => axi_wav_fwd_2,
         axi_in_bwd => axi_wav_bwd_2
     );

end Behavioral;
