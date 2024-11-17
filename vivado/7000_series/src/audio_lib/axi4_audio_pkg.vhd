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
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package axi4_audio_pkg is

    constant c_audio_width  : integer := 24;
    constant c_ID_width     : integer := 4;

    type t_axi4_audio_fwd is record
        TValid : STD_LOGIC;
        TLast : STD_LOGIC;
        TData : STD_LOGIC_VECTOR(c_audio_width - 1 downto 0);
        TID : STD_LOGIC_VECTOR(c_ID_width - 1 downto 0);
    end record t_axi4_audio_fwd;

    type t_axi4_audio_bwd is record
        TReady : STD_LOGIC;
    end record t_axi4_audio_bwd;

end package axi4_audio_pkg;
