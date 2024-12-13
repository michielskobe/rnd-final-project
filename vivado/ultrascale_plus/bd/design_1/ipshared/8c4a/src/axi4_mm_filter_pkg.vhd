----------------------------------------------------------------------------------
-- Company: KUL - rnd embed - Beats N Bytes
-- Engineer: Wout Lyen
-- 
-- Create Date: 10/10/2024 06:28:29 PM
-- Design Name: 
-- Module Name: axi4_mm_filter_pkg - Behavioral
-- Project Name: Blendinator
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.02 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.fixed_pkg.all;

use work.axi4_audio_pkg.all;

package axi4_mm_filter_pkg is

    -- bus definitions
    type t_axi4_mm_filter is record
        b0 : sfixed(3 downto -23);
        b1 : sfixed(3 downto -23);
        b2 : sfixed(3 downto -23);
        a1 : sfixed(3 downto -23);
        a2 : sfixed(3 downto -23);
        channel_adress : std_logic_vector(c_ID_width - 1 downto 0);
        strobe : std_logic;
    end record t_axi4_mm_filter;

    constant axi4_mm_filter_inactive : t_axi4_mm_filter := (
        b0 => to_sfixed(1.0, 3, -23),
        b1 => to_sfixed(1.0, 3, -23),
        b2 => to_sfixed(1.0, 3, -23),
        a1 => to_sfixed(1.0, 3, -23),
        a2 => to_sfixed(1.0, 3, -23),
        channel_adress => (others => '0'),
        strobe => '0'
    );


    type t_axi4_mm_echo is record
        channel_value : sfixed(0 downto -23);
        channel_adress : std_logic_vector(c_ID_width - 1 downto 0);
        strobe : std_logic;
    end record t_axi4_mm_echo;

    constant axi4_mm_echo_inactive : t_axi4_mm_echo := (
        channel_value =>to_sfixed(0.0, 0, -23),
        channel_adress => (others => '0'),
        strobe => '0'
    );


    type t_axi4_mm_saturation is record
        channel_value : sfixed(3 downto -23);
        channel_adress : std_logic_vector(c_ID_width - 1 downto 0);
        strobe : std_logic;
    end record t_axi4_mm_saturation;

    constant axi4_mm_saturation_inactive : t_axi4_mm_saturation := (
        channel_value =>to_sfixed(1.0, 3, -23),
        channel_adress => (others => '0'),
        strobe => '0'
    );


    type t_axi4_mm_volume is record
        channel_value : sfixed(0 downto -23);
    end record t_axi4_mm_volume;

    constant axi4_mm_volume_inactive : t_axi4_mm_volume := (
        channel_value =>to_sfixed(0.5012, 0, -23)  -- -6dB
    );


    type t_axi4_mm_band_volume is record
        channel_value : sfixed(1 downto -23);
        channel_adress : std_logic_vector(c_ID_width - 1 downto 0);
        strobe : std_logic;
    end record t_axi4_mm_band_volume;

    constant axi4_mm_band_volume_inactive : t_axi4_mm_band_volume := (
        channel_value =>to_sfixed(1.0, 1, -23),
        channel_adress => (others => '0'),
        strobe => '0'
    );


    type t_axi4_mm_ring_mod is record
        on_off : std_logic;
        phase_inc : integer;
    end record t_axi4_mm_ring_mod;

    constant axi4_mm_ring_mod_inactive : t_axi4_mm_ring_mod := (
        on_off => '0',
        phase_inc => 256
    );


end package axi4_mm_filter_pkg;
