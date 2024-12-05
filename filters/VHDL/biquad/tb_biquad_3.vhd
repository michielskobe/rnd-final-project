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

entity tb_biquad_3 is
--  Port ( );
end tb_biquad_3;

architecture Behavioral of tb_biquad_3 is
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

    signal biquad_TID1_fwd : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0');
    signal biquad_TID2_fwd : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0');
    signal biquad_TID3_fwd : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0');
    signal biquad_TID4_fwd : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0');
    signal biquad_TID5_fwd : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0');
    signal biquad_TID6_fwd : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0');
    signal biquad_TID7_fwd : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0');
    signal biquad_TID8_fwd : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0');

    signal biquad_fwd : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0');
    signal biquad_bwd : t_axi4_audio_bwd := (TReady => '1');

    signal biquad_2_fwd : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0');
    signal biquad_2_bwd : t_axi4_audio_bwd := (TReady => '1');

    signal biquad_3_fwd : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0');
    signal biquad_3_bwd : t_axi4_audio_bwd := (TReady => '1');

    signal biquad_4_fwd : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0');
    signal biquad_4_bwd : t_axi4_audio_bwd := (TReady => '1');
    
    signal biquad_5_fwd : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0');
    signal biquad_5_bwd : t_axi4_audio_bwd := (TReady => '1');

    signal biquad_6_fwd : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0');
    signal biquad_6_bwd : t_axi4_audio_bwd := (TReady => '1');

    signal biquad_7_fwd : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0');
    signal biquad_7_bwd : t_axi4_audio_bwd := (TReady => '1');

    signal axi_wav_fwd : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0');
    signal axi_wav_bwd : t_axi4_audio_bwd := (TReady => '1');

    signal bp_period : time := 100000 ns;

    signal count_reg : unsigned(7 downto 0) := (others => '0'); -- Internal counter signal

