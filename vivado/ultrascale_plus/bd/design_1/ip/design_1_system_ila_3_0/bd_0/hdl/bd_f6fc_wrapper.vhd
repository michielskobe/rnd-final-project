--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_f6fc_wrapper.bd
--Design : bd_f6fc_wrapper
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_f6fc_wrapper is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end bd_f6fc_wrapper;

architecture STRUCTURE of bd_f6fc_wrapper is
  component bd_f6fc is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component bd_f6fc;
begin
bd_f6fc_i: component bd_f6fc
     port map (
      clk => clk,
      probe0(0) => probe0(0)
    );
end STRUCTURE;
