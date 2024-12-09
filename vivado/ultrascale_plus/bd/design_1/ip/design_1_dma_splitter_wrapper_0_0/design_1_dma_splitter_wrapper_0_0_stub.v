// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon Dec  9 19:37:44 2024
// Host        : fedora running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/debber/Documents/__KuLeuven/GroepT/Fase4/semester1/rnd/team-e/vivado/ultrascale_plus/bd/design_1/ip/design_1_dma_splitter_wrapper_0_0/design_1_dma_splitter_wrapper_0_0_stub.v
// Design      : design_1_dma_splitter_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dma_splitter_wrapper,Vivado 2023.2" *)
module design_1_dma_splitter_wrapper_0_0(clk, rest, dma_valid, dma_data, dma_last, 
  dma_ready, s_TValid_out, s_TLast_out, s_TData_out, s_TID_out, s_TReady_out)
/* synthesis syn_black_box black_box_pad_pin="rest,dma_valid,dma_data[127:0],dma_last,dma_ready,s_TValid_out,s_TLast_out,s_TData_out[23:0],s_TID_out[1:0],s_TReady_out" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input rest;
  input dma_valid;
  input [127:0]dma_data;
  input dma_last;
  output dma_ready;
  output s_TValid_out;
  output s_TLast_out;
  output [23:0]s_TData_out;
  output [1:0]s_TID_out;
  input s_TReady_out;
endmodule
