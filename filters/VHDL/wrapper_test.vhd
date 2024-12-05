----------------------------------------------------------------------------------
-- Company: KUL - rnd embed - Beats N Bytes
-- Engineer: Wout Lyen
-- 
-- Create Date: 11/22/2024
-- Design Name: 
-- Module Name: 
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
use IEEE.fixed_pkg.all;



library work;
use work.axi4_audio_pkg.all;
use work.axi4_mm_filter_pkg.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity wrapper_test is
    Port (
    -- clocking
    clk_audio : in std_logic;
    clk_axi_mm : in std_logic;

    -- axi inputs
    axi_in_fwd : in t_axi4_audio_fwd;
    axi_in_bwd : out t_axi4_audio_bwd;

    -- axi outputs
    axi_out_fwd : out t_axi4_audio_fwd;
    axi_out_bwd : in t_axi4_audio_bwd

     );
end wrapper_test;

architecture Behavioral of wrapper_test is
    ------------------------------------
    -- AXI streams
    ------------------------------------
    signal axi_in_mm_band_low_1, axi_in_mm_band_low_2, axi_in_mm_band_high_1, axi_in_mm_band_high_2, axi_in_mm_low_1, axi_in_mm_low_2, axi_in_mm_high_1, axi_in_mm_high_2, axi_in_mm_low_pass, axi_in_mm_high_pass_1, axi_in_mm_high_pass_2 : t_axi4_mm_filter := (
        b0 => to_sfixed(1.0, 3, -23),
        b1 => to_sfixed(1.0, 3, -23),
        b2 => to_sfixed(1.0, 3, -23),
        a1 => to_sfixed(1.0, 3, -23),
        a2 => to_sfixed(1.0, 3, -23),
        channel_adress => (others => '0'),
        strobe => '0'
    );

    signal axi_in_mm_echo : t_axi4_mm_echo := axi4_mm_echo_inactive;
    signal axi_in_mm_ring_mod : t_axi4_mm_ring_mod := axi4_mm_ring_mod_inactive;
    signal axi_in_mm_saturation : t_axi4_mm_saturation := axi4_mm_saturation_inactive;
    signal axi_in_mm_volume_reduction : t_axi4_mm_volume := axi4_mm_volume_inactive;
    signal axi_in_mm_band_volume : t_axi4_mm_band_volume := axi4_mm_band_volume_inactive;

    signal post_merger_fwd : t_axi4_audio_fwd;
    signal post_merger_bwd : t_axi4_audio_bwd;

    signal pre_mixer_fwd : t_axi4_audio_fwd;
    signal pre_mixer_bwd : t_axi4_audio_bwd;

begin

    post_merger_fwd <= axi_in_fwd;
    axi_in_bwd <= post_merger_bwd;

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

    begin

        ------------------------------------
        -- Volume
        ------------------------------------

        i_volume_reduction: entity work.volume
        generic map(
            g_coefficient_width => 24,
            g_chip_scope => "False"
        )
        port map(
            clk => clk_audio,
            axi_in_mm => axi_in_mm_volume_reduction,
            axi_in_fwd => post_merger_fwd,
            axi_in_bwd => post_merger_bwd,
            axi_out_fwd => volume_fwd,
            axi_out_bwd => volume_bwd
        );

        ------------------------------------
        -- Band Shelf
        ------------------------------------

        i_band_volume: entity work.band_volume
        generic map(
            g_coefficient_width => 25,
            g_chip_scope => "False"
        )
        port map(
            clk => clk_audio,
            axi_clk => clk_axi_mm,
            axi_in_mm => axi_in_mm_band_volume,
            axi_in_fwd => volume_fwd,
            axi_in_bwd => volume_bwd,
            axi_out_fwd => band_volume_fwd,
            axi_out_bwd => band_volume_bwd
        );

        i_band_low_1: entity work.biquad_tdm
        generic map(
            g_coefficient_width => 27,
            g_chip_scope => "False"
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
            g_coefficient_width => 27,
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
            g_coefficient_width => 27,
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
            g_coefficient_width => 27,
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
            g_coefficient_width => 27,
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
            g_coefficient_width => 27,
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
            g_coefficient_width => 27,
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
            g_coefficient_width => 27,
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
            g_coefficient_width => 27,
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
            g_coefficient_width => 27,
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
            g_coefficient_width => 27,
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

        ------------------------------------
        -- Echo
        ------------------------------------

        i_echo: entity work.echo_tdm
        generic map(
            g_coefficient_width => 24,
            g_delay => 16384,
            g_chip_scope => "False"
        )
        port map(
            clk => clk_audio,
            axi_clk => clk_axi_mm,
            axi_in_mm => axi_in_mm_echo,
            axi_in_fwd => high_pass_2_fwd,
            axi_in_bwd => high_pass_2_bwd,
            axi_out_fwd => echo_fwd,
            axi_out_bwd => echo_bwd
        );

        ------------------------------------
        -- Saturation
        ------------------------------------

        i_saturation: entity work.saturation_tdm
        generic map(
            g_coefficient_width => 27,
            g_chip_scope => "False"
        )
        port map(
            clk => clk_audio,
            axi_clk => clk_axi_mm,
            axi_in_mm => axi_in_mm_saturation,
            axi_in_fwd => echo_fwd,
            axi_in_bwd => echo_bwd,
            axi_out_fwd => saturation_fwd,
            axi_out_bwd => saturation_bwd
        );

        pre_mixer_fwd <= saturation_fwd;
        saturation_bwd <= pre_mixer_bwd;
         
    end block;

    axi_out_fwd <= pre_mixer_fwd;
    pre_mixer_bwd <= axi_out_bwd;

end Behavioral;