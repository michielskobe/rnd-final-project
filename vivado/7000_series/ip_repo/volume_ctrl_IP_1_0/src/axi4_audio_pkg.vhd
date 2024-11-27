----------------------------------------------------------------------------------
-- Company: KUL - rnd embed - Beats N Bytes
-- Engineer: Robbe Decapmaker <debber@dcpm.be>
-- 
-- Create Date: 10/10/2024 06:28:29 PM
-- Design Name: 
-- Module Name: axi4_audio_pkg - Behavioral
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

package axi4_audio_pkg is

    -- settings for the bus
    constant c_audio_width  : integer := 24;
    constant c_ID_width     : integer := 4;

    -- bus definitions
    type t_axi4_audio_fwd is record
        TValid : STD_LOGIC;
        TLast : STD_LOGIC;
        TData : STD_LOGIC_VECTOR(c_audio_width - 1 downto 0);
        TID : STD_LOGIC_VECTOR(c_ID_width - 1 downto 0);
    end record t_axi4_audio_fwd;

    type t_axi4_audio_bwd is record
        TReady : STD_LOGIC;
    end record t_axi4_audio_bwd;

    -- arrays of axi busses
    type t_axi4_audio_fwd_bus is array(natural range <>) of t_axi4_audio_fwd;
    type t_axi4_audio_bwd_bus is array(natural range <>) of t_axi4_audio_bwd;

    -- inactive constants
    constant audio_fwd_inactive : t_axi4_audio_fwd := (
        TValid => '0',
        TLast => '0',
        TData => (others => '0'),
        TID => (others => '0')
    );

    constant audio_bwd_inactive : t_axi4_audio_bwd := (
        TReady => '0'
    );
end package axi4_audio_pkg;
