-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Wed Dec 18 22:49:39 2024
-- Host        : fedora running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/debber/Documents/__KuLeuven/GroepT/Fase4/semester1/rnd/team-e/vivado/ultrascale_plus/bd/design_1/ip/design_1_audio_pipeline_IP_0_0/design_1_audio_pipeline_IP_0_0_stub.vhdl
-- Design      : design_1_audio_pipeline_IP_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_audio_pipeline_IP_0_0 is
  Port ( 
    clk_in : in STD_LOGIC;
    clk_audio : in STD_LOGIC;
    clk_out : in STD_LOGIC;
    clk_axi_mm : in STD_LOGIC;
    rst : in STD_LOGIC;
    dma_valid : in STD_LOGIC;
    s_TValid_anal : in STD_LOGIC;
    s_TLast_anal : in STD_LOGIC;
    s_TData_anal : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_TID_anal : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_TReady_anal : out STD_LOGIC;
    s_TValid_dma : in STD_LOGIC;
    s_TLast_dma : in STD_LOGIC;
    s_TData_dma : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_TID_dma : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_TReady_dma : out STD_LOGIC;
    s_TValid_out : out STD_LOGIC;
    s_TLast_out : out STD_LOGIC;
    s_TData_out : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_TID_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_TReady_out : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );

end design_1_audio_pipeline_IP_0_0;

architecture stub of design_1_audio_pipeline_IP_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_in,clk_audio,clk_out,clk_axi_mm,rst,dma_valid,s_TValid_anal,s_TLast_anal,s_TData_anal[23:0],s_TID_anal[1:0],s_TReady_anal,s_TValid_dma,s_TLast_dma,s_TData_dma[23:0],s_TID_dma[1:0],s_TReady_dma,s_TValid_out,s_TLast_out,s_TData_out[23:0],s_TID_out[1:0],s_TReady_out,s00_axi_aclk,s00_axi_aresetn,s00_axi_awaddr[8:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[8:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "audio_pipeline_IP_v1_0,Vivado 2023.2";
begin
end;
