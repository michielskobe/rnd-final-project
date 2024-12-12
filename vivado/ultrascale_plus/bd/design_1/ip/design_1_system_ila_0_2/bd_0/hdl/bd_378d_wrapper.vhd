--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_378d_wrapper.bd
--Design : bd_378d_wrapper
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_378d_wrapper is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end bd_378d_wrapper;

architecture STRUCTURE of bd_378d_wrapper is
  component bd_378d is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component bd_378d;
begin
bd_378d_i: component bd_378d
     port map (
      clk => clk,
      probe0(23 downto 0) => probe0(23 downto 0),
      probe1(0) => probe1(0)
    );
end STRUCTURE;
