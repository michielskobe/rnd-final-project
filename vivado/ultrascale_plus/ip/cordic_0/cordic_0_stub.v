// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Tue Dec 10 07:45:44 2024
// Host        : fedora running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/debber/Documents/__KuLeuven/GroepT/Fase4/semester1/rnd/team-e/vivado/ultrascale_plus/ip/cordic_0/cordic_0_stub.v
// Design      : cordic_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "cordic_v6_0_20,Vivado 2023.2" *)
module cordic_0(aclk, s_axis_phase_tvalid, 
  s_axis_phase_tready, s_axis_phase_tdata, m_axis_dout_tvalid, m_axis_dout_tready, 
  m_axis_dout_tdata)
/* synthesis syn_black_box black_box_pad_pin="s_axis_phase_tvalid,s_axis_phase_tready,s_axis_phase_tdata[15:0],m_axis_dout_tvalid,m_axis_dout_tready,m_axis_dout_tdata[31:0]" */
/* synthesis syn_force_seq_prim="aclk" */;
  input aclk /* synthesis syn_isclock = 1 */;
  input s_axis_phase_tvalid;
  output s_axis_phase_tready;
  input [15:0]s_axis_phase_tdata;
  output m_axis_dout_tvalid;
  input m_axis_dout_tready;
  output [31:0]m_axis_dout_tdata;
endmodule
