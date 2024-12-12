// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Thu Dec 12 15:18:31 2024
// Host        : fedora running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/woutlyen/Documents/Fase4/team-e/vivado/ultrascale_plus/bd/design_1/ip/design_1_system_ila_0_2/design_1_system_ila_0_2_stub.v
// Design      : design_1_system_ila_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "bd_378d,Vivado 2023.2" *)
module design_1_system_ila_0_2(clk, probe0, probe1)
/* synthesis syn_black_box black_box_pad_pin="probe0[23:0],probe1[0:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input [23:0]probe0;
  input [0:0]probe1;
endmodule