begin

    --clock
    clk <= not clk after clk_period/2;
    -- wav_axi_bwd.TReady <= not wav_axi_bwd.TReady after bp_period;

     -- device under test
     i_dut: entity wav2axi
     generic map(
        --g_file_name => "sine_sweep.wav",
        --g_file_name => "sine_sweep_26.wav",
        --g_file_name => "sine_sweep_10.wav",
        --g_file_name => "Heads_Will_Roll.wav",
        --g_file_name => "Waiting.wav",
        --g_file_name => "Waiting_2.wav",
        --g_file_name => "Waiting_12.wav",
        g_file_name => "sine_sweep2.wav",
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


     i_biquad: entity work.biquad_tdm
      generic map(
         g_coefficient_width => 27,
         g_chip_scope => "False"
     )
      port map(
         clk => clk,
         axi_clk => '0',
         axi_in_mm => axi4_mm_filter_inactive,
         axi_in_fwd => biquad_TID1_fwd,
         axi_in_bwd => wav_axi_bwd,
         axi_out_fwd => biquad_fwd,
         axi_out_bwd => biquad_bwd
     );

     i_biquad_2: entity work.biquad_tdm
      generic map(
         g_coefficient_width => 27,
         g_chip_scope => "False"
     )
      port map(
         clk => clk,
         axi_clk => '0',
         axi_in_mm => axi4_mm_filter_inactive,
         axi_in_fwd => biquad_TID2_fwd,
         axi_in_bwd => biquad_bwd,
         axi_out_fwd => biquad_2_fwd,
         axi_out_bwd => biquad_2_bwd
     );

     i_biquad_3: entity work.biquad_tdm
      generic map(
         g_coefficient_width => 27,
         g_chip_scope => "False"
     )
      port map(
         clk => clk,
         axi_clk => '0',
         axi_in_mm => axi4_mm_filter_inactive,
         axi_in_fwd => biquad_TID3_fwd,
         axi_in_bwd => biquad_2_bwd,
         axi_out_fwd => biquad_3_fwd,
         axi_out_bwd => biquad_3_bwd
     );

     i_biquad_4: entity work.biquad_tdm
      generic map(
         g_coefficient_width => 27,
         g_chip_scope => "False"
     )
      port map(
         clk => clk,
         axi_clk => '0',
         axi_in_mm => axi4_mm_filter_inactive,
         axi_in_fwd => biquad_TID4_fwd,
         axi_in_bwd => biquad_3_bwd,
         axi_out_fwd => biquad_4_fwd,
         axi_out_bwd => biquad_4_bwd
     );

     i_biquad_5: entity work.biquad_tdm
      generic map(
         g_coefficient_width => 27,
         g_chip_scope => "False"
     )
      port map(
         clk => clk,
         axi_clk => '0',
         axi_in_mm => axi4_mm_filter_inactive,
         axi_in_fwd => biquad_TID5_fwd,
         axi_in_bwd => biquad_4_bwd,
         axi_out_fwd => biquad_5_fwd,
         axi_out_bwd => biquad_5_bwd
     );

     i_biquad_6: entity work.biquad_tdm
      generic map(
         g_coefficient_width => 27,
         g_chip_scope => "False"
     )
      port map(
         clk => clk,
         axi_clk => '0',
         axi_in_mm => axi4_mm_filter_inactive,
         axi_in_fwd => biquad_TID6_fwd,
         axi_in_bwd => biquad_5_bwd,
         axi_out_fwd => biquad_6_fwd,
         axi_out_bwd => biquad_6_bwd
     );

     i_biquad_7: entity work.biquad_tdm
      generic map(
         g_coefficient_width => 27,
         g_chip_scope => "False"
     )
      port map(
         clk => clk,
         axi_clk => '0',
         axi_in_mm => axi4_mm_filter_inactive,
         axi_in_fwd => biquad_TID7_fwd,
         axi_in_bwd => biquad_6_bwd,
         axi_out_fwd => biquad_7_fwd,
         axi_out_bwd => biquad_7_bwd
     );

     i_biquad_8: entity work.biquad_tdm
      generic map(
         g_coefficient_width => 27,
         g_chip_scope => "False"
     )
      port map(
         clk => clk,
         axi_clk => '0',
         axi_in_mm => axi4_mm_filter_inactive,
         axi_in_fwd => biquad_TID8_fwd,
         axi_in_bwd => biquad_7_bwd,
         axi_out_fwd => axi_wav_fwd,
         axi_out_bwd => axi_wav_bwd
     );

     process (all)
     begin
        biquad_TID1_fwd.TID <= wav_axi_fwd.TID;-- +12;
        biquad_TID1_fwd.TData <= wav_axi_fwd.TData;
        biquad_TID1_fwd.TLast <= wav_axi_fwd.TLast;
        biquad_TID1_fwd.TValid <= wav_axi_fwd.TValid;

        biquad_TID2_fwd.TID <= biquad_fwd.TID+2;
        biquad_TID2_fwd.TData <= biquad_fwd.TData;
        biquad_TID2_fwd.TLast <= biquad_fwd.TLast;
        biquad_TID2_fwd.TValid <= biquad_fwd.TValid;

        biquad_TID3_fwd.TID <= biquad_2_fwd.TID+2;
        biquad_TID3_fwd.TData <= biquad_2_fwd.TData;
        biquad_TID3_fwd.TLast <= biquad_2_fwd.TLast;
        biquad_TID3_fwd.TValid <= biquad_2_fwd.TValid;

        biquad_TID4_fwd.TID <= biquad_3_fwd.TID+2;
        biquad_TID4_fwd.TData <= biquad_3_fwd.TData;
        biquad_TID4_fwd.TLast <= biquad_3_fwd.TLast;
        biquad_TID4_fwd.TValid <= biquad_3_fwd.TValid;

        biquad_TID5_fwd.TID <= biquad_4_fwd.TID+2;
        biquad_TID5_fwd.TData <= biquad_4_fwd.TData;
        biquad_TID5_fwd.TLast <= biquad_4_fwd.TLast;
        biquad_TID5_fwd.TValid <= biquad_4_fwd.TValid;

        biquad_TID6_fwd.TID <= biquad_5_fwd.TID+2;
        biquad_TID6_fwd.TData <= biquad_5_fwd.TData;
        biquad_TID6_fwd.TLast <= biquad_5_fwd.TLast;
        biquad_TID6_fwd.TValid <= biquad_5_fwd.TValid;

        biquad_TID7_fwd.TID <= biquad_6_fwd.TID+2;
        biquad_TID7_fwd.TData <= biquad_6_fwd.TData;
        biquad_TID7_fwd.TLast <= biquad_6_fwd.TLast;
        biquad_TID7_fwd.TValid <= biquad_6_fwd.TValid;

        biquad_TID8_fwd.TID <= biquad_7_fwd.TID+2;
        biquad_TID8_fwd.TData <= biquad_7_fwd.TData;
        biquad_TID8_fwd.TLast <= biquad_7_fwd.TLast;
        biquad_TID8_fwd.TValid <= biquad_7_fwd.TValid;

     end process;

     -- device under test
     i_dut_3: entity axi2wav
     generic map(
        --g_file_name => "sine_sweep_out_Band_shelf_2.wav",
        --g_file_name => "Heads_Will_Roll_Out_Low_Pass.wav",
        --g_file_name => "Waiting_Out_12.wav",
        --g_file_name => "Waiting_Out_2.wav",
        --g_file_name => "sine_sweep_10_out.wav",
        --g_file_name => "sine_sweep_out.wav",
        g_file_name => "sine_sweep_out2.wav",
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

    

end Behavioral;
