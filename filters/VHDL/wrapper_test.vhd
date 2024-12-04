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


library work;
use work.axi4_audio_pkg.all;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity wrapper_test is
    Port (
    -- clocking
    clk : in std_logic;

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

    signal biquad_8_fwd : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0');
    signal biquad_8_bwd : t_axi4_audio_bwd := (TReady => '1');

    signal biquad_9_fwd : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0');
    signal biquad_9_bwd : t_axi4_audio_bwd := (TReady => '1');

    signal biquad_10_fwd : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0');
    signal biquad_10_bwd : t_axi4_audio_bwd := (TReady => '1');

    signal echo_fwd : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0');
    signal echo_bwd : t_axi4_audio_bwd := (TReady => '1');

    signal ring_fwd : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0');
    signal ring_bwd : t_axi4_audio_bwd := (TReady => '1');

    signal sat_fwd : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0');
    signal sat_bwd : t_axi4_audio_bwd := (TReady => '1');

    signal axi_wav_fwd : t_axi4_audio_fwd := (TID => (others => '0'), TData => (others => '0'), TValid => '0', TLast =>'0');
    signal axi_wav_bwd : t_axi4_audio_bwd := (TReady => '1');


begin

    ------------------------------------
    -- Band Shelf
    ------------------------------------

    i_biquad: entity work.biquad_tdm
    generic map(
        g_coefficient_width => 27,
        g_chip_scope => "False"
    )
    port map(
        clk => clk,
        axi_in_fwd => axi_in_fwd,
        axi_in_bwd => axi_in_bwd,
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
        axi_in_fwd => biquad_fwd,
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
        axi_in_fwd => biquad_2_fwd,
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
        axi_in_fwd => biquad_3_fwd,
        axi_in_bwd => biquad_3_bwd,
        axi_out_fwd => biquad_4_fwd,
        axi_out_bwd => biquad_4_bwd
    );

    ------------------------------------
    -- Low Shelf
    ------------------------------------

    i_biquad_5: entity work.biquad_tdm
    generic map(
        g_coefficient_width => 27,
        g_chip_scope => "False"
    )
    port map(
        clk => clk,
        axi_in_fwd => biquad_4_fwd,
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
        axi_in_fwd => biquad_5_fwd,
        axi_in_bwd => biquad_5_bwd,
        axi_out_fwd => biquad_6_fwd,
        axi_out_bwd => biquad_6_bwd
    );

    ------------------------------------
    -- High Shelf
    ------------------------------------

    i_biquad_7: entity work.biquad_tdm
    generic map(
        g_coefficient_width => 27,
        g_chip_scope => "False"
    )
    port map(
        clk => clk,
        axi_in_fwd => biquad_6_fwd,
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
        axi_in_fwd => biquad_7_fwd,
        axi_in_bwd => biquad_7_bwd,
        axi_out_fwd => biquad_8_fwd,
        axi_out_bwd => biquad_8_bwd
    );

    ------------------------------------
    -- Low Pass
    ------------------------------------

    i_biquad_9: entity work.biquad_tdm
    generic map(
        g_coefficient_width => 27,
        g_chip_scope => "False"
    )
    port map(
        clk => clk,
        axi_in_fwd => biquad_8_fwd,
        axi_in_bwd => biquad_8_bwd,
        axi_out_fwd => biquad_9_fwd,
        axi_out_bwd => biquad_9_bwd
    );

    ------------------------------------
    -- High Pass
    ------------------------------------

    i_biquad_10: entity work.biquad_tdm
    generic map(
        g_coefficient_width => 27,
        g_chip_scope => "False"
    )
    port map(
        clk => clk,
        axi_in_fwd => biquad_9_fwd,
        axi_in_bwd => biquad_9_bwd,
        axi_out_fwd => biquad_10_fwd,
        axi_out_bwd => biquad_10_bwd
    );

    i_biquad_11: entity work.biquad_tdm
    generic map(
        g_coefficient_width => 27,
        g_chip_scope => "False"
    )
    port map(
        clk => clk,
        axi_in_fwd => biquad_10_fwd,
        axi_in_bwd => biquad_10_bwd,
        axi_out_fwd => echo_fwd,
        axi_out_bwd => echo_bwd
    );

    ------------------------------------
    -- Echo
    ------------------------------------

    echo_tdm_inst: entity work.echo_tdm
     generic map(
        g_coefficient_width => 24,
        g_delay => 20000,
        g_chip_scope => "False"
    )
     port map(
        clk => clk,
        axi_in_fwd => echo_fwd,
        axi_in_bwd => echo_bwd,
        axi_out_fwd => ring_fwd,
        axi_out_bwd => ring_bwd
    );

    ------------------------------------
    -- Ring Modulator
    ------------------------------------

    ring_modulator_inst: entity work.ring_modulator
     generic map(
        g_TID_count => 2,
        g_chip_scope => "False"
    )
     port map(
        clk => clk,
        axi_in_fwd => ring_fwd,
        axi_in_bwd => ring_bwd,
        axi_out_fwd => sat_fwd,
        axi_out_bwd => sat_bwd
    );

    ------------------------------------
    -- Saturation
    ------------------------------------

    saturation_tdm_inst: entity work.saturation_tdm
     generic map(
        g_coefficient_width => 27,
        g_chip_scope => "False"
    )
     port map(
        clk => clk,
        axi_in_fwd => sat_fwd,
        axi_in_bwd => sat_bwd,
        axi_out_fwd => axi_out_fwd,
        axi_out_bwd => axi_out_bwd
    );

end Behavioral;
