// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Fri Nov 29 10:59:58 2024
// Host        : fedora running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_I2S_wrapper_0_0 -prefix
//               design_1_I2S_wrapper_0_0_ design_1_I2S_wrapper_0_0_stub.v
// Design      : design_1_I2S_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "I2S_wrapper,Vivado 2023.2" *)
module design_1_I2S_wrapper_0_0(m_clk, m_rst, mclk_r, lrclk_r, sclk_r, mclk_t, 
  lrclk_t, sclk_t, data_in, data_out, s_TValid_in, s_TLast_in, s_TData_in, s_TID_in, s_TReady_in, 
  s_TValid_out, s_TLast_out, s_TData_out, s_TID_out, s_TReady_out)
/* synthesis syn_black_box black_box_pad_pin="m_rst,lrclk_r,sclk_r,lrclk_t,sclk_t,data_in,data_out,s_TValid_in,s_TLast_in,s_TData_in[23:0],s_TID_in[3:0],s_TReady_in,s_TValid_out,s_TLast_out,s_TData_out[23:0],s_TID_out[3:0],s_TReady_out" */
/* synthesis syn_force_seq_prim="m_clk" */
/* synthesis syn_force_seq_prim="mclk_r" */
/* synthesis syn_force_seq_prim="mclk_t" */;
  input m_clk /* synthesis syn_isclock = 1 */;
  input m_rst;
  output mclk_r /* synthesis syn_isclock = 1 */;
  output lrclk_r;
  output sclk_r;
  output mclk_t /* synthesis syn_isclock = 1 */;
  output lrclk_t;
  output sclk_t;
  input data_in;
  output data_out;
  input s_TValid_in;
  input s_TLast_in;
  input [23:0]s_TData_in;
  input [3:0]s_TID_in;
  output s_TReady_in;
  output s_TValid_out;
  output s_TLast_out;
  output [23:0]s_TData_out;
  output [3:0]s_TID_out;
  input s_TReady_out;
endmodule
