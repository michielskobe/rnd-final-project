--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Wed Nov 27 14:21:38 2024
--Host        : fedora running 64-bit unknown
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
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
    wifi_en_led_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    bt_en_led_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    fan_pwm_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    bt_ctsn : in STD_LOGIC;
    bt_rtsn : out STD_LOGIC
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
