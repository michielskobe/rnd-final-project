----------------------------------------------------------------------------------
-- Company: KUL - rnd embed - Beats N Bytes
-- Engineer: Robbe Decapmaker <debber@dcpm.be>
-- 
-- Create Date: 25/10/24
-- Design Name: design_1_wrapper
-- Module Name: design_1_wrapper - RTL
-- Project Name: Blendinator
-- Target Devices: USP 3EG
-- Tool Versions: vivado 2024.1
-- Description: Wrapper for block design
-- 
-- Dependencies: none
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- To make the VHDL contained in this file:
-- Go to 'design_1' element in sources in vivado
-- Right click and find 'view instantiation template'
-- You will get the updated code to paste in this file
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    bt_ctsn : in STD_LOGIC;
    bt_en_led_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    bt_rtsn : out STD_LOGIC;
    fan_pwm_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    wifi_en_led_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    bt_ctsn : in STD_LOGIC;
    bt_rtsn : out STD_LOGIC;
    wifi_en_led_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    bt_en_led_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    fan_pwm_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      bt_ctsn => bt_ctsn,
      bt_en_led_tri_o(0) => bt_en_led_tri_o(0),
      bt_rtsn => bt_rtsn,
      fan_pwm_tri_o(0) => fan_pwm_tri_o(0),
      wifi_en_led_tri_o(0) => wifi_en_led_tri_o(0)
    );
end STRUCTURE;