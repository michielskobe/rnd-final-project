----------------------------------------------------------------------------------
-- Company: KUL - rnd embed - Beats N Bytes
-- Engineer: Wout Lyen
-- Engineer: Robbe Decapmaker <debber@dcpm.be>
-- 
-- Create Date: 12/03/2024 03:47:17 PM
-- Design Name: 
-- Module Name: audio_pipeline - Behavioral
-- Project Name: 
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
use work.mixer_settings_pkg.all;
use work.generic_fifo;
use ieee.fixed_pkg.all;

entity audio_pipeline is
    generic (
        g_chip_scope : string := "false"
    );
    Port (
        --clocking
        clk_in      : in STD_LOGIC;
        clk_audio   : in STD_LOGIC;
        clk_out     : in STD_LOGIC;

        -- axi mm settings
        clk_axi_mm  : in STD_LOGIC;
        master_volume: in STD_LOGIC_VECTOR(18 - 1 downto 0) := STD_LOGIC_VECTOR(to_unsigned(1, 18));
        channel_volume_select: in STD_LOGIC_VECTOR (c_ID_width - 1 downto 0) := (others => '0');
        channel_volume_value: in STD_LOGIC_VECTOR(18 - 1 downto 0) := STD_LOGIC_VECTOR(to_unsigned(1, 18));

        -- monitoring of DMA engine
        dma_valid   : in STD_LOGIC;

        -- Anal input
        anal_fwd: in t_axi4_audio_fwd;
        anal_bwd: out t_axi4_audio_bwd;

        -- DMA input
        dma_fwd: in t_axi4_audio_fwd;
        dma_bwd: out t_axi4_audio_bwd;

        -- audio output
        audio_out_fwd: out t_axi4_audio_fwd;
        audio_out_bwd: in t_axi4_audio_bwd
    );
end audio_pipeline;

architecture Behavioral of audio_pipeline is
    -------------------------------------
    -- Settings
    -------------------------------------
    constant c_volume_width : integer := 18;

    constant c_input_fifo_depth : integer := 32;
    constant c_output_fifo_depth : integer := 32;
    constant c_merger_fifo_depth : integer := 32;

    -------------------------------------
    -- ctrl flow
    -------------------------------------
    signal channel_enable : STD_LOGIC_VECTOR(2**c_ID_width -1 downto 0) := (0 => '1', 1 => '1', others => '0');

    -------------------------------------
    -- AXI streams
    -------------------------------------
    signal pre_merger_fwd : t_axi4_audio_fwd_bus(1 downto 0);
    signal pre_merger_bwd : t_axi4_audio_bwd_bus(1 downto 0);

    signal post_merger_fwd : t_axi4_audio_fwd;
    signal post_merger_bwd : t_axi4_audio_bwd;

    signal pre_mixer_fwd : t_axi4_audio_fwd;
    signal pre_mixer_bwd : t_axi4_audio_bwd;

    signal post_mixer_fwd : t_axi4_audio_fwd;
    signal post_mixer_bwd : t_axi4_audio_bwd;

    signal post_master_volume_fwd : t_axi4_audio_fwd;
    signal post_master_volume_bwd : t_axi4_audio_bwd;
    
    signal post_lp_filter_fwd : t_axi4_audio_fwd;
    signal post_lp_filter_bwd : t_axi4_audio_bwd;

