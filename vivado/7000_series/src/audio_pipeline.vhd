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
use work.axi4_mm_filter_pkg.all;

entity audio_pipeline is
    generic (
        g_chip_scope : string := "False"
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
        axi_in_mm_band_low_1: in t_axi4_mm_filter := axi4_mm_filter_inactive;
        axi_in_mm_band_low_2: in t_axi4_mm_filter := axi4_mm_filter_inactive;
        axi_in_mm_band_high_1: in t_axi4_mm_filter := axi4_mm_filter_inactive;
        axi_in_mm_band_high_2: in t_axi4_mm_filter := axi4_mm_filter_inactive;
        axi_in_mm_low_1: in t_axi4_mm_filter := axi4_mm_filter_inactive;
        axi_in_mm_low_2: in t_axi4_mm_filter := axi4_mm_filter_inactive;
        axi_in_mm_high_1: in t_axi4_mm_filter := axi4_mm_filter_inactive;
        axi_in_mm_high_2: in t_axi4_mm_filter := axi4_mm_filter_inactive;
        axi_in_mm_low_pass: in t_axi4_mm_filter := axi4_mm_filter_inactive;
        axi_in_mm_high_pass_1: in t_axi4_mm_filter := axi4_mm_filter_inactive;
        axi_in_mm_high_pass_2: in t_axi4_mm_filter := axi4_mm_filter_inactive;
        axi_in_mm_echo : in t_axi4_mm_echo := axi4_mm_echo_inactive;
        axi_in_mm_ring_mod_anal : in t_axi4_mm_ring_mod := axi4_mm_ring_mod_inactive;
        axi_in_mm_ring_mod_dma : in t_axi4_mm_ring_mod := axi4_mm_ring_mod_inactive;
        axi_in_mm_saturation : in t_axi4_mm_saturation := axi4_mm_saturation_inactive;
        axi_in_mm_volume_reduction : in t_axi4_mm_volume := axi4_mm_volume_inactive;
        axi_in_mm_band_volume : in t_axi4_mm_band_volume := axi4_mm_band_volume_inactive;

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

    signal pre_ring_mod_fwd : t_axi4_audio_fwd_bus(1 downto 0);
    signal pre_ring_mod_bwd : t_axi4_audio_bwd_bus(1 downto 0);

    -------------------------------------
    -- Chip Scope
    -------------------------------------
    attribute MARK_DEBUG : string;

    -- attribute MARK_DEBUG of post_merger_fwd : signal is g_chip_scope;
    -- attribute MARK_DEBUG of post_merger_bwd : signal is g_chip_scope;


begin

    -------------------------------------
    -- Input buffering + CDC (clk_in to clk_audio)
    -------------------------------------
    b_input_buffering : block
        signal anal_buffered_fwd : t_axi4_audio_fwd;
        signal anal_buffered_bwd : t_axi4_audio_bwd;

        signal dma_buffered_fwd : t_axi4_audio_fwd;
        signal dma_buffered_bwd : t_axi4_audio_bwd;

        signal anal_shaped_fwd: t_axi4_audio_fwd;
        signal anal_shaped_bwd: t_axi4_audio_bwd;

        signal dma_shaped_fwd: t_axi4_audio_fwd;
        signal dma_shaped_bwd: t_axi4_audio_bwd;
    begin
        trafic_shaper_inst: entity work.trafic_shaper
         port map(
            clk => clk_in,
            anal_fwd => anal_fwd,
            anal_bwd => anal_bwd,
            dma_fwd => dma_fwd,
            dma_bwd => dma_bwd,
            anal_out_fwd => anal_shaped_fwd,
            anal_out_bwd => anal_shaped_bwd,
            dma_out_fwd => dma_shaped_fwd,
            dma_out_bwd => dma_shaped_bwd
        );

        audio_fifo_anal_input: entity work.audio_fifo
         generic map(
            g_fifo_depth => c_input_fifo_depth
        )
         port map(
            clk_in => clk_in,
            clk_out => clk_audio,
            axi_in_fwd => anal_shaped_fwd,
            axi_in_bwd => anal_shaped_bwd,
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
            axi_in_fwd => dma_shaped_fwd,
            axi_in_bwd => dma_shaped_bwd,
            axi_out_fwd => dma_buffered_fwd,
            axi_out_bwd => dma_buffered_bwd
        );

        -- pre_ring_mod_fwd(0) <= anal_buffered_fwd;
        -- pre_ring_mod_fwd(1) <= dma_buffered_fwd;
        
        -- anal_buffered_bwd <= pre_ring_mod_bwd(0);
        -- dma_buffered_bwd <= pre_ring_mod_bwd(1);

        pre_merger_fwd(0) <= anal_buffered_fwd;
        pre_merger_fwd(1) <= dma_buffered_fwd;
        
        anal_buffered_bwd <= pre_merger_bwd(0);
        dma_buffered_bwd <= pre_merger_bwd(1);


    end block;


    -- ------------------------------------
    -- -- Ring Modulators
    -- ------------------------------------
    -- b_ring_modulators : block 
    --     signal ring_mod_anal_fwd : t_axi4_audio_fwd := audio_fwd_inactive;
    --     signal ring_mod_anal_bwd : t_axi4_audio_bwd := audio_bwd_inactive;
    --     signal ring_mod_dma_fwd : t_axi4_audio_fwd := audio_fwd_inactive;
    --     signal ring_mod_dma_bwd : t_axi4_audio_bwd := audio_bwd_inactive;

    --     -------------------------------------
    --     -- Chip Scope
    --     -------------------------------------
    --     attribute MARK_DEBUG : string;

    --     attribute MARK_DEBUG of ring_mod_anal_fwd : signal is g_chip_scope;
    --     attribute MARK_DEBUG of ring_mod_anal_bwd : signal is g_chip_scope;
    --     attribute MARK_DEBUG of ring_mod_dma_fwd : signal is g_chip_scope;
    --     attribute MARK_DEBUG of ring_mod_dma_bwd : signal is g_chip_scope;

    -- begin

    --     i_ring_mod_anal: entity work.ring_modulator
    --     generic map(
    --         g_TID_count => 2,
    --         g_chip_scope => g_chip_scope
    --     )
    --     port map(
    --         clk => clk_audio,
    --         axi_in_mm => axi_in_mm_ring_mod_anal,
    --         axi_in_fwd => pre_ring_mod_fwd(0),
    --         axi_in_bwd => pre_ring_mod_bwd(0),
    --         axi_out_fwd => ring_mod_anal_fwd,
    --         axi_out_bwd => ring_mod_anal_bwd
    --     );

    --     i_ring_mod_dma: entity work.ring_modulator
    --     generic map(
    --         g_TID_count => 2,
    --         g_chip_scope => g_chip_scope
    --     )
    --     port map(
    --         clk => clk_audio,
    --         axi_in_mm => axi_in_mm_ring_mod_dma,
    --         axi_in_fwd => pre_ring_mod_fwd(1),
    --         axi_in_bwd => pre_ring_mod_bwd(1),
    --         axi_out_fwd => ring_mod_dma_fwd,
    --         axi_out_bwd => ring_mod_dma_bwd
    --     );

    --     pre_merger_fwd(0) <= ring_mod_anal_fwd;
    --     pre_merger_fwd(1) <= ring_mod_dma_fwd;
        
    --     ring_mod_anal_bwd <= pre_merger_bwd(0);
    --     ring_mod_dma_bwd <= pre_merger_bwd(1);

    -- end block;

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

    
    ------------------------------------
    -- Filters and Audio Effects
    ------------------------------------
    b_filters_and_effects : block
        -- Volume Reduction
        signal volume_fwd : t_axi4_audio_fwd := audio_fwd_inactive;
        signal volume_bwd : t_axi4_audio_bwd := audio_bwd_inactive;
        -- Band Shelf
        signal band_volume_fwd : t_axi4_audio_fwd := audio_fwd_inactive;
        signal band_volume_bwd : t_axi4_audio_bwd := audio_bwd_inactive;
        signal band_low_1_fwd : t_axi4_audio_fwd := audio_fwd_inactive;
        signal band_low_1_bwd : t_axi4_audio_bwd := audio_bwd_inactive;
        signal band_low_2_fwd : t_axi4_audio_fwd := audio_fwd_inactive;
        signal band_low_2_bwd : t_axi4_audio_bwd := audio_bwd_inactive;
        signal band_high_1_fwd : t_axi4_audio_fwd := audio_fwd_inactive;
        signal band_high_1_bwd : t_axi4_audio_bwd := audio_bwd_inactive;
        signal band_high_2_fwd : t_axi4_audio_fwd := audio_fwd_inactive;
        signal band_high_2_bwd : t_axi4_audio_bwd := audio_bwd_inactive;
        -- Low Shelf
        signal low_1_fwd : t_axi4_audio_fwd := audio_fwd_inactive;
        signal low_1_bwd : t_axi4_audio_bwd := audio_bwd_inactive;
        signal low_2_fwd : t_axi4_audio_fwd := audio_fwd_inactive;
        signal low_2_bwd : t_axi4_audio_bwd := audio_bwd_inactive;
        -- High Shelf
        signal high_1_fwd : t_axi4_audio_fwd := audio_fwd_inactive;
        signal high_1_bwd : t_axi4_audio_bwd := audio_bwd_inactive;
        signal high_2_fwd : t_axi4_audio_fwd := audio_fwd_inactive;
        signal high_2_bwd : t_axi4_audio_bwd := audio_bwd_inactive;
        -- Low Pass
        signal low_pass_fwd : t_axi4_audio_fwd := audio_fwd_inactive;
        signal low_pass_bwd : t_axi4_audio_bwd := audio_bwd_inactive;
        -- High Pass
        signal high_pass_1_fwd : t_axi4_audio_fwd := audio_fwd_inactive;
        signal high_pass_1_bwd : t_axi4_audio_bwd := audio_bwd_inactive;
        signal high_pass_2_fwd : t_axi4_audio_fwd := audio_fwd_inactive;
        signal high_pass_2_bwd : t_axi4_audio_bwd := audio_bwd_inactive;
        -- Echo
        signal echo_fwd : t_axi4_audio_fwd := audio_fwd_inactive;
        signal echo_bwd : t_axi4_audio_bwd := audio_bwd_inactive;
        -- Saturation
        signal saturation_fwd : t_axi4_audio_fwd := audio_fwd_inactive;
        signal saturation_bwd : t_axi4_audio_bwd := audio_bwd_inactive;

        -------------------------------------
        -- Chip Scope
        -------------------------------------
        attribute MARK_DEBUG : string;

        -- attribute MARK_DEBUG of volume_fwd : signal is g_chip_scope;
        -- attribute MARK_DEBUG of volume_bwd : signal is g_chip_scope;
        attribute MARK_DEBUG of band_volume_fwd : signal is g_chip_scope;
        attribute MARK_DEBUG of band_volume_bwd : signal is g_chip_scope;
        attribute MARK_DEBUG of band_low_1_fwd : signal is g_chip_scope;
        attribute MARK_DEBUG of band_low_1_bwd : signal is g_chip_scope;
        attribute MARK_DEBUG of high_pass_2_fwd : signal is g_chip_scope;
        attribute MARK_DEBUG of high_pass_2_bwd : signal is g_chip_scope;
        -- attribute MARK_DEBUG of echo_fwd : signal is g_chip_scope;
        -- attribute MARK_DEBUG of echo_bwd : signal is g_chip_scope;
        -- attribute MARK_DEBUG of saturation_fwd : signal is g_chip_scope;
        -- attribute MARK_DEBUG of saturation_bwd : signal is g_chip_scope;
    begin

        band_volume_fwd <= post_merger_fwd;
        post_merger_bwd <= band_volume_bwd;

        ------------------------------------
        -- Volume
        ------------------------------------

        -- i_volume_reduction: entity work.volume
        -- generic map(
        --     g_chip_scope => g_chip_scope
        -- )
        -- port map(
        --     clk => clk_audio,
        --     axi_in_mm => axi_in_mm_volume_reduction,
        --     axi_in_fwd => post_merger_fwd,
        --     axi_in_bwd => post_merger_bwd,
        --     axi_out_fwd => volume_fwd,
        --     axi_out_bwd => volume_bwd
        -- );

        -- ------------------------------------
        -- -- Band Shelf
        -- ------------------------------------

        -- i_band_volume: entity work.band_volume
        -- generic map(
        --     g_chip_scope => g_chip_scope
        -- )
        -- port map(
        --     clk => clk_audio,
        --     axi_clk => clk_axi_mm,
        --     axi_in_mm => axi_in_mm_band_volume,
        --     axi_in_fwd => volume_fwd,
        --     axi_in_bwd => volume_bwd,
        --     axi_out_fwd => band_volume_fwd,
        --     axi_out_bwd => band_volume_bwd
        -- );

        i_band_low_1: entity work.biquad_tdm
        generic map(
            g_chip_scope => g_chip_scope
        )
        port map(
            clk => clk_audio,
            axi_clk => clk_axi_mm,
            axi_in_mm => axi_in_mm_band_low_1,
            axi_in_fwd => band_volume_fwd,
            axi_in_bwd => band_volume_bwd,
            axi_out_fwd => band_low_1_fwd,
            axi_out_bwd => band_low_1_bwd
        );

        i_band_low_2: entity work.biquad_tdm
        generic map(
            g_chip_scope => "False"
        )
        port map(
            clk => clk_audio,
            axi_clk => clk_axi_mm,
            axi_in_mm => axi_in_mm_band_low_2,
            axi_in_fwd => band_low_1_fwd,
            axi_in_bwd => band_low_1_bwd,
            axi_out_fwd => band_low_2_fwd,
            axi_out_bwd => band_low_2_bwd
        );

        i_band_high_1: entity work.biquad_tdm
        generic map(
            g_chip_scope => "False"
        )
        port map(
            clk => clk_audio,
            axi_clk => clk_axi_mm,
            axi_in_mm => axi_in_mm_band_high_1,
            axi_in_fwd => band_low_2_fwd,
            axi_in_bwd => band_low_2_bwd,
            axi_out_fwd => band_high_1_fwd,
            axi_out_bwd => band_high_1_bwd
        );

        i_band_high_2: entity work.biquad_tdm
        generic map(
            g_chip_scope => "False"
        )
        port map(
            clk => clk_audio,
            axi_clk => clk_axi_mm,
            axi_in_mm => axi_in_mm_band_high_2,
            axi_in_fwd => band_high_1_fwd,
            axi_in_bwd => band_high_1_bwd,
            axi_out_fwd => band_high_2_fwd,
            axi_out_bwd => band_high_2_bwd
        );

        ------------------------------------
        -- Low Shelf
        ------------------------------------

        i_low_1: entity work.biquad_tdm
        generic map(
            g_chip_scope => "False"
        )
        port map(
            clk => clk_audio,
            axi_clk => clk_axi_mm,
            axi_in_mm => axi_in_mm_low_1,
            axi_in_fwd => band_high_2_fwd,
            axi_in_bwd => band_high_2_bwd,
            axi_out_fwd => low_1_fwd,
            axi_out_bwd => low_1_bwd
        );

        i_low_2: entity work.biquad_tdm
        generic map(
            g_chip_scope => "False"
        )
        port map(
            clk => clk_audio,
            axi_clk => clk_axi_mm,
            axi_in_mm => axi_in_mm_low_2,
            axi_in_fwd => low_1_fwd,
            axi_in_bwd => low_1_bwd,
            axi_out_fwd => low_2_fwd,
            axi_out_bwd => low_2_bwd
        );

        ------------------------------------
        -- High Shelf
        ------------------------------------

        i_high_1: entity work.biquad_tdm
        generic map(
            g_chip_scope => "False"
        )
        port map(
            clk => clk_audio,
            axi_clk => clk_axi_mm,
            axi_in_mm => axi_in_mm_high_1,
            axi_in_fwd => low_2_fwd,
            axi_in_bwd => low_2_bwd,
            axi_out_fwd => high_1_fwd,
            axi_out_bwd => high_1_bwd
        );

        i_high_2: entity work.biquad_tdm
        generic map(
            g_chip_scope => "False"
        )
        port map(
            clk => clk_audio,
            axi_clk => clk_axi_mm,
            axi_in_mm => axi_in_mm_high_2,
            axi_in_fwd => high_1_fwd,
            axi_in_bwd => high_1_bwd,
            axi_out_fwd => high_2_fwd,
            axi_out_bwd => high_2_bwd
        );

        ------------------------------------
        -- Low Pass
        ------------------------------------

        i_low_pass: entity work.biquad_tdm
        generic map(
            g_chip_scope => "False"
        )
        port map(
            clk => clk_audio,
            axi_clk => clk_axi_mm,
            axi_in_mm => axi_in_mm_low_pass,
            axi_in_fwd => high_2_fwd,
            axi_in_bwd => high_2_bwd,
            axi_out_fwd => low_pass_fwd,
            axi_out_bwd => low_pass_bwd
        );

        ------------------------------------
        -- High Pass
        ------------------------------------

        i_high_pass_1: entity work.biquad_tdm
        generic map(
            g_chip_scope => "False"
        )
        port map(
            clk => clk_audio,
            axi_clk => clk_axi_mm,
            axi_in_mm => axi_in_mm_high_pass_1,
            axi_in_fwd => low_pass_fwd,
            axi_in_bwd => low_pass_bwd,
            axi_out_fwd => high_pass_1_fwd,
            axi_out_bwd => high_pass_1_bwd
        );

        i_high_pass_2: entity work.biquad_tdm
        generic map(
            g_chip_scope => "False"
        )
        port map(
            clk => clk_audio,
            axi_clk => clk_axi_mm,
            axi_in_mm => axi_in_mm_high_pass_2,
            axi_in_fwd => high_pass_1_fwd,
            axi_in_bwd => high_pass_1_bwd,
            axi_out_fwd => high_pass_2_fwd,
            axi_out_bwd => high_pass_2_bwd
        );

        -- ------------------------------------
        -- -- Echo
        -- ------------------------------------
        --
        -- i_echo: entity work.echo_tdm
        -- generic map(
        --     g_delay => 16384,
        --     g_chip_scope => g_chip_scope
        -- )
        -- port map(
        --     clk => clk_audio,
        --     axi_clk => clk_axi_mm,
        --     axi_in_mm => axi_in_mm_echo,
        --     axi_in_fwd => high_pass_2_fwd,
        --     axi_in_bwd => high_pass_2_bwd,
        --     axi_out_fwd => echo_fwd,
        --     axi_out_bwd => echo_bwd
        -- );

        -- ------------------------------------
        -- -- Saturation
        -- ------------------------------------

        -- i_saturation: entity work.saturation_tdm
        -- generic map(
        --     g_chip_scope => g_chip_scope
        -- )
        -- port map(
        --     clk => clk_audio,
        --     axi_clk => clk_axi_mm,
        --     axi_in_mm => axi_in_mm_saturation,
        --     axi_in_fwd => echo_fwd,
        --     axi_in_bwd => echo_bwd,
        --     axi_out_fwd => saturation_fwd,
        --     axi_out_bwd => saturation_bwd
        -- );

        -- pre_mixer_fwd <= saturation_fwd;
        -- saturation_bwd <= pre_mixer_bwd;
         
        pre_mixer_fwd <= high_pass_2_fwd;
        high_pass_2_bwd <= pre_mixer_bwd;

    end block;

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

    -------------------------------------
    -- Low Pass Filter
    -------------------------------------

    -- low_pass_inst: entity work.low_pass
    --  generic map(
    --     g_chip_scope => g_chip_scope
    -- )
    --  port map(
    --     clk => clk_audio,
    --     axi_in_fwd => post_master_volume_fwd,
    --     axi_in_bwd => post_master_volume_bwd,
    --     axi_out_fwd => post_lp_filter_fwd,
    --     axi_out_bwd => post_lp_filter_bwd
    -- );

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
