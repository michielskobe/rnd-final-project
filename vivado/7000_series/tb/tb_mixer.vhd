----------------------------------------------------------------------------------
-- company: kul - rnd embed - beats n bytes
-- engineer: robbe decapmaker <debber@dcpm.be>
-- 
-- Create Date: 12/03/2024 10:48:08 AM
-- Design Name: mixer test bench
-- Module Name: tb_mixer - Behavioral
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
use work.mixer_wrapper;

entity tb_mixer is
--  Port ( );
end tb_mixer;

architecture Behavioral of tb_mixer is

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

    signal pre_merge_fwd : t_axi4_audio_fwd_bus(1 downto 0);
    signal pre_merge_bwd : t_axi4_audio_bwd_bus(1 downto 0);

    signal merged_fwd: t_axi4_audio_fwd;
    signal merged_bwd: t_axi4_audio_bwd;

    signal wav_fwd : t_axi4_audio_fwd;
    signal wav_bwd : t_axi4_audio_bwd;


    signal channel_enable : STD_LOGIC_VECTOR(2**c_ID_width -1 downto 0) := (0 => '1', 1 => '1', others => '0');
    signal dma_valid : STD_LOGIC := '0';
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
        ratio => 250, 
        clk_in => clk,
        
        -- output
        axi_out_fwd => anal_fwd,
        axi_out_bwd => anal_bwd
    );

    i_w2a_dma: entity wav2axi
    generic map(
        g_file_name => "Waiting.wav",
        g_channel => 2,
        g_start_del => 100000 
    )
    port map(
        -- input
        ratio => 250, 
        clk_in => clk,
        
        -- output
        axi_out_fwd => dma_fwd,
        axi_out_bwd => dma_bwd
    );

    process 
    begin
        wait until rising_edge(dma_fwd.TValid);
        channel_enable <= (others => '1');
        dma_valid <= '1';
        wait until rising_edge(clk);
        wait;
        
    end process;

    pre_merge_fwd(0) <= anal_fwd;
    pre_merge_fwd(1) <= dma_fwd;
    anal_bwd <= pre_merge_bwd(0);
    dma_bwd <= pre_merge_bwd(1);

    channel_merger_inst: entity work.channel_merger
     generic map(
        g_input_channels => 2
    )
     port map(
        clk_in => clk,
        clk_out => clk,
        channel_enable => channel_enable,
        clk_axi_mm => axi_clk,
        axi_in_fwd_bus => pre_merge_fwd,
        axi_in_bwd_bus => pre_merge_bwd,
        axi_out_fwd => merged_fwd,
        axi_out_bwd => merged_bwd 
    );

    mixer_wrapper_inst: entity work.mixer_wrapper
     port map(
        clk => clk,
        axi_mm_clk => axi_clk,
        dma_valid => dma_valid,
        axi_in_fwd => merged_fwd,
        axi_in_bwd => merged_bwd,
        axi_out_fwd => wav_fwd,
        axi_out_bwd => wav_bwd
    );

    axi2wav_inst: entity work.axi2wav
     generic map(
        g_file_name => "mixer_out.wav",
        g_channel => 0
    )
     port map(
        ratio => 250,
        clk_in => clk,
        axi_in_fwd => wav_fwd,
        axi_in_bwd => wav_bwd 
    );
end Behavioral;
