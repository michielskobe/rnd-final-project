----------------------------------------------------------------------------------
-- Company: KUL - rnd embed - Beats N Bytes
-- Engineer: Wout Lyen
-- 
-- Create Date: 11/22/2024
-- Design Name: test bench biquad
-- Module Name: tb_wrapper_test - Behavioral
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

entity tb_wrapper_test is
--  Port ( );
end tb_wrapper_test;

architecture Behavioral of tb_wrapper_test is
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

    signal axi_wav_fwd : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0');
    signal axi_wav_bwd : t_axi4_audio_bwd := (TReady => '1');

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
        g_file_name => "Waiting.wav",
        --g_file_name => "Waiting_2.wav",
        --g_file_name => "Waiting_12.wav",
        --g_file_name => "sine_sweep2.wav",
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
 
     wrapper_test_inst: entity work.wrapper_test
      port map(
         clk_audio => clk,
         clk_axi_mm => '0',
         axi_in_fwd => wav_axi_fwd,
         axi_in_bwd => wav_axi_bwd,
         axi_out_fwd => axi_wav_fwd,
         axi_out_bwd => axi_wav_bwd
     );

     -- device under test
     i_dut_3: entity axi2wav
     generic map(
        --g_file_name => "sine_sweep_out_Band_shelf_2.wav",
        --g_file_name => "Heads_Will_Roll_Out_Low_Pass.wav",
        --g_file_name => "Waiting_Out_12.wav",
        --g_file_name => "Waiting_Out_2.wav",
        --g_file_name => "sine_sweep_10_out.wav",
        --g_file_name => "sine_sweep_out.wav",
        --g_file_name => "sine_sweep_out2.wav",
        g_file_name => "Waiting_Out_6.wav",
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
