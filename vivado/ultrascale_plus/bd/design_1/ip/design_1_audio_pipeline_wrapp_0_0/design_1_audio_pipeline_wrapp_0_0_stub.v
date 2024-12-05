// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Thu Dec  5 12:55:38 2024
// Host        : fedora running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_audio_pipeline_wrapp_0_0 -prefix
//               design_1_audio_pipeline_wrapp_0_0_ design_1_audio_pipeline_wrapp_0_0_stub.v
// Design      : design_1_audio_pipeline_wrapp_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "audio_pipeline_wrapper,Vivado 2023.2" *)
module design_1_audio_pipeline_wrapp_0_0(clk_in, clk_audio, clk_out, clk_axi_mm, 
  master_volume, channel_volume_select, channel_volume_value, dma_valid, s_TValid_anal, 
  s_TLast_anal, s_TData_anal, s_TID_anal, s_TReady_anal, s_TValid_dma, s_TLast_dma, 
  s_TData_dma, s_TID_dma, s_TReady_dma, s_TValid_out, s_TLast_out, s_TData_out, s_TID_out, 
  s_TReady_out)
/* synthesis syn_black_box black_box_pad_pin="master_volume[17:0],channel_volume_select[3:0],channel_volume_value[17:0],dma_valid,s_TValid_anal,s_TLast_anal,s_TData_anal[23:0],s_TID_anal[3:0],s_TReady_anal,s_TValid_dma,s_TLast_dma,s_TData_dma[23:0],s_TID_dma[3:0],s_TReady_dma,s_TValid_out,s_TLast_out,s_TData_out[23:0],s_TID_out[3:0],s_TReady_out" */
/* synthesis syn_force_seq_prim="clk_in" */
/* synthesis syn_force_seq_prim="clk_audio" */
/* synthesis syn_force_seq_prim="clk_out" */
/* synthesis syn_force_seq_prim="clk_axi_mm" */;
  input clk_in /* synthesis syn_isclock = 1 */;
  input clk_audio /* synthesis syn_isclock = 1 */;
  input clk_out /* synthesis syn_isclock = 1 */;
  input clk_axi_mm /* synthesis syn_isclock = 1 */;
  input [17:0]master_volume;
  input [3:0]channel_volume_select;
  input [17:0]channel_volume_value;
  input dma_valid;
  input s_TValid_anal;
  input s_TLast_anal;
  input [23:0]s_TData_anal;
  input [3:0]s_TID_anal;
  output s_TReady_anal;
  input s_TValid_dma;
  input s_TLast_dma;
  input [23:0]s_TData_dma;
  input [3:0]s_TID_dma;
  output s_TReady_dma;
  output s_TValid_out;
  output s_TLast_out;
  output [23:0]s_TData_out;
  output [3:0]s_TID_out;
  input s_TReady_out;
endmodule
