// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Dec 18 22:49:39 2024
// Host        : fedora running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/debber/Documents/__KuLeuven/GroepT/Fase4/semester1/rnd/team-e/vivado/ultrascale_plus/bd/design_1/ip/design_1_audio_pipeline_IP_0_0/design_1_audio_pipeline_IP_0_0_stub.v
// Design      : design_1_audio_pipeline_IP_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "audio_pipeline_IP_v1_0,Vivado 2023.2" *)
module design_1_audio_pipeline_IP_0_0(clk_in, clk_audio, clk_out, clk_axi_mm, rst, 
  dma_valid, s_TValid_anal, s_TLast_anal, s_TData_anal, s_TID_anal, s_TReady_anal, 
  s_TValid_dma, s_TLast_dma, s_TData_dma, s_TID_dma, s_TReady_dma, s_TValid_out, s_TLast_out, 
  s_TData_out, s_TID_out, s_TReady_out, s00_axi_aclk, s00_axi_aresetn, s00_axi_awaddr, 
  s00_axi_awprot, s00_axi_awvalid, s00_axi_awready, s00_axi_wdata, s00_axi_wstrb, 
  s00_axi_wvalid, s00_axi_wready, s00_axi_bresp, s00_axi_bvalid, s00_axi_bready, 
  s00_axi_araddr, s00_axi_arprot, s00_axi_arvalid, s00_axi_arready, s00_axi_rdata, 
  s00_axi_rresp, s00_axi_rvalid, s00_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="rst,dma_valid,s_TValid_anal,s_TLast_anal,s_TData_anal[23:0],s_TID_anal[1:0],s_TReady_anal,s_TValid_dma,s_TLast_dma,s_TData_dma[23:0],s_TID_dma[1:0],s_TReady_dma,s_TValid_out,s_TLast_out,s_TData_out[23:0],s_TID_out[1:0],s_TReady_out,s00_axi_aresetn,s00_axi_awaddr[8:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[8:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready" */
/* synthesis syn_force_seq_prim="clk_in" */
/* synthesis syn_force_seq_prim="clk_audio" */
/* synthesis syn_force_seq_prim="clk_out" */
/* synthesis syn_force_seq_prim="clk_axi_mm" */
/* synthesis syn_force_seq_prim="s00_axi_aclk" */;
  input clk_in /* synthesis syn_isclock = 1 */;
  input clk_audio /* synthesis syn_isclock = 1 */;
  input clk_out /* synthesis syn_isclock = 1 */;
  input clk_axi_mm /* synthesis syn_isclock = 1 */;
  input rst;
  input dma_valid;
  input s_TValid_anal;
  input s_TLast_anal;
  input [23:0]s_TData_anal;
  input [1:0]s_TID_anal;
  output s_TReady_anal;
  input s_TValid_dma;
  input s_TLast_dma;
  input [23:0]s_TData_dma;
  input [1:0]s_TID_dma;
  output s_TReady_dma;
  output s_TValid_out;
  output s_TLast_out;
  output [23:0]s_TData_out;
  output [1:0]s_TID_out;
  input s_TReady_out;
  input s00_axi_aclk /* synthesis syn_isclock = 1 */;
  input s00_axi_aresetn;
  input [8:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [8:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
endmodule
