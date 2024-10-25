--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
--Date        : Thu Oct 24 15:06:03 2024
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
    BT_HCI_CTS : out STD_LOGIC;
    HD_GPIO_4 : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    HD_GPIO_4 : out STD_LOGIC;
    BT_HCI_CTS : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      BT_HCI_CTS => BT_HCI_CTS,
      HD_GPIO_4 => HD_GPIO_4
    );
end STRUCTURE;
