----------------------------------------------------------------------------------
-- Company: KUL - rnd embed - Beats N Bytes
-- Engineer: Robbe Decapmaker <debber@dcpm.be>
-- 
-- Create Date: 12/05/2024 11:36:13 AM
-- Design Name: test bench trafic shaper
-- Module Name: tb_trafic_shaper - Behavioral
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
use ieee.std_logic_arith.all;
use ieee.STD_LOGIC_UNSIGNED.all;
use ieee.fixed_pkg.all;

use std.env.stop;


library work;
use work.wav2axi;
use work.axi2wav;
use work.axi4_audio_pkg.all;
use work.channel_splitter;
use work.channel_mapper;
use work.channel_merger;
use work.trafic_shaper;

entity tb_trafic_shaper is
--  Port ( );
end tb_trafic_shaper;

architecture Behavioral of tb_trafic_shaper is
    ------------------------------------
    -- settings
    ------------------------------------
    constant c_I2S_ratio : integer := 0;

    ------------------------------------
    -- Clock
    ------------------------------------
    signal clk : STD_LOGIC := '0';
    signal clk_period : time := 10 ns;

    signal axi_clk : STD_LOGIC := '0';
    signal axi_clk_period : time := 20 ns;

    ------------------------------------
    -- AXI streams
    ------------------------------------
    signal anal_fwd : t_axi4_audio_fwd;
    signal anal_bwd : t_axi4_audio_bwd;

    signal dma_fwd : t_axi4_audio_fwd;
    signal dma_bwd : t_axi4_audio_bwd;

    signal wav_fwd : t_axi4_audio_fwd;
    signal wav_bwd : t_axi4_audio_bwd;

begin
    ------------------------------------
    -- Clock
    ------------------------------------
    clk <= not clk after clk_period/2;
    axi_clk <= not axi_clk after axi_clk_period/2;

    ------------------------------------
    -- WAV 2 AXI
    ------------------------------------
    i_w2a_anal: entity wav2axi
    generic map(
        g_file_name => "test_piano.wav",
        g_channel => 0,
        g_start_del => 100 
    )
    port map(
        -- input
        ratio => c_I2S_ratio, 
        clk_in => clk,
        
        -- output
        axi_out_fwd => anal_fwd,
        axi_out_bwd => anal_bwd
    );

    i_w2a_dma: entity wav2axi
    generic map(
        g_file_name => "Waiting.wav",
        g_channel => 2,
        g_start_del => 1000 
    )
    port map(
        -- input
        ratio => 256,
        clk_in => clk,
        
        -- output
        axi_out_fwd => dma_fwd,
        axi_out_bwd => dma_bwd
    );

    trafic_shaper_inst: entity work.trafic_shaper
     port map(
        clk => clk,
        anal_fwd => anal_fwd,
        anal_bwd => anal_bwd,
        dma_fwd => dma_fwd,
        dma_bwd => dma_bwd,
        anal_out_fwd => open,
        anal_out_bwd => (Tready => '1'),
        dma_out_fwd => wav_fwd,
        dma_out_bwd => wav_bwd
    );

    axi2wav_inst: entity work.axi2wav
     generic map(
        g_file_name => "audio_pipeline_out.wav",
        g_channel => 0
    )
     port map(
        ratio => 256,
        clk_in => clk,
        axi_in_fwd => wav_fwd,
        axi_in_bwd => wav_bwd 
    );

end Behavioral;
