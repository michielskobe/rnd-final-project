----------------------------------------------------------------------------------
-- Company: KUL - rnd embed - Beats N Bytes
-- Engineer: Robbe Decapmaker <debber@dcpm.be>
-- 
-- Create Date: 11/20/2024 10:16:37 PM
-- Design Name: 
-- Module Name: tb_audio_fifo - Behavioral
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
use ieee.fixed_pkg.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
library work;
use work.wav2axi;
use work.axi2wav;
use work.axi4_audio_pkg.all;
use work.audio_fifo;

entity tb_audio_fifo is
--  Port ( );
end tb_audio_fifo;

architecture Behavioral of tb_audio_fifo is
    ------------------------------------
    -- Clock
    ------------------------------------
    signal clk : STD_LOGIC := '0';
    signal clk_period : time := 10 ns;

    signal axi_clk : STD_LOGIC := '0';
    signal axi_clk_period : time := 5 ns;
    ------------------------------------
    -- AXI streams
    ------------------------------------
    signal wav_axi_fwd : t_axi4_audio_fwd;
    signal wav_axi_bwd : t_axi4_audio_bwd := (TReady => '1');
    signal axi_wav_fwd : t_axi4_audio_fwd;
    signal axi_wav_bwd : t_axi4_audio_bwd := (TReady => '1');
    signal bp_period : time := 100000 ns;

    ------------------------------------
    -- volume ctrl
    ------------------------------------
    constant c_volume_width : integer := 18;
    signal volume : integer := 1;
    signal channel_address : STD_LOGIC_VECTOR(c_ID_width -1 downto 0) := (others => '0');
    signal channel_volume : STD_LOGIC_VECTOR(c_volume_width -1 downto 0) := (others => '0');
begin

    p_volume : process
    begin
        
        wait until rising_edge(axi_clk);
        channel_volume <= STD_LOGIC_VECTOR(to_sfixed(volume, c_volume_width -1, 0));
        wait until rising_edge(axi_clk);
        channel_address <= STD_LOGIC_VECTOR(to_unsigned(1, c_ID_width));
        channel_volume <= STD_LOGIC_VECTOR(to_sfixed(volume, c_volume_width -1, 0));
        wait;


    end process;
    --clock
    clk <= not clk after clk_period/2;
    axi_clk <= not axi_clk after axi_clk_period/2;

     -- wav2axi
    i_dut: entity wav2axi
    generic map(
        g_file_name => "test_piano.wav",
        g_channel => 0,
        g_start_del => 100
    )
    port map(
        -- input
        ratio => 150,
        clk_in => clk,
         
        -- output
        axi_out_fwd => wav_axi_fwd,
        axi_out_bwd => wav_axi_bwd
     );


     audio_fifo_inst: entity work.audio_fifo
      generic map(
         g_fifo_depth => 16
     )
      port map(
        clk_in => clk,
        clk_out => axi_clk,
        axi_in_fwd => wav_axi_fwd,
        axi_in_bwd => wav_axi_bwd,
        axi_out_fwd => axi_wav_fwd,
        axi_out_bwd => axi_wav_bwd
     );

     -- device under test
     i_dut_2: entity axi2wav
     generic map(
        g_file_name => "test_piano_out.wav",
        g_channel => 0 
     )
     port map(
         -- input
         ratio => 200,
         clk_in => axi_clk,
         
         -- output
         axi_in_fwd => axi_wav_fwd,
         axi_in_bwd => axi_wav_bwd
     );
end Behavioral;
