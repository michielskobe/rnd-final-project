----------------------------------------------------------------------------------
-- company: kul - rnd embed - beats n bytes
-- engineer: Wout Lyen
-- engineer: robbe decapmaker <debber@dcpm.be>
-- 
-- Create Date: 12/04/2024 04:07:21 PM
-- Design Name: testbench for audio pipeline
-- Module Name: tb_audio_pipeline - Behavioral
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
use work.audio_pipeline;
--use work.audio_pipeline_no_effect;
use work.axi4_mm_filter_pkg.all;

entity tb_audio_pipeline is
--  Port ( );
end tb_audio_pipeline;

architecture Behavioral of tb_audio_pipeline is
    ------------------------------------
    -- settings
    ------------------------------------
    constant c_I2S_ratio : integer := 200;

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
    signal dma_bwd_test : t_axi4_audio_bwd;

    signal wav_fwd : t_axi4_audio_fwd;
    signal wav_bwd : t_axi4_audio_bwd;

    signal channel_volume_select : STD_LOGIC_VECTOR(c_ID_width -1 downto 0) := (others => '0');
    signal dma_valid : std_logic := '0';

    signal rst : STD_LOGIC := '0';
begin

    ------------------------------------
    -- Clock
    ------------------------------------
    clk <= not clk after clk_period/2;
    axi_clk <= not axi_clk after axi_clk_period/2;

    process (axi_clk)
    begin
        if rising_edge(axi_clk) then
            channel_volume_select <= channel_volume_select + 1;
        end if;
    end process;


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
        g_start_del => 100000 
    )
    port map(
        -- input
        ratio => 256,
        clk_in => clk,
        
        -- output
        axi_out_fwd => dma_fwd,
        axi_out_bwd => dma_bwd
    );

    process 
    begin
        wait until rising_edge(clk);
        -- dma_bwd <= dma_bwd_test;

        for i in 0 to 50000 loop
            wait until rising_edge(clk);
        end loop;
        -- rst <= '1';

        wait until rising_edge(dma_fwd.TValid);
        dma_valid <= '1';
        wait until rising_edge(clk);

        for i in 0 to 50000 loop
            wait until rising_edge(clk);
        end loop;
        rst <= '0';
        for i in 0 to 450000 loop
            wait until rising_edge(clk);
        end loop;
        dma_valid <= '0';
        -- dma_bwd.TREADY <= '0';
        wait;
        
    end process;

    -- audio_pipeline_inst: entity work.audio_pipeline_no_effect
    --  port map(
    --     clk_in => clk,
    --     clk_audio => clk,
    --     clk_out => clk,
    --     clk_axi_mm => axi_clk,
    --     master_volume => STD_LOGIC_VECTOR(to_unsigned(1, 18)),
    --     channel_volume_select => channel_volume_select,
    --     channel_volume_value => STD_LOGIC_VECTOR(to_unsigned(1, 18)),
    --     dma_valid => dma_valid,
    --     anal_fwd => anal_fwd,
    --     anal_bwd => anal_bwd,
    --     dma_fwd => dma_fwd,
    --     dma_bwd => dma_bwd,
    --     audio_out_fwd => wav_fwd,
    --     audio_out_bwd => wav_bwd
    -- );

    audio_pipeline_inst: entity work.audio_pipeline
     generic map(
        g_chip_scope => "False"
    )
     port map(
        clk_in => clk,
        clk_audio => clk,
        clk_out => clk,
        clk_axi_mm => axi_clk,
        rst => rst,
        master_volume => STD_LOGIC_VECTOR(to_unsigned(1, 18)),
        channel_volume_select => channel_volume_select,
        channel_volume_value => STD_LOGIC_VECTOR(to_unsigned(1, 18)),
        axi_in_mm_band_low_1 => axi4_mm_filter_inactive,
        axi_in_mm_band_low_2=> axi4_mm_filter_inactive,
        axi_in_mm_band_high_1=> axi4_mm_filter_inactive,
        axi_in_mm_band_high_2=> axi4_mm_filter_inactive,
        axi_in_mm_low_1=> axi4_mm_filter_inactive,
        axi_in_mm_low_2=> axi4_mm_filter_inactive,
        axi_in_mm_high_1=> axi4_mm_filter_inactive,
        axi_in_mm_high_2=> axi4_mm_filter_inactive,
        axi_in_mm_low_pass=> axi4_mm_filter_inactive,
        axi_in_mm_high_pass_1=> axi4_mm_filter_inactive,
        axi_in_mm_high_pass_2=> axi4_mm_filter_inactive,
        axi_in_mm_echo => axi4_mm_echo_inactive,
        axi_in_mm_ring_mod_anal => axi4_mm_ring_mod_inactive,
        axi_in_mm_ring_mod_dma => axi4_mm_ring_mod_inactive,
        axi_in_mm_saturation => axi4_mm_saturation_inactive,
        axi_in_mm_volume_reduction => axi4_mm_volume_inactive,
        axi_in_mm_band_volume => axi4_mm_band_volume_inactive,
        channel_volume_strobe => '0',
        dma_valid => dma_valid,
        anal_fwd => anal_fwd,
        anal_bwd => anal_bwd,
        dma_fwd => dma_fwd,
        dma_bwd => dma_bwd,
        audio_out_fwd => wav_fwd,
        audio_out_bwd => wav_bwd
    );

    axi2wav_inst: entity work.axi2wav
     generic map(
        g_file_name => "audio_pipeline_out.wav",
        g_channel => 0
    )
     port map(
        ratio => c_I2S_ratio,
        clk_in => clk,
        axi_in_fwd => wav_fwd,
        axi_in_bwd => wav_bwd 
    );
end Behavioral;
