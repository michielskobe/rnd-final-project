----------------------------------------------------------------------------------
-- Company: KUL - rnd embed - Beats N Bytes
-- Engineer: Robbe Decapmaker <debber@dcpm.be>
-- 
-- Create Date: 11/25/2024 04:46:50 PM
-- Design Name: Mixer settings package
-- Module Name: mixer_settings_pkg - Behavioral
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
use work.axi4_audio_pkg.all;

package mixer_settings_pkg is
    constant c_input_streams : integer := 2;
    constant c_output_streams : integer := 2;

    type enable_array is array(natural range <>) of STD_LOGIC_VECTOR(2**c_ID_width -1 downto 0);

end package mixer_settings_pkg;