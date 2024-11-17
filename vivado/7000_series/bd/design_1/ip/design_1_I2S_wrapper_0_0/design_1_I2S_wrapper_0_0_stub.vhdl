-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Sun Nov 17 16:09:15 2024
-- Host        : fedora running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/debber/Documents/__KuLeuven/GroepT/Fase4/semester1/rnd/team-e/vivado/7000_series/bd/design_1/ip/design_1_I2S_wrapper_0_0/design_1_I2S_wrapper_0_0_stub.vhdl
-- Design      : design_1_I2S_wrapper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_I2S_wrapper_0_0 is
  Port ( 
    m_clk : in STD_LOGIC;
    m_rst : in STD_LOGIC;
    mclk_r : out STD_LOGIC;
    lrclk_r : out STD_LOGIC;
    sclk_r : out STD_LOGIC;
    mclk_t : out STD_LOGIC;
    lrclk_t : out STD_LOGIC;
    sclk_t : out STD_LOGIC;
    data_in : in STD_LOGIC;
    data_out : out STD_LOGIC;
    s_TValid_in : in STD_LOGIC;
    s_TLast_in : in STD_LOGIC;
    s_TData_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_TID_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_TReady_in : out STD_LOGIC;
    s_TValid_out : out STD_LOGIC;
    s_TLast_out : out STD_LOGIC;
    s_TData_out : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_TID_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_TReady_out : in STD_LOGIC
  );

end design_1_I2S_wrapper_0_0;

architecture stub of design_1_I2S_wrapper_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "m_clk,m_rst,mclk_r,lrclk_r,sclk_r,mclk_t,lrclk_t,sclk_t,data_in,data_out,s_TValid_in,s_TLast_in,s_TData_in[23:0],s_TID_in[3:0],s_TReady_in,s_TValid_out,s_TLast_out,s_TData_out[23:0],s_TID_out[3:0],s_TReady_out";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "I2S_wrapper,Vivado 2024.1";
begin
end;