begin

    -- TODO: traffic shaping (ensure there is no flood of DMA data compared to anal data)

    -------------------------------------
    -- Input buffering + CDC (clk_in to clk_audio)
    -------------------------------------
    b_input_buffering : block
        signal anal_buffered_fwd : t_axi4_audio_fwd;
        signal anal_buffered_bwd : t_axi4_audio_bwd;
        signal dma_buffered_fwd : t_axi4_audio_fwd;
        signal dma_buffered_bwd : t_axi4_audio_bwd;
    begin
        audio_fifo_anal_input: entity work.audio_fifo
         generic map(
            g_fifo_depth => c_input_fifo_depth
        )
         port map(
            clk_in => clk_in,
            clk_out => clk_audio,
            axi_in_fwd => anal_fwd,
            axi_in_bwd => anal_bwd,
            axi_out_fwd => anal_buffered_fwd,
            axi_out_bwd => anal_buffered_bwd 
        );

        audio_fifo_dma_input: entity work.audio_fifo
         generic map(
            g_fifo_depth => c_input_fifo_depth
        )
         port map(
            clk_in => clk_in,
            clk_out => clk_audio,
            axi_in_fwd => dma_fwd,
            axi_in_bwd => dma_bwd,
            axi_out_fwd => dma_buffered_fwd,
            axi_out_bwd => dma_buffered_bwd
        );

        pre_merger_fwd(0) <= anal_buffered_fwd;
        pre_merger_fwd(1) <= dma_buffered_fwd;
        
        anal_buffered_bwd <= pre_merger_bwd(0);
        dma_buffered_bwd <= pre_merger_bwd(1);
    end block;

    -------------------------------------
    -- Merging of anal and dma streams
    -------------------------------------
    p_dma : process (clk_axi_mm)
    begin
        if rising_edge(clk_axi_mm) then
            if dma_valid = '1' then
                channel_enable <= (others => '1');
            else
                channel_enable <= (0 => '1', 1 => '1', others => '0');
            end if;
        end if;
    end process;

    channel_merger_inst: entity work.channel_merger
     generic map(
        g_input_channels => 2,
        g_internal_fifo_depth => c_merger_fifo_depth,
        g_chip_scope => g_chip_scope
    )
     port map(
        clk_in => clk_in,
        clk_out => clk_out,
        channel_enable => channel_enable,
        clk_axi_mm => clk_axi_mm,
        axi_in_fwd_bus => pre_merger_fwd,
        axi_in_bwd_bus => pre_merger_bwd,
        axi_out_fwd => post_merger_fwd,
        axi_out_bwd => post_merger_bwd 
    );

    -- TODO: Add processing of the audio
    pre_mixer_fwd <= post_merger_fwd;
    post_merger_bwd <= pre_mixer_bwd;

    -------------------------------------
    -- Audio mixer
    -------------------------------------
    mixer_wrapper_inst: entity work.mixer_wrapper
     generic map(
        g_chip_scope => g_chip_scope
    )
     port map(
        clk => clk_audio,
        axi_mm_clk => clk_axi_mm,
        dma_valid => dma_valid,
        axi_in_fwd => pre_mixer_fwd,
        axi_in_bwd => pre_mixer_bwd,
        axi_out_fwd => post_mixer_fwd,
        axi_out_bwd => post_mixer_bwd
    );

    -------------------------------------
    -- Master volume
    -------------------------------------
    b_master_volume : block 
        signal chan_counter: STD_LOGIC_VECTOR(c_ID_width -1 downto 0):= (others => '1');
    begin
        p_master_volume_chan : process (clk_axi_mm)
        begin
            if rising_edge(clk_axi_mm) then
                chan_counter <= chan_counter + 1;
            end if;
        end process;

        volume_ctrl_inst: entity work.volume_ctrl
         generic map(
            g_volume_width => c_volume_width,
            g_chip_scope => g_chip_scope
        )
         port map(
            clk => clk_audio,
            axi_clk => clk_axi_mm,
            channel_address => chan_counter,
            channel_volume => master_volume,
            axi_in_fwd => post_mixer_fwd,
            axi_in_bwd => post_mixer_bwd,
            axi_out_fwd => post_master_volume_fwd,
            axi_out_bwd => post_master_volume_bwd 
        );
    end block;

    --TODO: Add lp filter to remove transition effects introduced by the pipeline
    post_lp_filter_fwd <= post_master_volume_fwd;
    post_master_volume_bwd <= post_lp_filter_bwd;


    -------------------------------------
    -- output buffer
    -------------------------------------
    audio_fifo_inst: entity work.audio_fifo
     generic map(
        g_fifo_depth => c_output_fifo_depth
    )
     port map(
        clk_in => clk_audio,
        clk_out => clk_out,
        axi_in_fwd => post_lp_filter_fwd,
        axi_in_bwd => post_lp_filter_bwd,
        axi_out_fwd => audio_out_fwd,
        axi_out_bwd => audio_out_bwd 
    );

end Behavioral;
