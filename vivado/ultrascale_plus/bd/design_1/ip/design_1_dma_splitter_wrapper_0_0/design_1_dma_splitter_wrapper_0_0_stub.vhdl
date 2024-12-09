-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Mon Dec  9 19:37:44 2024
-- Host        : fedora running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/debber/Documents/__KuLeuven/GroepT/Fase4/semester1/rnd/team-e/vivado/ultrascale_plus/bd/design_1/ip/design_1_dma_splitter_wrapper_0_0/design_1_dma_splitter_wrapper_0_0_stub.vhdl
-- Design      : design_1_dma_splitter_wrapper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_dma_splitter_wrapper_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rest : in STD_LOGIC;
    dma_valid : in STD_LOGIC;
    dma_data : in STD_LOGIC_VECTOR ( 127 downto 0 );
    dma_last : in STD_LOGIC;
    dma_ready : out STD_LOGIC;
    s_TValid_out : out STD_LOGIC;
    s_TLast_out : out STD_LOGIC;
    s_TData_out : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_TID_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_TReady_out : in STD_LOGIC
  );

end design_1_dma_splitter_wrapper_0_0;

architecture stub of design_1_dma_splitter_wrapper_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rest,dma_valid,dma_data[127:0],dma_last,dma_ready,s_TValid_out,s_TLast_out,s_TData_out[23:0],s_TID_out[1:0],s_TReady_out";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dma_splitter_wrapper,Vivado 2023.2";
begin
end;
