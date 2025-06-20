// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon Dec  9 23:47:06 2024
// Host        : fedora running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/debber/Documents/__KuLeuven/GroepT/Fase4/semester1/rnd/team-e/vivado/ultrascale_plus/bd/design_1/ip/design_1_I2S_wrapper_0_0/design_1_I2S_wrapper_0_0_sim_netlist.v
// Design      : design_1_I2S_wrapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_I2S_wrapper_0_0,I2S_wrapper,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "I2S_wrapper,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module design_1_I2S_wrapper_0_0
   (m_clk,
    m_rst,
    mclk_r,
    lrclk_r,
    sclk_r,
    mclk_t,
    lrclk_t,
    sclk_t,
    data_in,
    data_out,
    s_TValid_in,
    s_TLast_in,
    s_TData_in,
    s_TID_in,
    s_TReady_in,
    s_TValid_out,
    s_TLast_out,
    s_TData_out,
    s_TID_out,
    s_TReady_out);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 m_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME m_clk, ASSOCIATED_RESET m_rst, FREQ_HZ 12288786, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input m_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 m_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME m_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m_rst;
  output mclk_r;
  output lrclk_r;
  output sclk_r;
  output mclk_t;
  output lrclk_t;
  output sclk_t;
  input data_in;
  output data_out;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_in TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_in, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 2, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_TValid_in;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_in TLAST" *) input s_TLast_in;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_in TDATA" *) input [23:0]s_TData_in;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_in TID" *) input [1:0]s_TID_in;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_in TREADY" *) output s_TReady_in;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_out TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_out, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 2, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output s_TValid_out;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_out TLAST" *) output s_TLast_out;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_out TDATA" *) output [23:0]s_TData_out;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_out TID" *) output [1:0]s_TID_out;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_out TREADY" *) input s_TReady_out;

  wire \<const0> ;
  wire data_in;
  wire data_out;
  wire lrclk_r;
  wire lrclk_t;
  wire m_clk;
  wire m_rst;
  wire [23:0]s_TData_in;
  wire [23:0]s_TData_out;
  wire [1:0]s_TID_in;
  wire [0:0]\^s_TID_out ;
  wire s_TLast_in;
  wire s_TReady_in;
  wire s_TReady_out;
  wire s_TValid_in;
  wire s_TValid_out;
  wire sclk_r;
  wire sclk_t;

  assign mclk_r = m_clk;
  assign mclk_t = m_clk;
  assign s_TID_out[1] = \<const0> ;
  assign s_TID_out[0] = \^s_TID_out [0];
  assign s_TLast_out = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_I2S_wrapper_0_0_I2S_wrapper U0
       (.data_in(data_in),
        .data_out(data_out),
        .lrclk_r(lrclk_r),
        .lrclk_t(lrclk_t),
        .m_clk(m_clk),
        .m_rst(m_rst),
        .s_TData_in(s_TData_in),
        .s_TData_out(s_TData_out),
        .s_TID_in(s_TID_in),
        .s_TID_out(\^s_TID_out ),
        .s_TLast_in(s_TLast_in),
        .s_TReady_in(s_TReady_in),
        .s_TReady_out(s_TReady_out),
        .s_TValid_in(s_TValid_in),
        .s_TValid_out(s_TValid_out),
        .sclk_r(sclk_r),
        .sclk_t(sclk_t));
endmodule

(* ORIG_REF_NAME = "I2S_clock_gen" *) 
module design_1_I2S_wrapper_0_0_I2S_clock_gen
   (sclk_r,
    lrclk_r,
    m_clk);
  output sclk_r;
  output lrclk_r;
  input m_clk;

  wire lr_counter;
  wire \lr_counter[5]_i_3_n_0 ;
  wire [5:0]lr_counter_reg;
  wire lrclk_r;
  wire m_clk;
  wire [5:0]p_0_in__0;
  wire [1:0]p_1_in;
  wire sclk_r;
  wire [1:0]serial_counter;
  wire \serial_counter[1]_i_1__0_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \lr_counter[0]_i_1 
       (.I0(lr_counter_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lr_counter[1]_i_1 
       (.I0(lr_counter_reg[0]),
        .I1(lr_counter_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \lr_counter[2]_i_1 
       (.I0(lr_counter_reg[0]),
        .I1(lr_counter_reg[1]),
        .I2(lr_counter_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \lr_counter[3]_i_1 
       (.I0(lr_counter_reg[1]),
        .I1(lr_counter_reg[0]),
        .I2(lr_counter_reg[2]),
        .I3(lr_counter_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \lr_counter[4]_i_1 
       (.I0(lr_counter_reg[2]),
        .I1(lr_counter_reg[0]),
        .I2(lr_counter_reg[1]),
        .I3(lr_counter_reg[3]),
        .I4(lr_counter_reg[4]),
        .O(p_0_in__0[4]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \lr_counter[5]_i_1__1 
       (.I0(lr_counter_reg[4]),
        .I1(lr_counter_reg[5]),
        .I2(serial_counter[0]),
        .I3(serial_counter[1]),
        .I4(\lr_counter[5]_i_3_n_0 ),
        .O(lr_counter));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \lr_counter[5]_i_2 
       (.I0(lr_counter_reg[3]),
        .I1(lr_counter_reg[1]),
        .I2(lr_counter_reg[0]),
        .I3(lr_counter_reg[2]),
        .I4(lr_counter_reg[4]),
        .I5(lr_counter_reg[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \lr_counter[5]_i_3 
       (.I0(lr_counter_reg[1]),
        .I1(lr_counter_reg[0]),
        .I2(lr_counter_reg[3]),
        .I3(lr_counter_reg[2]),
        .O(\lr_counter[5]_i_3_n_0 ));
  (* mark_debug = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[0] 
       (.C(m_clk),
        .CE(\serial_counter[1]_i_1__0_n_0 ),
        .D(p_0_in__0[0]),
        .Q(lr_counter_reg[0]),
        .R(lr_counter));
  (* mark_debug = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[1] 
       (.C(m_clk),
        .CE(\serial_counter[1]_i_1__0_n_0 ),
        .D(p_0_in__0[1]),
        .Q(lr_counter_reg[1]),
        .R(lr_counter));
  (* mark_debug = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[2] 
       (.C(m_clk),
        .CE(\serial_counter[1]_i_1__0_n_0 ),
        .D(p_0_in__0[2]),
        .Q(lr_counter_reg[2]),
        .R(lr_counter));
  (* mark_debug = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[3] 
       (.C(m_clk),
        .CE(\serial_counter[1]_i_1__0_n_0 ),
        .D(p_0_in__0[3]),
        .Q(lr_counter_reg[3]),
        .R(lr_counter));
  (* mark_debug = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[4] 
       (.C(m_clk),
        .CE(\serial_counter[1]_i_1__0_n_0 ),
        .D(p_0_in__0[4]),
        .Q(lr_counter_reg[4]),
        .R(lr_counter));
  (* mark_debug = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[5] 
       (.C(m_clk),
        .CE(\serial_counter[1]_i_1__0_n_0 ),
        .D(p_0_in__0[5]),
        .Q(lr_counter_reg[5]),
        .R(lr_counter));
  LUT1 #(
    .INIT(2'h1)) 
    lrclk_r_INST_0
       (.I0(lr_counter_reg[5]),
        .O(lrclk_r));
  LUT1 #(
    .INIT(2'h1)) 
    sclk_r_INST_0
       (.I0(serial_counter[1]),
        .O(sclk_r));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \serial_counter[0]_i_1 
       (.I0(serial_counter[0]),
        .O(p_1_in[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \serial_counter[1]_i_1__0 
       (.I0(serial_counter[1]),
        .I1(serial_counter[0]),
        .O(\serial_counter[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \serial_counter[1]_i_2 
       (.I0(serial_counter[0]),
        .I1(serial_counter[1]),
        .O(p_1_in[1]));
  (* mark_debug = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \serial_counter_reg[0] 
       (.C(m_clk),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(serial_counter[0]),
        .R(\serial_counter[1]_i_1__0_n_0 ));
  (* mark_debug = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \serial_counter_reg[1] 
       (.C(m_clk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(serial_counter[1]),
        .R(\serial_counter[1]_i_1__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "I2S_rec" *) 
module design_1_I2S_wrapper_0_0_I2S_rec
   (p_4_in,
    s_TValid_out,
    s_TID_out,
    s_TData_out,
    m_clk,
    s_TReady_out,
    m_rst,
    data_in);
  output p_4_in;
  output s_TValid_out;
  output [0:0]s_TID_out;
  output [23:0]s_TData_out;
  input m_clk;
  input s_TReady_out;
  input m_rst;
  input data_in;

  wire \axi_out_fwd[TData][23]_i_1_n_0 ;
  wire \axi_out_fwd[TID][0]_i_1_n_0 ;
  wire \axi_out_fwd[TValid]_i_2_n_0 ;
  (* MARK_DEBUG *) wire busy;
  wire busy_i_1_n_0;
  wire busy_reg0;
  wire data_in;
  wire eqOp;
  wire is_l_sample;
  wire l_buffr;
  wire l_buffr_i_1_n_0;
  wire [23:0]l_sample;
  wire l_sample_1;
  (* MARK_DEBUG *) wire l_sent;
  wire l_sent_i_1__0_n_0;
  wire l_sent_prev;
  wire lr_counter;
  wire \lr_counter[5]_i_3__0_n_0 ;
  wire [5:5]lr_counter_reg;
  wire [4:0]lr_counter_reg__0;
  wire m_clk;
  wire m_rst;
  (* MARK_DEBUG *) wire [4:0]offset;
  wire \offset[0]_i_1_n_0 ;
  wire \offset[1]_i_1_n_0 ;
  wire \offset[2]_i_1_n_0 ;
  wire \offset[3]_i_1_n_0 ;
  wire \offset[4]_i_1_n_0 ;
  wire \offset[4]_i_2_n_0 ;
  wire \offset[4]_i_3_n_0 ;
  wire [1:0]p_0_in;
  wire [1:0]p_0_in__0;
  wire [5:0]p_0_in__1;
  wire p_4_in;
  wire [23:0]r_sample;
  wire \r_sample[0]_i_1_n_0 ;
  wire \r_sample[10]_i_1_n_0 ;
  wire \r_sample[11]_i_1_n_0 ;
  wire \r_sample[12]_i_1_n_0 ;
  wire \r_sample[13]_i_1_n_0 ;
  wire \r_sample[14]_i_1_n_0 ;
  wire \r_sample[15]_i_1_n_0 ;
  wire \r_sample[15]_i_2_n_0 ;
  wire \r_sample[16]_i_1_n_0 ;
  wire \r_sample[17]_i_1_n_0 ;
  wire \r_sample[18]_i_1_n_0 ;
  wire \r_sample[19]_i_1_n_0 ;
  wire \r_sample[1]_i_1_n_0 ;
  wire \r_sample[20]_i_1_n_0 ;
  wire \r_sample[21]_i_1_n_0 ;
  wire \r_sample[22]_i_1_n_0 ;
  wire \r_sample[23]_i_1_n_0 ;
  wire \r_sample[23]_i_2_n_0 ;
  wire \r_sample[2]_i_1_n_0 ;
  wire \r_sample[3]_i_1_n_0 ;
  wire \r_sample[4]_i_1_n_0 ;
  wire \r_sample[5]_i_1_n_0 ;
  wire \r_sample[6]_i_1_n_0 ;
  wire \r_sample[7]_i_1_n_0 ;
  wire \r_sample[7]_i_2_n_0 ;
  wire \r_sample[8]_i_1_n_0 ;
  wire \r_sample[9]_i_1_n_0 ;
  (* MARK_DEBUG *) wire r_sent;
  wire r_sent_i_1_n_0;
  wire [23:0]s_TData_out;
  wire [0:0]s_TID_out;
  wire s_TReady_out;
  wire s_TValid_out;
  wire serial_counter0;
  wire \serial_counter_reg_n_0_[0] ;
  wire \serial_counter_reg_n_0_[1] ;
  (* MARK_DEBUG *) wire start;
  wire start_reg0;
  (* MARK_DEBUG *) wire [1:0]state;

  LUT4 #(
    .INIT(16'h0010)) 
    \axi_out_fwd[TData][23]_i_1 
       (.I0(m_rst),
        .I1(state[0]),
        .I2(l_buffr),
        .I3(state[1]),
        .O(\axi_out_fwd[TData][23]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_out_fwd[TID][0]_i_1 
       (.I0(is_l_sample),
        .O(\axi_out_fwd[TID][0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_out_fwd[TValid]_i_1 
       (.I0(m_rst),
        .O(p_4_in));
  LUT4 #(
    .INIT(16'h0704)) 
    \axi_out_fwd[TValid]_i_2 
       (.I0(s_TReady_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(l_buffr),
        .O(\axi_out_fwd[TValid]_i_2_n_0 ));
  FDRE \axi_out_fwd_reg[TData][0] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(l_sample[0]),
        .Q(s_TData_out[0]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][10] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(l_sample[10]),
        .Q(s_TData_out[10]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][11] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(l_sample[11]),
        .Q(s_TData_out[11]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][12] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(l_sample[12]),
        .Q(s_TData_out[12]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][13] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(l_sample[13]),
        .Q(s_TData_out[13]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][14] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(l_sample[14]),
        .Q(s_TData_out[14]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][15] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(l_sample[15]),
        .Q(s_TData_out[15]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][16] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(l_sample[16]),
        .Q(s_TData_out[16]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][17] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(l_sample[17]),
        .Q(s_TData_out[17]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][18] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(l_sample[18]),
        .Q(s_TData_out[18]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][19] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(l_sample[19]),
        .Q(s_TData_out[19]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][1] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(l_sample[1]),
        .Q(s_TData_out[1]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][20] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(l_sample[20]),
        .Q(s_TData_out[20]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][21] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(l_sample[21]),
        .Q(s_TData_out[21]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][22] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(l_sample[22]),
        .Q(s_TData_out[22]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][23] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(l_sample[23]),
        .Q(s_TData_out[23]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][2] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(l_sample[2]),
        .Q(s_TData_out[2]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][3] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(l_sample[3]),
        .Q(s_TData_out[3]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][4] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(l_sample[4]),
        .Q(s_TData_out[4]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][5] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(l_sample[5]),
        .Q(s_TData_out[5]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][6] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(l_sample[6]),
        .Q(s_TData_out[6]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][7] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(l_sample[7]),
        .Q(s_TData_out[7]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][8] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(l_sample[8]),
        .Q(s_TData_out[8]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][9] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(l_sample[9]),
        .Q(s_TData_out[9]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TID][0] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(\axi_out_fwd[TID][0]_i_1_n_0 ),
        .Q(s_TID_out),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TValid] 
       (.C(m_clk),
        .CE(p_4_in),
        .D(\axi_out_fwd[TValid]_i_2_n_0 ),
        .Q(s_TValid_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EAEAEA2A)) 
    busy_i_1
       (.I0(busy),
        .I1(\serial_counter_reg_n_0_[0] ),
        .I2(\serial_counter_reg_n_0_[1] ),
        .I3(busy),
        .I4(start),
        .I5(\offset[4]_i_1_n_0 ),
        .O(busy_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    busy_reg
       (.C(m_clk),
        .CE(1'b1),
        .D(busy_i_1_n_0),
        .Q(busy),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    is_l_sample_reg
       (.C(m_clk),
        .CE(l_sample_1),
        .D(lr_counter_reg),
        .Q(is_l_sample),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCCCCCCCC080B0808)) 
    l_buffr_i_1
       (.I0(state[1]),
        .I1(l_buffr),
        .I2(state[0]),
        .I3(l_sent_prev),
        .I4(l_sent),
        .I5(m_rst),
        .O(l_buffr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    l_buffr_reg
       (.C(m_clk),
        .CE(1'b1),
        .D(l_buffr_i_1_n_0),
        .Q(l_buffr),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \l_sample[23]_i_1 
       (.I0(\serial_counter_reg_n_0_[0] ),
        .I1(\serial_counter_reg_n_0_[1] ),
        .I2(r_sent),
        .O(l_sample_1));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[0] 
       (.C(m_clk),
        .CE(l_sample_1),
        .D(r_sample[0]),
        .Q(l_sample[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[10] 
       (.C(m_clk),
        .CE(l_sample_1),
        .D(r_sample[10]),
        .Q(l_sample[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[11] 
       (.C(m_clk),
        .CE(l_sample_1),
        .D(r_sample[11]),
        .Q(l_sample[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[12] 
       (.C(m_clk),
        .CE(l_sample_1),
        .D(r_sample[12]),
        .Q(l_sample[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[13] 
       (.C(m_clk),
        .CE(l_sample_1),
        .D(r_sample[13]),
        .Q(l_sample[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[14] 
       (.C(m_clk),
        .CE(l_sample_1),
        .D(r_sample[14]),
        .Q(l_sample[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[15] 
       (.C(m_clk),
        .CE(l_sample_1),
        .D(r_sample[15]),
        .Q(l_sample[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[16] 
       (.C(m_clk),
        .CE(l_sample_1),
        .D(r_sample[16]),
        .Q(l_sample[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[17] 
       (.C(m_clk),
        .CE(l_sample_1),
        .D(r_sample[17]),
        .Q(l_sample[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[18] 
       (.C(m_clk),
        .CE(l_sample_1),
        .D(r_sample[18]),
        .Q(l_sample[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[19] 
       (.C(m_clk),
        .CE(l_sample_1),
        .D(r_sample[19]),
        .Q(l_sample[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[1] 
       (.C(m_clk),
        .CE(l_sample_1),
        .D(r_sample[1]),
        .Q(l_sample[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[20] 
       (.C(m_clk),
        .CE(l_sample_1),
        .D(r_sample[20]),
        .Q(l_sample[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[21] 
       (.C(m_clk),
        .CE(l_sample_1),
        .D(r_sample[21]),
        .Q(l_sample[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[22] 
       (.C(m_clk),
        .CE(l_sample_1),
        .D(r_sample[22]),
        .Q(l_sample[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[23] 
       (.C(m_clk),
        .CE(l_sample_1),
        .D(r_sample[23]),
        .Q(l_sample[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[2] 
       (.C(m_clk),
        .CE(l_sample_1),
        .D(r_sample[2]),
        .Q(l_sample[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[3] 
       (.C(m_clk),
        .CE(l_sample_1),
        .D(r_sample[3]),
        .Q(l_sample[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[4] 
       (.C(m_clk),
        .CE(l_sample_1),
        .D(r_sample[4]),
        .Q(l_sample[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[5] 
       (.C(m_clk),
        .CE(l_sample_1),
        .D(r_sample[5]),
        .Q(l_sample[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[6] 
       (.C(m_clk),
        .CE(l_sample_1),
        .D(r_sample[6]),
        .Q(l_sample[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[7] 
       (.C(m_clk),
        .CE(l_sample_1),
        .D(r_sample[7]),
        .Q(l_sample[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[8] 
       (.C(m_clk),
        .CE(l_sample_1),
        .D(r_sample[8]),
        .Q(l_sample[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[9] 
       (.C(m_clk),
        .CE(l_sample_1),
        .D(r_sample[9]),
        .Q(l_sample[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF80)) 
    l_sent_i_1__0
       (.I0(r_sent),
        .I1(\serial_counter_reg_n_0_[1] ),
        .I2(\serial_counter_reg_n_0_[0] ),
        .I3(l_sent),
        .O(l_sent_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    l_sent_prev_reg
       (.C(m_clk),
        .CE(p_4_in),
        .D(l_sent),
        .Q(l_sent_prev),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    l_sent_reg
       (.C(m_clk),
        .CE(1'b1),
        .D(l_sent_i_1__0_n_0),
        .Q(l_sent),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \lr_counter[0]_i_1__0 
       (.I0(lr_counter_reg__0[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lr_counter[1]_i_1__0 
       (.I0(lr_counter_reg__0[0]),
        .I1(lr_counter_reg__0[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \lr_counter[2]_i_1__0 
       (.I0(lr_counter_reg__0[0]),
        .I1(lr_counter_reg__0[1]),
        .I2(lr_counter_reg__0[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \lr_counter[3]_i_1__0 
       (.I0(lr_counter_reg__0[1]),
        .I1(lr_counter_reg__0[0]),
        .I2(lr_counter_reg__0[2]),
        .I3(lr_counter_reg__0[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \lr_counter[4]_i_1__0 
       (.I0(lr_counter_reg__0[2]),
        .I1(lr_counter_reg__0[0]),
        .I2(lr_counter_reg__0[1]),
        .I3(lr_counter_reg__0[3]),
        .I4(lr_counter_reg__0[4]),
        .O(p_0_in__1[4]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \lr_counter[5]_i_1 
       (.I0(lr_counter_reg__0[4]),
        .I1(lr_counter_reg),
        .I2(\serial_counter_reg_n_0_[1] ),
        .I3(\serial_counter_reg_n_0_[0] ),
        .I4(\lr_counter[5]_i_3__0_n_0 ),
        .O(lr_counter));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \lr_counter[5]_i_2__0 
       (.I0(lr_counter_reg__0[3]),
        .I1(lr_counter_reg__0[1]),
        .I2(lr_counter_reg__0[0]),
        .I3(lr_counter_reg__0[2]),
        .I4(lr_counter_reg__0[4]),
        .I5(lr_counter_reg),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \lr_counter[5]_i_3__0 
       (.I0(lr_counter_reg__0[1]),
        .I1(lr_counter_reg__0[0]),
        .I2(lr_counter_reg__0[3]),
        .I3(lr_counter_reg__0[2]),
        .O(\lr_counter[5]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[0] 
       (.C(m_clk),
        .CE(serial_counter0),
        .D(p_0_in__1[0]),
        .Q(lr_counter_reg__0[0]),
        .R(lr_counter));
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[1] 
       (.C(m_clk),
        .CE(serial_counter0),
        .D(p_0_in__1[1]),
        .Q(lr_counter_reg__0[1]),
        .R(lr_counter));
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[2] 
       (.C(m_clk),
        .CE(serial_counter0),
        .D(p_0_in__1[2]),
        .Q(lr_counter_reg__0[2]),
        .R(lr_counter));
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[3] 
       (.C(m_clk),
        .CE(serial_counter0),
        .D(p_0_in__1[3]),
        .Q(lr_counter_reg__0[3]),
        .R(lr_counter));
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[4] 
       (.C(m_clk),
        .CE(serial_counter0),
        .D(p_0_in__1[4]),
        .Q(lr_counter_reg__0[4]),
        .R(lr_counter));
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[5] 
       (.C(m_clk),
        .CE(serial_counter0),
        .D(p_0_in__1[5]),
        .Q(lr_counter_reg),
        .R(lr_counter));
  LUT3 #(
    .INIT(8'h1E)) 
    \offset[0]_i_1 
       (.I0(busy),
        .I1(start),
        .I2(offset[0]),
        .O(\offset[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAB54)) 
    \offset[1]_i_1 
       (.I0(offset[0]),
        .I1(start),
        .I2(busy),
        .I3(offset[1]),
        .O(\offset[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEF1110)) 
    \offset[2]_i_1 
       (.I0(offset[0]),
        .I1(offset[1]),
        .I2(start),
        .I3(busy),
        .I4(offset[2]),
        .O(\offset[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFF01010100)) 
    \offset[3]_i_1 
       (.I0(offset[1]),
        .I1(offset[0]),
        .I2(offset[2]),
        .I3(start),
        .I4(busy),
        .I5(offset[3]),
        .O(\offset[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \offset[4]_i_1 
       (.I0(\offset[4]_i_3_n_0 ),
        .I1(offset[3]),
        .I2(offset[4]),
        .I3(offset[2]),
        .I4(offset[1]),
        .I5(offset[0]),
        .O(\offset[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00010000)) 
    \offset[4]_i_2 
       (.I0(offset[2]),
        .I1(offset[0]),
        .I2(offset[1]),
        .I3(offset[3]),
        .I4(busy_reg0),
        .I5(offset[4]),
        .O(\offset[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8880)) 
    \offset[4]_i_3 
       (.I0(\serial_counter_reg_n_0_[0] ),
        .I1(\serial_counter_reg_n_0_[1] ),
        .I2(busy),
        .I3(start),
        .O(\offset[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \offset[4]_i_4 
       (.I0(start),
        .I1(busy),
        .O(busy_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[0] 
       (.C(m_clk),
        .CE(serial_counter0),
        .D(\offset[0]_i_1_n_0 ),
        .Q(offset[0]),
        .R(\offset[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[1] 
       (.C(m_clk),
        .CE(serial_counter0),
        .D(\offset[1]_i_1_n_0 ),
        .Q(offset[1]),
        .R(\offset[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[2] 
       (.C(m_clk),
        .CE(serial_counter0),
        .D(\offset[2]_i_1_n_0 ),
        .Q(offset[2]),
        .R(\offset[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDSE #(
    .INIT(1'b1)) 
    \offset_reg[3] 
       (.C(m_clk),
        .CE(serial_counter0),
        .D(\offset[3]_i_1_n_0 ),
        .Q(offset[3]),
        .S(\offset[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDSE #(
    .INIT(1'b1)) 
    \offset_reg[4] 
       (.C(m_clk),
        .CE(serial_counter0),
        .D(\offset[4]_i_2_n_0 ),
        .Q(offset[4]),
        .S(\offset[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \r_sample[0]_i_1 
       (.I0(data_in),
        .I1(\r_sample[7]_i_2_n_0 ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(offset[2]),
        .I5(r_sample[0]),
        .O(\r_sample[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \r_sample[10]_i_1 
       (.I0(data_in),
        .I1(\r_sample[15]_i_2_n_0 ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(offset[2]),
        .I5(r_sample[10]),
        .O(\r_sample[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \r_sample[11]_i_1 
       (.I0(data_in),
        .I1(\r_sample[15]_i_2_n_0 ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(offset[2]),
        .I5(r_sample[11]),
        .O(\r_sample[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \r_sample[12]_i_1 
       (.I0(data_in),
        .I1(\r_sample[15]_i_2_n_0 ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(offset[2]),
        .I5(r_sample[12]),
        .O(\r_sample[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \r_sample[13]_i_1 
       (.I0(data_in),
        .I1(\r_sample[15]_i_2_n_0 ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(offset[2]),
        .I5(r_sample[13]),
        .O(\r_sample[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \r_sample[14]_i_1 
       (.I0(data_in),
        .I1(\r_sample[15]_i_2_n_0 ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(offset[2]),
        .I5(r_sample[14]),
        .O(\r_sample[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \r_sample[15]_i_1 
       (.I0(data_in),
        .I1(\r_sample[15]_i_2_n_0 ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(offset[2]),
        .I5(r_sample[15]),
        .O(\r_sample[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000288888880)) 
    \r_sample[15]_i_2 
       (.I0(\offset[4]_i_3_n_0 ),
        .I1(offset[3]),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(offset[2]),
        .I5(offset[4]),
        .O(\r_sample[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \r_sample[16]_i_1 
       (.I0(data_in),
        .I1(\r_sample[23]_i_2_n_0 ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(offset[2]),
        .I5(r_sample[16]),
        .O(\r_sample[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \r_sample[17]_i_1 
       (.I0(data_in),
        .I1(\r_sample[23]_i_2_n_0 ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(offset[2]),
        .I5(r_sample[17]),
        .O(\r_sample[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \r_sample[18]_i_1 
       (.I0(data_in),
        .I1(\r_sample[23]_i_2_n_0 ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(offset[2]),
        .I5(r_sample[18]),
        .O(\r_sample[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \r_sample[19]_i_1 
       (.I0(data_in),
        .I1(\r_sample[23]_i_2_n_0 ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(offset[2]),
        .I5(r_sample[19]),
        .O(\r_sample[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \r_sample[1]_i_1 
       (.I0(data_in),
        .I1(\r_sample[7]_i_2_n_0 ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(offset[2]),
        .I5(r_sample[1]),
        .O(\r_sample[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \r_sample[20]_i_1 
       (.I0(data_in),
        .I1(\r_sample[23]_i_2_n_0 ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(offset[2]),
        .I5(r_sample[20]),
        .O(\r_sample[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \r_sample[21]_i_1 
       (.I0(data_in),
        .I1(\r_sample[23]_i_2_n_0 ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(offset[2]),
        .I5(r_sample[21]),
        .O(\r_sample[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \r_sample[22]_i_1 
       (.I0(data_in),
        .I1(\r_sample[23]_i_2_n_0 ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(offset[2]),
        .I5(r_sample[22]),
        .O(\r_sample[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \r_sample[23]_i_1 
       (.I0(data_in),
        .I1(\r_sample[23]_i_2_n_0 ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(offset[2]),
        .I5(r_sample[23]),
        .O(\r_sample[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002AAA800000000)) 
    \r_sample[23]_i_2 
       (.I0(\offset[4]_i_3_n_0 ),
        .I1(offset[2]),
        .I2(offset[0]),
        .I3(offset[1]),
        .I4(offset[3]),
        .I5(offset[4]),
        .O(\r_sample[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \r_sample[2]_i_1 
       (.I0(data_in),
        .I1(\r_sample[7]_i_2_n_0 ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(offset[2]),
        .I5(r_sample[2]),
        .O(\r_sample[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \r_sample[3]_i_1 
       (.I0(data_in),
        .I1(\r_sample[7]_i_2_n_0 ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(offset[2]),
        .I5(r_sample[3]),
        .O(\r_sample[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \r_sample[4]_i_1 
       (.I0(data_in),
        .I1(\r_sample[7]_i_2_n_0 ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(offset[2]),
        .I5(r_sample[4]),
        .O(\r_sample[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \r_sample[5]_i_1 
       (.I0(data_in),
        .I1(\r_sample[7]_i_2_n_0 ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(offset[2]),
        .I5(r_sample[5]),
        .O(\r_sample[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \r_sample[6]_i_1 
       (.I0(data_in),
        .I1(\r_sample[7]_i_2_n_0 ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(offset[2]),
        .I5(r_sample[6]),
        .O(\r_sample[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \r_sample[7]_i_1 
       (.I0(data_in),
        .I1(\r_sample[7]_i_2_n_0 ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(offset[2]),
        .I5(r_sample[7]),
        .O(\r_sample[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000002AAA8)) 
    \r_sample[7]_i_2 
       (.I0(\offset[4]_i_3_n_0 ),
        .I1(offset[2]),
        .I2(offset[0]),
        .I3(offset[1]),
        .I4(offset[3]),
        .I5(offset[4]),
        .O(\r_sample[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \r_sample[8]_i_1 
       (.I0(data_in),
        .I1(\r_sample[15]_i_2_n_0 ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(offset[2]),
        .I5(r_sample[8]),
        .O(\r_sample[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \r_sample[9]_i_1 
       (.I0(data_in),
        .I1(\r_sample[15]_i_2_n_0 ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(offset[2]),
        .I5(r_sample[9]),
        .O(\r_sample[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[0] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\r_sample[0]_i_1_n_0 ),
        .Q(r_sample[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[10] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\r_sample[10]_i_1_n_0 ),
        .Q(r_sample[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[11] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\r_sample[11]_i_1_n_0 ),
        .Q(r_sample[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[12] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\r_sample[12]_i_1_n_0 ),
        .Q(r_sample[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[13] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\r_sample[13]_i_1_n_0 ),
        .Q(r_sample[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[14] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\r_sample[14]_i_1_n_0 ),
        .Q(r_sample[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[15] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\r_sample[15]_i_1_n_0 ),
        .Q(r_sample[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[16] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\r_sample[16]_i_1_n_0 ),
        .Q(r_sample[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[17] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\r_sample[17]_i_1_n_0 ),
        .Q(r_sample[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[18] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\r_sample[18]_i_1_n_0 ),
        .Q(r_sample[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[19] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\r_sample[19]_i_1_n_0 ),
        .Q(r_sample[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[1] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\r_sample[1]_i_1_n_0 ),
        .Q(r_sample[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[20] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\r_sample[20]_i_1_n_0 ),
        .Q(r_sample[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[21] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\r_sample[21]_i_1_n_0 ),
        .Q(r_sample[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[22] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\r_sample[22]_i_1_n_0 ),
        .Q(r_sample[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[23] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\r_sample[23]_i_1_n_0 ),
        .Q(r_sample[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[2] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\r_sample[2]_i_1_n_0 ),
        .Q(r_sample[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[3] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\r_sample[3]_i_1_n_0 ),
        .Q(r_sample[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[4] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\r_sample[4]_i_1_n_0 ),
        .Q(r_sample[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[5] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\r_sample[5]_i_1_n_0 ),
        .Q(r_sample[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[6] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\r_sample[6]_i_1_n_0 ),
        .Q(r_sample[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[7] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\r_sample[7]_i_1_n_0 ),
        .Q(r_sample[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[8] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\r_sample[8]_i_1_n_0 ),
        .Q(r_sample[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[9] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\r_sample[9]_i_1_n_0 ),
        .Q(r_sample[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hE0FFFFFFE0000000)) 
    r_sent_i_1
       (.I0(start),
        .I1(busy),
        .I2(eqOp),
        .I3(\serial_counter_reg_n_0_[1] ),
        .I4(\serial_counter_reg_n_0_[0] ),
        .I5(r_sent),
        .O(r_sent_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000002)) 
    r_sent_i_2__0
       (.I0(offset[0]),
        .I1(offset[1]),
        .I2(offset[2]),
        .I3(offset[4]),
        .I4(offset[3]),
        .O(eqOp));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    r_sent_reg
       (.C(m_clk),
        .CE(1'b1),
        .D(r_sent_i_1_n_0),
        .Q(r_sent),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \serial_counter[0]_i_1__0 
       (.I0(\serial_counter_reg_n_0_[0] ),
        .O(p_0_in[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \serial_counter[1]_i_1 
       (.I0(\serial_counter_reg_n_0_[1] ),
        .I1(\serial_counter_reg_n_0_[0] ),
        .O(serial_counter0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \serial_counter[1]_i_2__0 
       (.I0(\serial_counter_reg_n_0_[0] ),
        .I1(\serial_counter_reg_n_0_[1] ),
        .O(p_0_in[1]));
  FDRE #(
    .INIT(1'b0)) 
    \serial_counter_reg[0] 
       (.C(m_clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\serial_counter_reg_n_0_[0] ),
        .R(serial_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \serial_counter_reg[1] 
       (.C(m_clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(\serial_counter_reg_n_0_[1] ),
        .R(serial_counter0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    start_i_1
       (.I0(lr_counter_reg__0[0]),
        .I1(lr_counter_reg__0[1]),
        .I2(lr_counter_reg__0[2]),
        .I3(lr_counter_reg__0[4]),
        .I4(lr_counter_reg__0[3]),
        .O(start_reg0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    start_reg
       (.C(m_clk),
        .CE(1'b1),
        .D(start_reg0),
        .Q(start),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1310)) 
    \state[0]_i_1 
       (.I0(s_TReady_out),
        .I1(state[1]),
        .I2(state[0]),
        .I3(l_buffr),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \state[1]_i_1 
       (.I0(state[0]),
        .I1(s_TReady_out),
        .I2(state[1]),
        .O(p_0_in__0[1]));
  (* FSM_ENCODED_STATES = "e_idle:00,e_data:01,e_wait:10" *) 
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(m_clk),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(state[0]),
        .R(m_rst));
  (* FSM_ENCODED_STATES = "e_idle:00,e_data:01,e_wait:10" *) 
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(m_clk),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(state[1]),
        .R(m_rst));
endmodule

(* ORIG_REF_NAME = "I2S_trans" *) 
module design_1_I2S_wrapper_0_0_I2S_trans
   (data_out,
    m_axis_tready,
    busy_reg_0,
    Q,
    m_clk,
    p_4_in,
    m_rst,
    m_axis_tid,
    m_axis_tvalid,
    D,
    E);
  output data_out;
  output m_axis_tready;
  output busy_reg_0;
  output [0:0]Q;
  input m_clk;
  input p_4_in;
  input m_rst;
  input [1:0]m_axis_tid;
  input m_axis_tvalid;
  input [23:0]D;
  input [0:0]E;

  wire [23:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [0:0]Q;
  wire \axi_in_bwd[TReady]_i_1_n_0 ;
  wire busy_i_1__0_n_0;
  wire busy_reg_0;
  wire data_out;
  wire data_out0_out;
  wire data_out_i_10_n_0;
  wire data_out_i_11_n_0;
  wire data_out_i_12_n_0;
  wire data_out_i_13_n_0;
  wire data_out_i_14_n_0;
  wire data_out_i_15_n_0;
  wire data_out_i_16_n_0;
  wire data_out_i_17_n_0;
  wire data_out_i_18_n_0;
  wire data_out_i_3_n_0;
  wire data_out_i_4_n_0;
  wire data_out_i_5_n_0;
  wire data_out_i_6_n_0;
  wire data_out_i_7_n_0;
  wire data_out_i_8_n_0;
  wire data_out_i_9_n_0;
  wire eqOp6_in;
  wire l_buffr_i_1__0_n_0;
  wire l_buffr_i_2_n_0;
  wire l_buffr_i_3_n_0;
  wire l_buffr_reg_n_0;
  wire \l_sample_reg_n_0_[0] ;
  wire \l_sample_reg_n_0_[10] ;
  wire \l_sample_reg_n_0_[11] ;
  wire \l_sample_reg_n_0_[12] ;
  wire \l_sample_reg_n_0_[13] ;
  wire \l_sample_reg_n_0_[14] ;
  wire \l_sample_reg_n_0_[15] ;
  wire \l_sample_reg_n_0_[16] ;
  wire \l_sample_reg_n_0_[17] ;
  wire \l_sample_reg_n_0_[18] ;
  wire \l_sample_reg_n_0_[19] ;
  wire \l_sample_reg_n_0_[1] ;
  wire \l_sample_reg_n_0_[20] ;
  wire \l_sample_reg_n_0_[21] ;
  wire \l_sample_reg_n_0_[22] ;
  wire \l_sample_reg_n_0_[23] ;
  wire \l_sample_reg_n_0_[2] ;
  wire \l_sample_reg_n_0_[3] ;
  wire \l_sample_reg_n_0_[4] ;
  wire \l_sample_reg_n_0_[5] ;
  wire \l_sample_reg_n_0_[6] ;
  wire \l_sample_reg_n_0_[7] ;
  wire \l_sample_reg_n_0_[8] ;
  wire \l_sample_reg_n_0_[9] ;
  wire l_sent;
  wire l_sent_i_1_n_0;
  wire lr_counter;
  wire \lr_counter[5]_i_3__1_n_0 ;
  wire [5:0]lr_counter_reg;
  wire [1:0]m_axis_tid;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire m_clk;
  wire m_rst;
  wire \offset[0]_i_1__0_n_0 ;
  wire \offset[1]_i_1__0_n_0 ;
  wire \offset[2]_i_1__0_n_0 ;
  wire \offset[3]_i_1__0_n_0 ;
  wire \offset[4]_i_1__0_n_0 ;
  wire \offset[4]_i_2__0_n_0 ;
  wire \offset[4]_i_3__0_n_0 ;
  wire [4:0]offset_reg;
  wire [5:0]p_0_in__2;
  wire p_4_in;
  wire r_buffr_i_1_n_0;
  wire r_buffr_i_2_n_0;
  wire r_buffr_reg_n_0;
  wire \r_sample[23]_i_1_n_0 ;
  wire \r_sample_reg_n_0_[0] ;
  wire \r_sample_reg_n_0_[10] ;
  wire \r_sample_reg_n_0_[11] ;
  wire \r_sample_reg_n_0_[12] ;
  wire \r_sample_reg_n_0_[13] ;
  wire \r_sample_reg_n_0_[14] ;
  wire \r_sample_reg_n_0_[15] ;
  wire \r_sample_reg_n_0_[16] ;
  wire \r_sample_reg_n_0_[17] ;
  wire \r_sample_reg_n_0_[18] ;
  wire \r_sample_reg_n_0_[19] ;
  wire \r_sample_reg_n_0_[1] ;
  wire \r_sample_reg_n_0_[20] ;
  wire \r_sample_reg_n_0_[21] ;
  wire \r_sample_reg_n_0_[22] ;
  wire \r_sample_reg_n_0_[23] ;
  wire \r_sample_reg_n_0_[2] ;
  wire \r_sample_reg_n_0_[3] ;
  wire \r_sample_reg_n_0_[4] ;
  wire \r_sample_reg_n_0_[5] ;
  wire \r_sample_reg_n_0_[6] ;
  wire \r_sample_reg_n_0_[7] ;
  wire \r_sample_reg_n_0_[8] ;
  wire \r_sample_reg_n_0_[9] ;
  wire r_sent;
  wire r_sent_reg_n_0;
  wire [23:0]sample;
  wire \sample[23]_i_1_n_0 ;
  wire serial_counter0;
  wire \serial_counter[0]_i_1__1_n_0 ;
  wire \serial_counter[1]_i_1__1_n_0 ;
  wire \serial_counter_reg_n_0_[0] ;
  wire \serial_counter_reg_n_0_[1] ;
  wire start;
  wire start0;

  LUT6 #(
    .INIT(64'hEAEAFFEAFFEAFFEA)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(m_axis_tvalid),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(r_buffr_reg_n_0),
        .I5(l_buffr_reg_n_0),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(Q),
        .I1(busy_reg_0),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "e_idle:001,e_data:010,e_wait:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(m_clk),
        .CE(\FSM_onehot_state[2]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(m_rst));
  (* FSM_ENCODED_STATES = "e_idle:001,e_data:010,e_wait:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(m_clk),
        .CE(\FSM_onehot_state[2]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[0] ),
        .Q(Q),
        .R(m_rst));
  (* FSM_ENCODED_STATES = "e_idle:001,e_data:010,e_wait:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(m_clk),
        .CE(\FSM_onehot_state[2]_i_1_n_0 ),
        .D(Q),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(m_rst));
  LUT5 #(
    .INIT(32'h70FF7070)) 
    \axi_in_bwd[TReady]_i_1 
       (.I0(r_buffr_reg_n_0),
        .I1(l_buffr_reg_n_0),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(m_axis_tvalid),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\axi_in_bwd[TReady]_i_1_n_0 ));
  FDRE \axi_in_bwd_reg[TReady] 
       (.C(m_clk),
        .CE(p_4_in),
        .D(\axi_in_bwd[TReady]_i_1_n_0 ),
        .Q(m_axis_tready),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h5CCC4CCC)) 
    busy_i_1__0
       (.I0(eqOp6_in),
        .I1(busy_reg_0),
        .I2(\serial_counter_reg_n_0_[0] ),
        .I3(\serial_counter_reg_n_0_[1] ),
        .I4(start),
        .O(busy_i_1__0_n_0));
  (* mark_debug = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    busy_reg
       (.C(m_clk),
        .CE(1'b1),
        .D(busy_i_1__0_n_0),
        .Q(busy_reg_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    data_out_i_1
       (.I0(\serial_counter_reg_n_0_[1] ),
        .I1(\serial_counter_reg_n_0_[0] ),
        .O(serial_counter0));
  LUT6 #(
    .INIT(64'hCFAFC0AFCFA0C0A0)) 
    data_out_i_10
       (.I0(\r_sample_reg_n_0_[20] ),
        .I1(\r_sample_reg_n_0_[22] ),
        .I2(offset_reg[0]),
        .I3(offset_reg[1]),
        .I4(\r_sample_reg_n_0_[21] ),
        .I5(\r_sample_reg_n_0_[23] ),
        .O(data_out_i_10_n_0));
  LUT6 #(
    .INIT(64'hCFAFC0AFCFA0C0A0)) 
    data_out_i_11
       (.I0(\l_sample_reg_n_0_[4] ),
        .I1(\l_sample_reg_n_0_[6] ),
        .I2(offset_reg[0]),
        .I3(offset_reg[1]),
        .I4(\l_sample_reg_n_0_[5] ),
        .I5(\l_sample_reg_n_0_[7] ),
        .O(data_out_i_11_n_0));
  LUT6 #(
    .INIT(64'hCFAFC0AFCFA0C0A0)) 
    data_out_i_12
       (.I0(\l_sample_reg_n_0_[12] ),
        .I1(\l_sample_reg_n_0_[14] ),
        .I2(offset_reg[0]),
        .I3(offset_reg[1]),
        .I4(\l_sample_reg_n_0_[13] ),
        .I5(\l_sample_reg_n_0_[15] ),
        .O(data_out_i_12_n_0));
  LUT6 #(
    .INIT(64'hCFAFC0AFCFA0C0A0)) 
    data_out_i_13
       (.I0(\l_sample_reg_n_0_[0] ),
        .I1(\l_sample_reg_n_0_[2] ),
        .I2(offset_reg[0]),
        .I3(offset_reg[1]),
        .I4(\l_sample_reg_n_0_[1] ),
        .I5(\l_sample_reg_n_0_[3] ),
        .O(data_out_i_13_n_0));
  LUT6 #(
    .INIT(64'hCFAFC0AFCFA0C0A0)) 
    data_out_i_14
       (.I0(\l_sample_reg_n_0_[8] ),
        .I1(\l_sample_reg_n_0_[10] ),
        .I2(offset_reg[0]),
        .I3(offset_reg[1]),
        .I4(\l_sample_reg_n_0_[9] ),
        .I5(\l_sample_reg_n_0_[11] ),
        .O(data_out_i_14_n_0));
  LUT6 #(
    .INIT(64'hCFAFC0AFCFA0C0A0)) 
    data_out_i_15
       (.I0(\r_sample_reg_n_0_[4] ),
        .I1(\r_sample_reg_n_0_[6] ),
        .I2(offset_reg[0]),
        .I3(offset_reg[1]),
        .I4(\r_sample_reg_n_0_[5] ),
        .I5(\r_sample_reg_n_0_[7] ),
        .O(data_out_i_15_n_0));
  LUT6 #(
    .INIT(64'hCFAFC0AFCFA0C0A0)) 
    data_out_i_16
       (.I0(\r_sample_reg_n_0_[12] ),
        .I1(\r_sample_reg_n_0_[14] ),
        .I2(offset_reg[0]),
        .I3(offset_reg[1]),
        .I4(\r_sample_reg_n_0_[13] ),
        .I5(\r_sample_reg_n_0_[15] ),
        .O(data_out_i_16_n_0));
  LUT6 #(
    .INIT(64'hCFAFC0AFCFA0C0A0)) 
    data_out_i_17
       (.I0(\r_sample_reg_n_0_[0] ),
        .I1(\r_sample_reg_n_0_[2] ),
        .I2(offset_reg[0]),
        .I3(offset_reg[1]),
        .I4(\r_sample_reg_n_0_[1] ),
        .I5(\r_sample_reg_n_0_[3] ),
        .O(data_out_i_17_n_0));
  LUT6 #(
    .INIT(64'hCFAFC0AFCFA0C0A0)) 
    data_out_i_18
       (.I0(\r_sample_reg_n_0_[8] ),
        .I1(\r_sample_reg_n_0_[10] ),
        .I2(offset_reg[0]),
        .I3(offset_reg[1]),
        .I4(\r_sample_reg_n_0_[9] ),
        .I5(\r_sample_reg_n_0_[11] ),
        .O(data_out_i_18_n_0));
  LUT5 #(
    .INIT(32'hAAA0CCC0)) 
    data_out_i_2
       (.I0(data_out_i_3_n_0),
        .I1(data_out_i_4_n_0),
        .I2(busy_reg_0),
        .I3(start),
        .I4(lr_counter_reg[5]),
        .O(data_out0_out));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    data_out_i_3
       (.I0(data_out_i_5_n_0),
        .I1(data_out_i_6_n_0),
        .I2(data_out_i_7_n_0),
        .I3(\offset[4]_i_3__0_n_0 ),
        .I4(\offset[2]_i_1__0_n_0 ),
        .O(data_out_i_3_n_0));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    data_out_i_4
       (.I0(data_out_i_8_n_0),
        .I1(data_out_i_9_n_0),
        .I2(data_out_i_10_n_0),
        .I3(\offset[4]_i_3__0_n_0 ),
        .I4(\offset[2]_i_1__0_n_0 ),
        .O(data_out_i_4_n_0));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    data_out_i_5
       (.I0(data_out_i_11_n_0),
        .I1(data_out_i_12_n_0),
        .I2(\offset[2]_i_1__0_n_0 ),
        .I3(\offset[3]_i_1__0_n_0 ),
        .I4(data_out_i_13_n_0),
        .I5(data_out_i_14_n_0),
        .O(data_out_i_5_n_0));
  LUT6 #(
    .INIT(64'hCFAFC0AFCFA0C0A0)) 
    data_out_i_6
       (.I0(\l_sample_reg_n_0_[16] ),
        .I1(\l_sample_reg_n_0_[18] ),
        .I2(offset_reg[0]),
        .I3(offset_reg[1]),
        .I4(\l_sample_reg_n_0_[17] ),
        .I5(\l_sample_reg_n_0_[19] ),
        .O(data_out_i_6_n_0));
  LUT6 #(
    .INIT(64'hCFAFC0AFCFA0C0A0)) 
    data_out_i_7
       (.I0(\l_sample_reg_n_0_[20] ),
        .I1(\l_sample_reg_n_0_[22] ),
        .I2(offset_reg[0]),
        .I3(offset_reg[1]),
        .I4(\l_sample_reg_n_0_[21] ),
        .I5(\l_sample_reg_n_0_[23] ),
        .O(data_out_i_7_n_0));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    data_out_i_8
       (.I0(data_out_i_15_n_0),
        .I1(data_out_i_16_n_0),
        .I2(\offset[2]_i_1__0_n_0 ),
        .I3(\offset[3]_i_1__0_n_0 ),
        .I4(data_out_i_17_n_0),
        .I5(data_out_i_18_n_0),
        .O(data_out_i_8_n_0));
  LUT6 #(
    .INIT(64'hCFAFC0AFCFA0C0A0)) 
    data_out_i_9
       (.I0(\r_sample_reg_n_0_[16] ),
        .I1(\r_sample_reg_n_0_[18] ),
        .I2(offset_reg[0]),
        .I3(offset_reg[1]),
        .I4(\r_sample_reg_n_0_[17] ),
        .I5(\r_sample_reg_n_0_[19] ),
        .O(data_out_i_9_n_0));
  FDRE data_out_reg
       (.C(m_clk),
        .CE(serial_counter0),
        .D(data_out0_out),
        .Q(data_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFF700F0)) 
    l_buffr_i_1__0
       (.I0(l_buffr_i_2_n_0),
        .I1(l_sent),
        .I2(l_buffr_i_3_n_0),
        .I3(m_rst),
        .I4(l_buffr_reg_n_0),
        .O(l_buffr_i_1__0_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    l_buffr_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(Q),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(l_buffr_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    l_buffr_i_3
       (.I0(busy_reg_0),
        .I1(Q),
        .I2(m_axis_tid[0]),
        .I3(m_axis_tid[1]),
        .O(l_buffr_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    l_buffr_reg
       (.C(m_clk),
        .CE(1'b1),
        .D(l_buffr_i_1__0_n_0),
        .Q(l_buffr_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[0] 
       (.C(m_clk),
        .CE(E),
        .D(sample[0]),
        .Q(\l_sample_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[10] 
       (.C(m_clk),
        .CE(E),
        .D(sample[10]),
        .Q(\l_sample_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[11] 
       (.C(m_clk),
        .CE(E),
        .D(sample[11]),
        .Q(\l_sample_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[12] 
       (.C(m_clk),
        .CE(E),
        .D(sample[12]),
        .Q(\l_sample_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[13] 
       (.C(m_clk),
        .CE(E),
        .D(sample[13]),
        .Q(\l_sample_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[14] 
       (.C(m_clk),
        .CE(E),
        .D(sample[14]),
        .Q(\l_sample_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[15] 
       (.C(m_clk),
        .CE(E),
        .D(sample[15]),
        .Q(\l_sample_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[16] 
       (.C(m_clk),
        .CE(E),
        .D(sample[16]),
        .Q(\l_sample_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[17] 
       (.C(m_clk),
        .CE(E),
        .D(sample[17]),
        .Q(\l_sample_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[18] 
       (.C(m_clk),
        .CE(E),
        .D(sample[18]),
        .Q(\l_sample_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[19] 
       (.C(m_clk),
        .CE(E),
        .D(sample[19]),
        .Q(\l_sample_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[1] 
       (.C(m_clk),
        .CE(E),
        .D(sample[1]),
        .Q(\l_sample_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[20] 
       (.C(m_clk),
        .CE(E),
        .D(sample[20]),
        .Q(\l_sample_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[21] 
       (.C(m_clk),
        .CE(E),
        .D(sample[21]),
        .Q(\l_sample_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[22] 
       (.C(m_clk),
        .CE(E),
        .D(sample[22]),
        .Q(\l_sample_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[23] 
       (.C(m_clk),
        .CE(E),
        .D(sample[23]),
        .Q(\l_sample_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[2] 
       (.C(m_clk),
        .CE(E),
        .D(sample[2]),
        .Q(\l_sample_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[3] 
       (.C(m_clk),
        .CE(E),
        .D(sample[3]),
        .Q(\l_sample_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[4] 
       (.C(m_clk),
        .CE(E),
        .D(sample[4]),
        .Q(\l_sample_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[5] 
       (.C(m_clk),
        .CE(E),
        .D(sample[5]),
        .Q(\l_sample_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[6] 
       (.C(m_clk),
        .CE(E),
        .D(sample[6]),
        .Q(\l_sample_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[7] 
       (.C(m_clk),
        .CE(E),
        .D(sample[7]),
        .Q(\l_sample_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[8] 
       (.C(m_clk),
        .CE(E),
        .D(sample[8]),
        .Q(\l_sample_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[9] 
       (.C(m_clk),
        .CE(E),
        .D(sample[9]),
        .Q(\l_sample_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hE000FFFFE0000000)) 
    l_sent_i_1
       (.I0(start),
        .I1(busy_reg_0),
        .I2(eqOp6_in),
        .I3(lr_counter_reg[5]),
        .I4(serial_counter0),
        .I5(l_sent),
        .O(l_sent_i_1_n_0));
  (* mark_debug = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    l_sent_reg
       (.C(m_clk),
        .CE(1'b1),
        .D(l_sent_i_1_n_0),
        .Q(l_sent),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \lr_counter[0]_i_1__1 
       (.I0(lr_counter_reg[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lr_counter[1]_i_1__1 
       (.I0(lr_counter_reg[0]),
        .I1(lr_counter_reg[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \lr_counter[2]_i_1__1 
       (.I0(lr_counter_reg[0]),
        .I1(lr_counter_reg[1]),
        .I2(lr_counter_reg[2]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \lr_counter[3]_i_1__1 
       (.I0(lr_counter_reg[1]),
        .I1(lr_counter_reg[0]),
        .I2(lr_counter_reg[2]),
        .I3(lr_counter_reg[3]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \lr_counter[4]_i_1__1 
       (.I0(lr_counter_reg[2]),
        .I1(lr_counter_reg[0]),
        .I2(lr_counter_reg[1]),
        .I3(lr_counter_reg[3]),
        .I4(lr_counter_reg[4]),
        .O(p_0_in__2[4]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \lr_counter[5]_i_1__0 
       (.I0(lr_counter_reg[4]),
        .I1(lr_counter_reg[5]),
        .I2(\serial_counter_reg_n_0_[1] ),
        .I3(\serial_counter_reg_n_0_[0] ),
        .I4(\lr_counter[5]_i_3__1_n_0 ),
        .O(lr_counter));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \lr_counter[5]_i_2__1 
       (.I0(lr_counter_reg[3]),
        .I1(lr_counter_reg[1]),
        .I2(lr_counter_reg[0]),
        .I3(lr_counter_reg[2]),
        .I4(lr_counter_reg[4]),
        .I5(lr_counter_reg[5]),
        .O(p_0_in__2[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \lr_counter[5]_i_3__1 
       (.I0(lr_counter_reg[1]),
        .I1(lr_counter_reg[0]),
        .I2(lr_counter_reg[3]),
        .I3(lr_counter_reg[2]),
        .O(\lr_counter[5]_i_3__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[0] 
       (.C(m_clk),
        .CE(serial_counter0),
        .D(p_0_in__2[0]),
        .Q(lr_counter_reg[0]),
        .R(lr_counter));
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[1] 
       (.C(m_clk),
        .CE(serial_counter0),
        .D(p_0_in__2[1]),
        .Q(lr_counter_reg[1]),
        .R(lr_counter));
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[2] 
       (.C(m_clk),
        .CE(serial_counter0),
        .D(p_0_in__2[2]),
        .Q(lr_counter_reg[2]),
        .R(lr_counter));
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[3] 
       (.C(m_clk),
        .CE(serial_counter0),
        .D(p_0_in__2[3]),
        .Q(lr_counter_reg[3]),
        .R(lr_counter));
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[4] 
       (.C(m_clk),
        .CE(serial_counter0),
        .D(p_0_in__2[4]),
        .Q(lr_counter_reg[4]),
        .R(lr_counter));
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[5] 
       (.C(m_clk),
        .CE(serial_counter0),
        .D(p_0_in__2[5]),
        .Q(lr_counter_reg[5]),
        .R(lr_counter));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \offset[0]_i_1__0 
       (.I0(offset_reg[0]),
        .O(\offset[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \offset[1]_i_1__0 
       (.I0(offset_reg[1]),
        .I1(offset_reg[0]),
        .O(\offset[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \offset[2]_i_1__0 
       (.I0(offset_reg[1]),
        .I1(offset_reg[0]),
        .I2(offset_reg[2]),
        .O(\offset[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \offset[3]_i_1__0 
       (.I0(offset_reg[2]),
        .I1(offset_reg[0]),
        .I2(offset_reg[1]),
        .I3(offset_reg[3]),
        .O(\offset[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \offset[4]_i_1__0 
       (.I0(\offset[4]_i_2__0_n_0 ),
        .I1(offset_reg[3]),
        .I2(offset_reg[4]),
        .I3(offset_reg[2]),
        .I4(offset_reg[1]),
        .I5(offset_reg[0]),
        .O(\offset[4]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h8880)) 
    \offset[4]_i_2__0 
       (.I0(\serial_counter_reg_n_0_[0] ),
        .I1(\serial_counter_reg_n_0_[1] ),
        .I2(busy_reg_0),
        .I3(start),
        .O(\offset[4]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \offset[4]_i_3__0 
       (.I0(offset_reg[3]),
        .I1(offset_reg[1]),
        .I2(offset_reg[0]),
        .I3(offset_reg[2]),
        .I4(offset_reg[4]),
        .O(\offset[4]_i_3__0_n_0 ));
  (* mark_debug = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[0] 
       (.C(m_clk),
        .CE(\offset[4]_i_2__0_n_0 ),
        .D(\offset[0]_i_1__0_n_0 ),
        .Q(offset_reg[0]),
        .R(1'b0));
  (* mark_debug = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[1] 
       (.C(m_clk),
        .CE(\offset[4]_i_2__0_n_0 ),
        .D(\offset[1]_i_1__0_n_0 ),
        .Q(offset_reg[1]),
        .R(1'b0));
  (* mark_debug = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[2] 
       (.C(m_clk),
        .CE(\offset[4]_i_2__0_n_0 ),
        .D(\offset[2]_i_1__0_n_0 ),
        .Q(offset_reg[2]),
        .R(\offset[4]_i_1__0_n_0 ));
  (* mark_debug = "false" *) 
  FDSE #(
    .INIT(1'b1)) 
    \offset_reg[3] 
       (.C(m_clk),
        .CE(\offset[4]_i_2__0_n_0 ),
        .D(\offset[3]_i_1__0_n_0 ),
        .Q(offset_reg[3]),
        .S(\offset[4]_i_1__0_n_0 ));
  (* mark_debug = "false" *) 
  FDSE #(
    .INIT(1'b1)) 
    \offset_reg[4] 
       (.C(m_clk),
        .CE(\offset[4]_i_2__0_n_0 ),
        .D(\offset[4]_i_3__0_n_0 ),
        .Q(offset_reg[4]),
        .S(\offset[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFF700F0)) 
    r_buffr_i_1
       (.I0(l_buffr_i_2_n_0),
        .I1(r_sent_reg_n_0),
        .I2(r_buffr_i_2_n_0),
        .I3(m_rst),
        .I4(r_buffr_reg_n_0),
        .O(r_buffr_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    r_buffr_i_2
       (.I0(Q),
        .I1(busy_reg_0),
        .I2(m_axis_tid[1]),
        .I3(m_axis_tid[0]),
        .O(r_buffr_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_buffr_reg
       (.C(m_clk),
        .CE(1'b1),
        .D(r_buffr_i_1_n_0),
        .Q(r_buffr_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00020000)) 
    \r_sample[23]_i_1 
       (.I0(Q),
        .I1(busy_reg_0),
        .I2(m_rst),
        .I3(m_axis_tid[1]),
        .I4(m_axis_tid[0]),
        .O(\r_sample[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[0] 
       (.C(m_clk),
        .CE(\r_sample[23]_i_1_n_0 ),
        .D(sample[0]),
        .Q(\r_sample_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[10] 
       (.C(m_clk),
        .CE(\r_sample[23]_i_1_n_0 ),
        .D(sample[10]),
        .Q(\r_sample_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[11] 
       (.C(m_clk),
        .CE(\r_sample[23]_i_1_n_0 ),
        .D(sample[11]),
        .Q(\r_sample_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[12] 
       (.C(m_clk),
        .CE(\r_sample[23]_i_1_n_0 ),
        .D(sample[12]),
        .Q(\r_sample_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[13] 
       (.C(m_clk),
        .CE(\r_sample[23]_i_1_n_0 ),
        .D(sample[13]),
        .Q(\r_sample_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[14] 
       (.C(m_clk),
        .CE(\r_sample[23]_i_1_n_0 ),
        .D(sample[14]),
        .Q(\r_sample_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[15] 
       (.C(m_clk),
        .CE(\r_sample[23]_i_1_n_0 ),
        .D(sample[15]),
        .Q(\r_sample_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[16] 
       (.C(m_clk),
        .CE(\r_sample[23]_i_1_n_0 ),
        .D(sample[16]),
        .Q(\r_sample_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[17] 
       (.C(m_clk),
        .CE(\r_sample[23]_i_1_n_0 ),
        .D(sample[17]),
        .Q(\r_sample_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[18] 
       (.C(m_clk),
        .CE(\r_sample[23]_i_1_n_0 ),
        .D(sample[18]),
        .Q(\r_sample_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[19] 
       (.C(m_clk),
        .CE(\r_sample[23]_i_1_n_0 ),
        .D(sample[19]),
        .Q(\r_sample_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[1] 
       (.C(m_clk),
        .CE(\r_sample[23]_i_1_n_0 ),
        .D(sample[1]),
        .Q(\r_sample_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[20] 
       (.C(m_clk),
        .CE(\r_sample[23]_i_1_n_0 ),
        .D(sample[20]),
        .Q(\r_sample_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[21] 
       (.C(m_clk),
        .CE(\r_sample[23]_i_1_n_0 ),
        .D(sample[21]),
        .Q(\r_sample_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[22] 
       (.C(m_clk),
        .CE(\r_sample[23]_i_1_n_0 ),
        .D(sample[22]),
        .Q(\r_sample_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[23] 
       (.C(m_clk),
        .CE(\r_sample[23]_i_1_n_0 ),
        .D(sample[23]),
        .Q(\r_sample_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[2] 
       (.C(m_clk),
        .CE(\r_sample[23]_i_1_n_0 ),
        .D(sample[2]),
        .Q(\r_sample_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[3] 
       (.C(m_clk),
        .CE(\r_sample[23]_i_1_n_0 ),
        .D(sample[3]),
        .Q(\r_sample_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[4] 
       (.C(m_clk),
        .CE(\r_sample[23]_i_1_n_0 ),
        .D(sample[4]),
        .Q(\r_sample_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[5] 
       (.C(m_clk),
        .CE(\r_sample[23]_i_1_n_0 ),
        .D(sample[5]),
        .Q(\r_sample_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[6] 
       (.C(m_clk),
        .CE(\r_sample[23]_i_1_n_0 ),
        .D(sample[6]),
        .Q(\r_sample_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[7] 
       (.C(m_clk),
        .CE(\r_sample[23]_i_1_n_0 ),
        .D(sample[7]),
        .Q(\r_sample_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[8] 
       (.C(m_clk),
        .CE(\r_sample[23]_i_1_n_0 ),
        .D(sample[8]),
        .Q(\r_sample_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[9] 
       (.C(m_clk),
        .CE(\r_sample[23]_i_1_n_0 ),
        .D(sample[9]),
        .Q(\r_sample_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    r_sent_i_1__0
       (.I0(start),
        .I1(busy_reg_0),
        .I2(eqOp6_in),
        .I3(lr_counter_reg[5]),
        .O(r_sent));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    r_sent_i_2
       (.I0(offset_reg[0]),
        .I1(offset_reg[1]),
        .I2(offset_reg[2]),
        .I3(offset_reg[4]),
        .I4(offset_reg[3]),
        .O(eqOp6_in));
  (* mark_debug = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    r_sent_reg
       (.C(m_clk),
        .CE(serial_counter0),
        .D(r_sent),
        .Q(r_sent_reg_n_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \sample[23]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(m_axis_tvalid),
        .I2(m_rst),
        .O(\sample[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[0] 
       (.C(m_clk),
        .CE(\sample[23]_i_1_n_0 ),
        .D(D[0]),
        .Q(sample[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[10] 
       (.C(m_clk),
        .CE(\sample[23]_i_1_n_0 ),
        .D(D[10]),
        .Q(sample[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[11] 
       (.C(m_clk),
        .CE(\sample[23]_i_1_n_0 ),
        .D(D[11]),
        .Q(sample[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[12] 
       (.C(m_clk),
        .CE(\sample[23]_i_1_n_0 ),
        .D(D[12]),
        .Q(sample[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[13] 
       (.C(m_clk),
        .CE(\sample[23]_i_1_n_0 ),
        .D(D[13]),
        .Q(sample[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[14] 
       (.C(m_clk),
        .CE(\sample[23]_i_1_n_0 ),
        .D(D[14]),
        .Q(sample[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[15] 
       (.C(m_clk),
        .CE(\sample[23]_i_1_n_0 ),
        .D(D[15]),
        .Q(sample[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[16] 
       (.C(m_clk),
        .CE(\sample[23]_i_1_n_0 ),
        .D(D[16]),
        .Q(sample[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[17] 
       (.C(m_clk),
        .CE(\sample[23]_i_1_n_0 ),
        .D(D[17]),
        .Q(sample[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[18] 
       (.C(m_clk),
        .CE(\sample[23]_i_1_n_0 ),
        .D(D[18]),
        .Q(sample[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[19] 
       (.C(m_clk),
        .CE(\sample[23]_i_1_n_0 ),
        .D(D[19]),
        .Q(sample[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[1] 
       (.C(m_clk),
        .CE(\sample[23]_i_1_n_0 ),
        .D(D[1]),
        .Q(sample[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[20] 
       (.C(m_clk),
        .CE(\sample[23]_i_1_n_0 ),
        .D(D[20]),
        .Q(sample[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[21] 
       (.C(m_clk),
        .CE(\sample[23]_i_1_n_0 ),
        .D(D[21]),
        .Q(sample[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[22] 
       (.C(m_clk),
        .CE(\sample[23]_i_1_n_0 ),
        .D(D[22]),
        .Q(sample[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[23] 
       (.C(m_clk),
        .CE(\sample[23]_i_1_n_0 ),
        .D(D[23]),
        .Q(sample[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[2] 
       (.C(m_clk),
        .CE(\sample[23]_i_1_n_0 ),
        .D(D[2]),
        .Q(sample[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[3] 
       (.C(m_clk),
        .CE(\sample[23]_i_1_n_0 ),
        .D(D[3]),
        .Q(sample[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[4] 
       (.C(m_clk),
        .CE(\sample[23]_i_1_n_0 ),
        .D(D[4]),
        .Q(sample[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[5] 
       (.C(m_clk),
        .CE(\sample[23]_i_1_n_0 ),
        .D(D[5]),
        .Q(sample[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[6] 
       (.C(m_clk),
        .CE(\sample[23]_i_1_n_0 ),
        .D(D[6]),
        .Q(sample[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[7] 
       (.C(m_clk),
        .CE(\sample[23]_i_1_n_0 ),
        .D(D[7]),
        .Q(sample[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[8] 
       (.C(m_clk),
        .CE(\sample[23]_i_1_n_0 ),
        .D(D[8]),
        .Q(sample[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[9] 
       (.C(m_clk),
        .CE(\sample[23]_i_1_n_0 ),
        .D(D[9]),
        .Q(sample[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \serial_counter[0]_i_1__1 
       (.I0(\serial_counter_reg_n_0_[0] ),
        .O(\serial_counter[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \serial_counter[1]_i_1__1 
       (.I0(\serial_counter_reg_n_0_[0] ),
        .I1(\serial_counter_reg_n_0_[1] ),
        .O(\serial_counter[1]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \serial_counter_reg[0] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\serial_counter[0]_i_1__1_n_0 ),
        .Q(\serial_counter_reg_n_0_[0] ),
        .R(serial_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \serial_counter_reg[1] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\serial_counter[1]_i_1__1_n_0 ),
        .Q(\serial_counter_reg_n_0_[1] ),
        .R(serial_counter0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    start_i_1__0
       (.I0(lr_counter_reg[0]),
        .I1(lr_counter_reg[1]),
        .I2(lr_counter_reg[2]),
        .I3(lr_counter_reg[4]),
        .I4(lr_counter_reg[3]),
        .O(start0));
  (* mark_debug = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    start_reg
       (.C(m_clk),
        .CE(1'b1),
        .D(start0),
        .Q(start),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "I2S_wrapper" *) 
module design_1_I2S_wrapper_0_0_I2S_wrapper
   (s_TReady_in,
    s_TValid_out,
    s_TData_out,
    s_TID_out,
    data_out,
    lrclk_t,
    lrclk_r,
    sclk_t,
    sclk_r,
    m_clk,
    s_TValid_in,
    s_TData_in,
    s_TLast_in,
    s_TID_in,
    m_rst,
    data_in,
    s_TReady_out);
  output s_TReady_in;
  output s_TValid_out;
  output [23:0]s_TData_out;
  output [0:0]s_TID_out;
  output data_out;
  output lrclk_t;
  output lrclk_r;
  output sclk_t;
  output sclk_r;
  input m_clk;
  input s_TValid_in;
  input [23:0]s_TData_in;
  input s_TLast_in;
  input [1:0]s_TID_in;
  input m_rst;
  input data_in;
  input s_TReady_out;

  wire I2S_trans_inst_n_2;
  wire I2S_trans_inst_n_3;
  wire audio_fifo_inst_n_28;
  wire data_in;
  wire data_out;
  wire lrclk_r;
  wire lrclk_t;
  wire m_clk;
  wire m_rst;
  wire p_4_in;
  wire [23:0]s_TData_in;
  wire [23:0]s_TData_out;
  wire [1:0]s_TID_in;
  wire [0:0]s_TID_out;
  wire s_TLast_in;
  wire s_TReady_in;
  wire s_TReady_out;
  wire s_TValid_in;
  wire s_TValid_out;
  wire sclk_r;
  wire sclk_t;
  wire \trans_bwd_in[TReady] ;
  wire [23:0]\trans_fwd_in[TData] ;
  wire [1:0]\trans_fwd_in[TID] ;
  wire \trans_fwd_in[TValid] ;

  design_1_I2S_wrapper_0_0_I2S_clock_gen I2S_clock_gen_inst
       (.lrclk_r(lrclk_r),
        .m_clk(m_clk),
        .sclk_r(sclk_r));
  design_1_I2S_wrapper_0_0_I2S_rec I2S_rec_inst
       (.data_in(data_in),
        .m_clk(m_clk),
        .m_rst(m_rst),
        .p_4_in(p_4_in),
        .s_TData_out(s_TData_out),
        .s_TID_out(s_TID_out),
        .s_TReady_out(s_TReady_out),
        .s_TValid_out(s_TValid_out));
  design_1_I2S_wrapper_0_0_I2S_trans I2S_trans_inst
       (.D(\trans_fwd_in[TData] ),
        .E(audio_fifo_inst_n_28),
        .Q(I2S_trans_inst_n_3),
        .busy_reg_0(I2S_trans_inst_n_2),
        .data_out(data_out),
        .m_axis_tid(\trans_fwd_in[TID] ),
        .m_axis_tready(\trans_bwd_in[TReady] ),
        .m_axis_tvalid(\trans_fwd_in[TValid] ),
        .m_clk(m_clk),
        .m_rst(m_rst),
        .p_4_in(p_4_in));
  design_1_I2S_wrapper_0_0_audio_fifo audio_fifo_inst
       (.E(audio_fifo_inst_n_28),
        .Q(I2S_trans_inst_n_3),
        .\l_sample_reg[23] (I2S_trans_inst_n_2),
        .m_axis_tdata(\trans_fwd_in[TData] ),
        .m_axis_tid(\trans_fwd_in[TID] ),
        .m_axis_tready(\trans_bwd_in[TReady] ),
        .m_axis_tvalid(\trans_fwd_in[TValid] ),
        .m_clk(m_clk),
        .m_rst(m_rst),
        .s_TData_in(s_TData_in),
        .s_TID_in(s_TID_in),
        .s_TLast_in(s_TLast_in),
        .s_TReady_in(s_TReady_in),
        .s_TValid_in(s_TValid_in));
  FDRE lrclk_r_i_2_reg
       (.C(m_clk),
        .CE(1'b1),
        .D(lrclk_r),
        .Q(lrclk_t),
        .R(1'b0));
  FDRE sclk_r_i_2_reg
       (.C(m_clk),
        .CE(1'b1),
        .D(sclk_r),
        .Q(sclk_t),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "audio_fifo" *) 
module design_1_I2S_wrapper_0_0_audio_fifo
   (s_TReady_in,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tid,
    E,
    m_clk,
    s_TValid_in,
    s_TData_in,
    s_TLast_in,
    s_TID_in,
    m_axis_tready,
    Q,
    \l_sample_reg[23] ,
    m_rst);
  output s_TReady_in;
  output m_axis_tvalid;
  output [23:0]m_axis_tdata;
  output [1:0]m_axis_tid;
  output [0:0]E;
  input m_clk;
  input s_TValid_in;
  input [23:0]s_TData_in;
  input s_TLast_in;
  input [1:0]s_TID_in;
  input m_axis_tready;
  input [0:0]Q;
  input \l_sample_reg[23] ;
  input m_rst;

  wire [0:0]E;
  wire [0:0]Q;
  wire \l_sample_reg[23] ;
  wire [23:0]m_axis_tdata;
  wire [1:0]m_axis_tid;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire m_clk;
  wire m_rst;
  wire [23:0]s_TData_in;
  wire [1:0]s_TID_in;
  wire s_TLast_in;
  wire s_TReady_in;
  wire s_TValid_in;
  wire \trans_fwd_in[TLast] ;
  wire NLW_xpm_fifo_axis_inst_almost_empty_axis_UNCONNECTED;
  wire NLW_xpm_fifo_axis_inst_almost_full_axis_UNCONNECTED;
  wire NLW_xpm_fifo_axis_inst_dbiterr_axis_UNCONNECTED;
  wire NLW_xpm_fifo_axis_inst_prog_empty_axis_UNCONNECTED;
  wire NLW_xpm_fifo_axis_inst_prog_full_axis_UNCONNECTED;
  wire NLW_xpm_fifo_axis_inst_sbiterr_axis_UNCONNECTED;
  wire [0:0]NLW_xpm_fifo_axis_inst_m_axis_tdest_UNCONNECTED;
  wire [2:0]NLW_xpm_fifo_axis_inst_m_axis_tkeep_UNCONNECTED;
  wire [2:0]NLW_xpm_fifo_axis_inst_m_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_xpm_fifo_axis_inst_m_axis_tuser_UNCONNECTED;
  wire [4:0]NLW_xpm_fifo_axis_inst_rd_data_count_axis_UNCONNECTED;
  wire [4:0]NLW_xpm_fifo_axis_inst_wr_data_count_axis_UNCONNECTED;

  LUT5 #(
    .INIT(32'h00000010)) 
    \l_sample[23]_i_1__0 
       (.I0(m_axis_tid[1]),
        .I1(m_axis_tid[0]),
        .I2(Q),
        .I3(\l_sample_reg[23] ),
        .I4(m_rst),
        .O(E));
  (* AXIS_DATA_WIDTH = "35" *) 
  (* AXIS_FINAL_DATA_WIDTH = "35" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_SYNC_STAGES = "2" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* EN_ADV_FEATURE_AXIS = "16'b0001000000000000" *) 
  (* EN_ADV_FEATURE_AXIS_INT = "16'b0001000000000000" *) 
  (* EN_ALMOST_EMPTY_INT = "1'b0" *) 
  (* EN_ALMOST_FULL_INT = "1'b0" *) 
  (* EN_DATA_VALID_INT = "1'b1" *) 
  (* FIFO_DEPTH = "16" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* LOG_DEPTH_AXIS = "4" *) 
  (* PACKET_FIFO = "false" *) 
  (* PKT_SIZE_LT8 = "1'b0" *) 
  (* PROG_EMPTY_THRESH = "5" *) 
  (* PROG_FULL_THRESH = "11" *) 
  (* P_COMMON_CLOCK = "0" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_PKT_MODE = "0" *) 
  (* RD_DATA_COUNT_WIDTH = "5" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* SIM_ASSERT_CHK = "1" *) 
  (* TDATA_OFFSET = "24" *) 
  (* TDATA_WIDTH = "24" *) 
  (* TDEST_OFFSET = "33" *) 
  (* TDEST_WIDTH = "1" *) 
  (* TID_OFFSET = "32" *) 
  (* TID_WIDTH = "2" *) 
  (* TKEEP_OFFSET = "30" *) 
  (* TSTRB_OFFSET = "27" *) 
  (* TUSER_MAX_WIDTH = "4062" *) 
  (* TUSER_OFFSET = "34" *) 
  (* TUSER_WIDTH = "1" *) 
  (* USE_ADV_FEATURES = "1000" *) 
  (* USE_ADV_FEATURES_INT = "825241648" *) 
  (* WR_DATA_COUNT_WIDTH = "5" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_I2S_wrapper_0_0_xpm_fifo_axis xpm_fifo_axis_inst
       (.almost_empty_axis(NLW_xpm_fifo_axis_inst_almost_empty_axis_UNCONNECTED),
        .almost_full_axis(NLW_xpm_fifo_axis_inst_almost_full_axis_UNCONNECTED),
        .dbiterr_axis(NLW_xpm_fifo_axis_inst_dbiterr_axis_UNCONNECTED),
        .injectdbiterr_axis(1'b0),
        .injectsbiterr_axis(1'b0),
        .m_aclk(m_clk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(NLW_xpm_fifo_axis_inst_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(NLW_xpm_fifo_axis_inst_m_axis_tkeep_UNCONNECTED[2:0]),
        .m_axis_tlast(\trans_fwd_in[TLast] ),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_xpm_fifo_axis_inst_m_axis_tstrb_UNCONNECTED[2:0]),
        .m_axis_tuser(NLW_xpm_fifo_axis_inst_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(m_axis_tvalid),
        .prog_empty_axis(NLW_xpm_fifo_axis_inst_prog_empty_axis_UNCONNECTED),
        .prog_full_axis(NLW_xpm_fifo_axis_inst_prog_full_axis_UNCONNECTED),
        .rd_data_count_axis(NLW_xpm_fifo_axis_inst_rd_data_count_axis_UNCONNECTED[4:0]),
        .s_aclk(m_clk),
        .s_aresetn(1'b1),
        .s_axis_tdata(s_TData_in),
        .s_axis_tdest(1'b0),
        .s_axis_tid(s_TID_in),
        .s_axis_tkeep({1'b1,1'b1,1'b1}),
        .s_axis_tlast(s_TLast_in),
        .s_axis_tready(s_TReady_in),
        .s_axis_tstrb({1'b0,1'b0,1'b0}),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(s_TValid_in),
        .sbiterr_axis(NLW_xpm_fifo_axis_inst_sbiterr_axis_UNCONNECTED),
        .wr_data_count_axis(NLW_xpm_fifo_axis_inst_wr_data_count_axis_UNCONNECTED[4:0]));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module design_1_I2S_wrapper_0_0_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [2:0]\^dest_out_bin ;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  assign dest_out_bin[3] = \dest_graysync_ff[1] [3];
  assign dest_out_bin[2:0] = \^dest_out_bin [2:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module design_1_I2S_wrapper_0_0_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [2:0]\^dest_out_bin ;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  assign dest_out_bin[3] = \dest_graysync_ff[1] [3];
  assign dest_out_bin[2:0] = \^dest_out_bin [2:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized0
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[3] ;
  wire [3:0]\^dest_out_bin ;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  assign dest_out_bin[4] = \dest_graysync_ff[3] [4];
  assign dest_out_bin[3:0] = \^dest_out_bin [3:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [0]),
        .Q(\dest_graysync_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [1]),
        .Q(\dest_graysync_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [2]),
        .Q(\dest_graysync_ff[3] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(\dest_graysync_ff[3] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [4]),
        .Q(\dest_graysync_ff[3] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[3] [0]),
        .I1(\dest_graysync_ff[3] [2]),
        .I2(\dest_graysync_ff[3] [4]),
        .I3(\dest_graysync_ff[3] [3]),
        .I4(\dest_graysync_ff[3] [1]),
        .O(\^dest_out_bin [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[3] [1]),
        .I1(\dest_graysync_ff[3] [3]),
        .I2(\dest_graysync_ff[3] [4]),
        .I3(\dest_graysync_ff[3] [2]),
        .O(\^dest_out_bin [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[3] [2]),
        .I1(\dest_graysync_ff[3] [4]),
        .I2(\dest_graysync_ff[3] [3]),
        .O(\^dest_out_bin [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[3] [3]),
        .I1(\dest_graysync_ff[3] [4]),
        .O(\^dest_out_bin [3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [3:0]\^dest_out_bin ;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  assign dest_out_bin[4] = \dest_graysync_ff[1] [4];
  assign dest_out_bin[3:0] = \^dest_out_bin [3:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(\^dest_out_bin [3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst__3
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst__4
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_1_I2S_wrapper_0_0_xpm_counter_updn
   (Q,
    \count_value_i_reg[1]_0 ,
    rd_en,
    ram_empty_i,
    SR,
    rd_clk);
  output [1:0]Q;
  input [1:0]\count_value_i_reg[1]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]SR;
  input rd_clk;

  wire [1:0]Q;
  wire [0:0]SR;
  wire \count_value_i[0]_i_1__4_n_0 ;
  wire \count_value_i[1]_i_3_n_0 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire \gen_fwft.count_en ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;

  LUT5 #(
    .INIT(32'h5AAAA655)) 
    \count_value_i[0]_i_1__4 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(\count_value_i_reg[1]_0 [1]),
        .I4(ram_empty_i),
        .O(\count_value_i[0]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'hC02F)) 
    \count_value_i[1]_i_2 
       (.I0(\count_value_i_reg[1]_0 [0]),
        .I1(rd_en),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(ram_empty_i),
        .O(\gen_fwft.count_en ));
  LUT6 #(
    .INIT(64'hAAAAA6555AAAAAAA)) 
    \count_value_i[1]_i_3 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(\count_value_i_reg[1]_0 [1]),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(\gen_fwft.count_en ),
        .D(\count_value_i[0]_i_1__4_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(\gen_fwft.count_en ),
        .D(\count_value_i[1]_i_3_n_0 ),
        .Q(Q[1]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized0
   (src_in_bin,
    Q,
    E,
    \src_gray_ff_reg[4] ,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    SR,
    rd_clk);
  output [4:0]src_in_bin;
  output [3:0]Q;
  output [0:0]E;
  input [1:0]\src_gray_ff_reg[4] ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]SR;
  input rd_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \count_value_i[0]_i_1__3_n_0 ;
  wire \count_value_i[1]_i_1__4_n_0 ;
  wire \count_value_i[2]_i_1__3_n_0 ;
  wire \count_value_i[3]_i_1__3_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire \count_value_i_reg_n_0_[4] ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0 ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire [1:0]\src_gray_ff_reg[4] ;
  wire [4:0]src_in_bin;

  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__3 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__4 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__4_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(\count_value_i_reg_n_0_[4] ),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__3_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__4_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__3_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__3_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(\count_value_i_reg_n_0_[4] ),
        .R(SR));
  LUT5 #(
    .INIT(32'hEEE71118)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1 
       (.I0(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0 ),
        .I1(Q[3]),
        .I2(\src_gray_ff_reg[4] [1]),
        .I3(\src_gray_ff_reg[4] [0]),
        .I4(\count_value_i_reg_n_0_[4] ),
        .O(src_in_bin[4]));
  LUT6 #(
    .INIT(64'hF8FEFAFF07010500)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\src_gray_ff_reg[4] [1]),
        .I4(\src_gray_ff_reg[4] [0]),
        .I5(Q[3]),
        .O(src_in_bin[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h8ECF7130)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\src_gray_ff_reg[4] [1]),
        .I3(\src_gray_ff_reg[4] [0]),
        .I4(Q[2]),
        .O(src_in_bin[2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h4BB4)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4 
       (.I0(Q[0]),
        .I1(\src_gray_ff_reg[4] [0]),
        .I2(\src_gray_ff_reg[4] [1]),
        .I3(Q[1]),
        .O(src_in_bin[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5 
       (.I0(Q[0]),
        .I1(\src_gray_ff_reg[4] [0]),
        .O(src_in_bin[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hEEE6E2E0)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6 
       (.I0(\src_gray_ff_reg[4] [0]),
        .I1(\src_gray_ff_reg[4] [1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(E));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized0_1
   (Q,
    wrst_busy,
    E,
    wr_clk);
  output [4:0]Q;
  input wrst_busy;
  input [0:0]E;
  input wr_clk;

  wire [0:0]E;
  wire [4:0]Q;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire wr_clk;
  wire wrst_busy;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized1
   (Q,
    \count_value_i_reg[1]_0 ,
    rd_en,
    SR,
    E,
    rd_clk);
  output [3:0]Q;
  input [1:0]\count_value_i_reg[1]_0 ;
  input rd_en;
  input [0:0]SR;
  input [0:0]E;
  input rd_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__3_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire rd_clk;
  wire rd_en;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__3 
       (.I0(\count_value_i_reg[1]_0 [1]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__3_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized1_2
   (\count_value_i_reg[3]_0 ,
    Q,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ,
    wrst_busy,
    E,
    wr_clk);
  output \count_value_i_reg[3]_0 ;
  output [2:0]Q;
  input [0:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  input wrst_busy;
  input [0:0]E;
  input wr_clk;

  wire [0:0]E;
  wire [2:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i_reg[3]_0 ;
  wire \count_value_i_reg_n_0_[3] ;
  wire [0:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  wire wr_clk;
  wire wrst_busy;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\count_value_i_reg_n_0_[3] ),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(\count_value_i_reg_n_0_[3] ),
        .R(wrst_busy));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_3 
       (.I0(\count_value_i_reg_n_0_[3] ),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ),
        .O(\count_value_i_reg[3]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized2
   (\count_value_i_reg[3]_0 ,
    Q,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ,
    wrst_busy,
    E,
    wr_clk);
  output \count_value_i_reg[3]_0 ;
  output [2:0]Q;
  input [0:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  input wrst_busy;
  input [0:0]E;
  input wr_clk;

  wire [0:0]E;
  wire [2:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i_reg[3]_0 ;
  wire \count_value_i_reg_n_0_[3] ;
  wire [0:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  wire wr_clk;
  wire wrst_busy;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\count_value_i_reg_n_0_[3] ),
        .O(\count_value_i[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(\count_value_i_reg_n_0_[3] ),
        .R(wrst_busy));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_6 
       (.I0(\count_value_i_reg_n_0_[3] ),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ),
        .O(\count_value_i_reg[3]_0 ));
endmodule

(* AXIS_DATA_WIDTH = "35" *) (* AXIS_FINAL_DATA_WIDTH = "35" *) (* CASCADE_HEIGHT = "0" *) 
(* CDC_SYNC_STAGES = "2" *) (* CLOCKING_MODE = "independent_clock" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_AXIS = "16'b0001000000000000" *) (* EN_ADV_FEATURE_AXIS_INT = "16'b0001000000000000" *) (* EN_ALMOST_EMPTY_INT = "1'b0" *) 
(* EN_ALMOST_FULL_INT = "1'b0" *) (* EN_DATA_VALID_INT = "1'b1" *) (* FIFO_DEPTH = "16" *) 
(* FIFO_MEMORY_TYPE = "auto" *) (* LOG_DEPTH_AXIS = "4" *) (* ORIG_REF_NAME = "xpm_fifo_axis" *) 
(* PACKET_FIFO = "false" *) (* PKT_SIZE_LT8 = "1'b0" *) (* PROG_EMPTY_THRESH = "5" *) 
(* PROG_FULL_THRESH = "11" *) (* P_COMMON_CLOCK = "0" *) (* P_ECC_MODE = "0" *) 
(* P_FIFO_MEMORY_TYPE = "0" *) (* P_PKT_MODE = "0" *) (* RD_DATA_COUNT_WIDTH = "5" *) 
(* RELATED_CLOCKS = "0" *) (* SIM_ASSERT_CHK = "1" *) (* TDATA_OFFSET = "24" *) 
(* TDATA_WIDTH = "24" *) (* TDEST_OFFSET = "33" *) (* TDEST_WIDTH = "1" *) 
(* TID_OFFSET = "32" *) (* TID_WIDTH = "2" *) (* TKEEP_OFFSET = "30" *) 
(* TSTRB_OFFSET = "27" *) (* TUSER_MAX_WIDTH = "4062" *) (* TUSER_OFFSET = "34" *) 
(* TUSER_WIDTH = "1" *) (* USE_ADV_FEATURES = "1000" *) (* USE_ADV_FEATURES_INT = "825241648" *) 
(* WR_DATA_COUNT_WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) (* dont_touch = "true" *) 
module design_1_I2S_wrapper_0_0_xpm_fifo_axis
   (s_aresetn,
    s_aclk,
    m_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    prog_full_axis,
    wr_data_count_axis,
    almost_full_axis,
    prog_empty_axis,
    rd_data_count_axis,
    almost_empty_axis,
    injectsbiterr_axis,
    injectdbiterr_axis,
    sbiterr_axis,
    dbiterr_axis);
  input s_aresetn;
  input s_aclk;
  input m_aclk;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [1:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [1:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  output prog_full_axis;
  output [4:0]wr_data_count_axis;
  output almost_full_axis;
  output prog_empty_axis;
  output [4:0]rd_data_count_axis;
  output almost_empty_axis;
  input injectsbiterr_axis;
  input injectdbiterr_axis;
  output sbiterr_axis;
  output dbiterr_axis;

  wire \<const0> ;
  wire \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ;
  wire m_aclk;
  wire [23:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [1:0]m_axis_tid;
  wire [2:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [2:0]m_axis_tstrb;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire rst_axis;
  wire s_aclk;
  wire s_aresetn;
  wire [23:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [1:0]s_axis_tid;
  wire [2:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [2:0]s_axis_tstrb;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire xpm_fifo_base_inst_i_1_n_0;
  wire NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED;

  assign almost_empty_axis = \<const0> ;
  assign almost_full_axis = \<const0> ;
  assign dbiterr_axis = \<const0> ;
  assign prog_empty_axis = \<const0> ;
  assign prog_full_axis = \<const0> ;
  assign rd_data_count_axis[4] = \<const0> ;
  assign rd_data_count_axis[3] = \<const0> ;
  assign rd_data_count_axis[2] = \<const0> ;
  assign rd_data_count_axis[1] = \<const0> ;
  assign rd_data_count_axis[0] = \<const0> ;
  assign sbiterr_axis = \<const0> ;
  assign wr_data_count_axis[4] = \<const0> ;
  assign wr_data_count_axis[3] = \<const0> ;
  assign wr_data_count_axis[2] = \<const0> ;
  assign wr_data_count_axis[1] = \<const0> ;
  assign wr_data_count_axis[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst__3 \gaxis_rst_sync.xpm_cdc_sync_rst_inst 
       (.dest_clk(s_aclk),
        .dest_rst(rst_axis),
        .src_rst(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1 
       (.I0(s_aresetn),
        .O(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "0" *) 
  (* DOUT_RESET_VALUE = "" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0001000000000000" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b1" *) 
  (* EN_OF = "1'b0" *) 
  (* EN_PE = "1'b0" *) 
  (* EN_PF = "1'b0" *) 
  (* EN_RDC = "1'b0" *) 
  (* EN_UF = "1'b0" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b0" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "16" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "560" *) 
  (* FIFO_WRITE_DEPTH = "16" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* PE_THRESH_ADJ = "3" *) 
  (* PE_THRESH_MAX = "11" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "9" *) 
  (* PF_THRESH_MAX = "11" *) 
  (* PF_THRESH_MIN = "7" *) 
  (* PROG_EMPTY_THRESH = "5" *) 
  (* PROG_FULL_THRESH = "11" *) 
  (* RD_DATA_COUNT_WIDTH = "5" *) 
  (* RD_DC_WIDTH_EXT = "5" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "4" *) 
  (* READ_DATA_WIDTH = "35" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "1" *) 
  (* USE_ADV_FEATURES = "825241648" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "35" *) 
  (* WR_DATA_COUNT_WIDTH = "5" *) 
  (* WR_DC_WIDTH_EXT = "5" *) 
  (* WR_DEPTH_LOG = "4" *) 
  (* WR_PNTR_WIDTH = "4" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "6" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  design_1_I2S_wrapper_0_0_xpm_fifo_base xpm_fifo_base_inst
       (.almost_empty(NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED),
        .data_valid(m_axis_tvalid),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din({s_axis_tlast,s_axis_tuser,s_axis_tdest,s_axis_tid,s_axis_tkeep,s_axis_tstrb,s_axis_tdata}),
        .dout({m_axis_tlast,m_axis_tuser,m_axis_tdest,m_axis_tid,m_axis_tkeep,m_axis_tstrb,m_axis_tdata}),
        .empty(NLW_xpm_fifo_base_inst_empty_UNCONNECTED),
        .full(NLW_xpm_fifo_base_inst_full_UNCONNECTED),
        .full_n(s_axis_tready),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_base_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED),
        .rd_clk(m_aclk),
        .rd_data_count(NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED[4:0]),
        .rd_en(xpm_fifo_base_inst_i_1_n_0),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst_axis),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(NLW_xpm_fifo_base_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(s_aclk),
        .wr_data_count(NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED[4:0]),
        .wr_en(s_axis_tvalid),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    xpm_fifo_base_inst_i_1
       (.I0(m_axis_tvalid),
        .I1(m_axis_tready),
        .O(xpm_fifo_base_inst_i_1_n_0));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "0" *) 
(* DOUT_RESET_VALUE = "" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0001000000000000" *) (* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) 
(* EN_DVLD = "1'b1" *) (* EN_OF = "1'b0" *) (* EN_PE = "1'b0" *) 
(* EN_PF = "1'b0" *) (* EN_RDC = "1'b0" *) (* EN_UF = "1'b0" *) 
(* EN_WACK = "1'b0" *) (* EN_WDC = "1'b0" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) 
(* FIFO_MEMORY_TYPE = "0" *) (* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "16" *) 
(* FIFO_READ_LATENCY = "0" *) (* FIFO_SIZE = "560" *) (* FIFO_WRITE_DEPTH = "16" *) 
(* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_fifo_base" *) 
(* PE_THRESH_ADJ = "3" *) (* PE_THRESH_MAX = "11" *) (* PE_THRESH_MIN = "5" *) 
(* PF_THRESH_ADJ = "9" *) (* PF_THRESH_MAX = "11" *) (* PF_THRESH_MIN = "7" *) 
(* PROG_EMPTY_THRESH = "5" *) (* PROG_FULL_THRESH = "11" *) (* RD_DATA_COUNT_WIDTH = "5" *) 
(* RD_DC_WIDTH_EXT = "5" *) (* RD_LATENCY = "2" *) (* RD_MODE = "1" *) 
(* RD_PNTR_WIDTH = "4" *) (* READ_DATA_WIDTH = "35" *) (* READ_MODE = "1" *) 
(* READ_MODE_LL = "1" *) (* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
(* SIM_ASSERT_CHK = "1" *) (* USE_ADV_FEATURES = "825241648" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "35" *) 
(* WR_DATA_COUNT_WIDTH = "5" *) (* WR_DC_WIDTH_EXT = "5" *) (* WR_DEPTH_LOG = "4" *) 
(* WR_PNTR_WIDTH = "4" *) (* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "6" *) 
(* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) (* invalid = "0" *) 
(* keep_hierarchy = "soft" *) (* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module design_1_I2S_wrapper_0_0_xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [34:0]din;
  output full;
  output full_n;
  output prog_full;
  output [4:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [34:0]dout;
  output empty;
  output prog_empty;
  output [4:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire clr_full;
  wire [1:0]count_value_i;
  wire [1:0]curr_fwft_state;
  wire data_valid;
  wire data_valid_fwft1;
  wire [34:0]din;
  wire [34:0]dout;
  wire full_n;
  wire \gen_cdc_pntr.rpw_gray_reg_n_0 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_1 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_2 ;
  wire \gen_fwft.count_rst ;
  wire \gen_fwft.empty_fwft_i_reg_n_0 ;
  wire \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_n_0 ;
  wire [1:0]next_fwft_state__0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_i;
  wire rd_clk;
  wire rd_en;
  wire [3:0]rd_pntr_ext;
  wire [3:0]rd_pntr_wr_cdc;
  wire rdp_inst_n_0;
  wire rdp_inst_n_1;
  wire rdp_inst_n_2;
  wire rdp_inst_n_3;
  wire rdp_inst_n_4;
  wire rdp_inst_n_9;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rst;
  wire rst_d1;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire [4:0]wr_pntr_ext;
  wire [3:0]wr_pntr_rd_cdc;
  wire wrpp1_inst_n_0;
  wire wrpp1_inst_n_1;
  wire wrpp1_inst_n_2;
  wire wrpp1_inst_n_3;
  wire wrpp2_inst_n_0;
  wire wrpp2_inst_n_1;
  wire wrpp2_inst_n_2;
  wire wrpp2_inst_n_3;
  wire wrst_busy;
  wire xpm_fifo_rst_inst_n_0;
  wire [4:0]\NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_dest_out_bin_UNCONNECTED ;
  wire [4:0]\NLW_gen_cdc_pntr.wr_pntr_cdc_dc_inst_dest_out_bin_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [34:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign dbiterr = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h3FF0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_0));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_0));
  GND GND
       (.G(\<const0> ));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "5" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized1 \gen_cdc_pntr.rd_pntr_cdc_dc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(\NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_dest_out_bin_UNCONNECTED [4:0]),
        .src_clk(rd_clk),
        .src_in_bin({rdp_inst_n_0,rdp_inst_n_1,rdp_inst_n_2,rdp_inst_n_3,rdp_inst_n_4}));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "4" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_I2S_wrapper_0_0_xpm_cdc_gray \gen_cdc_pntr.rd_pntr_cdc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc),
        .src_clk(rd_clk),
        .src_in_bin(rd_pntr_ext));
  design_1_I2S_wrapper_0_0_xpm_fifo_reg_vec \gen_cdc_pntr.rpw_gray_reg 
       (.D(rd_pntr_wr_cdc),
        .E(ram_wr_en_i),
        .Q({wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3}),
        .clr_full(clr_full),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg (wrpp2_inst_n_0),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 (wrpp1_inst_n_0),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg ({wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3}),
        .\reg_out_i_reg[3]_0 (\gen_cdc_pntr.rpw_gray_reg_n_2 ),
        .s_TValid_in(\gen_cdc_pntr.rpw_gray_reg_n_0 ),
        .\syncstages_ff_reg[1] (\gen_cdc_pntr.rpw_gray_reg_n_1 ),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  design_1_I2S_wrapper_0_0_xpm_fifo_reg_vec_0 \gen_cdc_pntr.wpr_gray_reg 
       (.D(wr_pntr_rd_cdc),
        .E(rdp_inst_n_9),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3}),
        .SR(xpm_fifo_rst_inst_n_0),
        .\gen_pf_ic_rc.ram_empty_i_reg (rd_pntr_ext),
        .ram_empty_i0(ram_empty_i0),
        .rd_clk(rd_clk));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "5" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized0 \gen_cdc_pntr.wr_pntr_cdc_dc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(\NLW_gen_cdc_pntr.wr_pntr_cdc_dc_inst_dest_out_bin_UNCONNECTED [4:0]),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "4" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_I2S_wrapper_0_0_xpm_cdc_gray__2 \gen_cdc_pntr.wr_pntr_cdc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext[3:0]));
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .O(data_valid_fwft1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(data_valid_fwft1),
        .Q(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h3575)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_i_1 
       (.I0(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(rd_en),
        .O(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ),
        .Q(data_valid),
        .R(xpm_fifo_rst_inst_n_0));
  design_1_I2S_wrapper_0_0_xpm_counter_updn \gen_fwft.rdpp1_inst 
       (.Q(count_value_i),
        .SR(\gen_fwft.count_rst ),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_0 ),
        .Q(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_1 ),
        .Q(full_n),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.ram_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_0));
  (* ADDR_WIDTH_A = "4" *) 
  (* ADDR_WIDTH_B = "4" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "35" *) 
  (* BYTE_WRITE_WIDTH_B = "35" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "1" *) 
  (* ECC_BIT_RANGE = "[7:0]" *) 
  (* ECC_MODE = "0" *) 
  (* ECC_TYPE = "NONE" *) 
  (* IGNORE_INIT_SYNTH = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "560" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "16" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "35" *) 
  (* P_MIN_WIDTH_DATA_A = "35" *) 
  (* P_MIN_WIDTH_DATA_B = "35" *) 
  (* P_MIN_WIDTH_DATA_ECC = "35" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "35" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "4" *) 
  (* P_WIDTH_ADDR_READ_B = "4" *) 
  (* P_WIDTH_ADDR_WRITE_A = "4" *) 
  (* P_WIDTH_ADDR_WRITE_B = "4" *) 
  (* P_WIDTH_COL_WRITE_A = "35" *) 
  (* P_WIDTH_COL_WRITE_B = "35" *) 
  (* RAM_DECOMP = "auto" *) 
  (* READ_DATA_WIDTH_A = "35" *) 
  (* READ_DATA_WIDTH_B = "35" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "35" *) 
  (* WRITE_DATA_WIDTH_B = "35" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "36" *) 
  (* rstb_loop_iter = "36" *) 
  design_1_I2S_wrapper_0_0_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext[3:0]),
        .addrb(rd_pntr_ext),
        .clka(1'b0),
        .clkb(rd_clk),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [34:0]),
        .doutb(dout),
        .ena(1'b0),
        .enb(rdp_inst_n_9),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(xpm_fifo_rst_inst_n_0),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(ram_wr_en_i),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized0 rdp_inst
       (.E(rdp_inst_n_9),
        .Q(rd_pntr_ext),
        .SR(xpm_fifo_rst_inst_n_0),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .\src_gray_ff_reg[4] (count_value_i),
        .src_in_bin({rdp_inst_n_0,rdp_inst_n_1,rdp_inst_n_2,rdp_inst_n_3,rdp_inst_n_4}));
  design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized1 rdpp1_inst
       (.E(rdp_inst_n_9),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3}),
        .SR(xpm_fifo_rst_inst_n_0),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  design_1_I2S_wrapper_0_0_xpm_fifo_reg_bit rst_d1_inst
       (.clr_full(clr_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized0_1 wrp_inst
       (.E(ram_wr_en_i),
        .Q(wr_pntr_ext),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized1_2 wrpp1_inst
       (.E(ram_wr_en_i),
        .Q({wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3}),
        .\count_value_i_reg[3]_0 (wrpp1_inst_n_0),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg (\gen_cdc_pntr.rpw_gray_reg_n_2 ),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized2 wrpp2_inst
       (.E(ram_wr_en_i),
        .Q({wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3}),
        .\count_value_i_reg[3]_0 (wrpp2_inst_n_0),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg (\gen_cdc_pntr.rpw_gray_reg_n_2 ),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  design_1_I2S_wrapper_0_0_xpm_fifo_rst xpm_fifo_rst_inst
       (.E(ram_wr_en_i),
        .Q(curr_fwft_state),
        .SR(xpm_fifo_rst_inst_n_0),
        .\count_value_i_reg[3] (\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_rst_ic.fifo_rd_rst_ic_reg_0 (\gen_fwft.count_rst ),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wrst_busy(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module design_1_I2S_wrapper_0_0_xpm_fifo_reg_bit
   (rst_d1,
    clr_full,
    wrst_busy,
    wr_clk,
    rst);
  output rst_d1;
  output clr_full;
  input wrst_busy;
  input wr_clk;
  input rst;

  wire clr_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wrst_busy;

  FDRE #(
    .INIT(1'b0)) 
    d_out_int_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(wrst_busy),
        .Q(rst_d1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_2 
       (.I0(rst),
        .I1(rst_d1),
        .I2(wrst_busy),
        .O(clr_full));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module design_1_I2S_wrapper_0_0_xpm_fifo_reg_vec
   (s_TValid_in,
    \syncstages_ff_reg[1] ,
    \reg_out_i_reg[3]_0 ,
    Q,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg ,
    E,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ,
    clr_full,
    wrst_busy,
    D,
    wr_clk);
  output s_TValid_in;
  output \syncstages_ff_reg[1] ;
  output [0:0]\reg_out_i_reg[3]_0 ;
  input [2:0]Q;
  input [2:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg ;
  input [0:0]E;
  input \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  input \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ;
  input clr_full;
  input wrst_busy;
  input [3:0]D;
  input wr_clk;

  wire [3:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire clr_full;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_4_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5_n_0 ;
  wire [2:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg ;
  wire [0:0]\reg_out_i_reg[3]_0 ;
  wire \reg_out_i_reg_n_0_[0] ;
  wire \reg_out_i_reg_n_0_[1] ;
  wire \reg_out_i_reg_n_0_[2] ;
  wire s_TValid_in;
  wire \syncstages_ff_reg[1] ;
  wire wr_clk;
  wire wrst_busy;

  LUT6 #(
    .INIT(64'h00000000FF808080)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(E),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5_n_0 ),
        .I3(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_4_n_0 ),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ),
        .I5(clr_full),
        .O(s_TValid_in));
  LUT6 #(
    .INIT(64'hAABFBFBFBFBFBFBF)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_1 
       (.I0(clr_full),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_4_n_0 ),
        .I3(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5_n_0 ),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ),
        .I5(E),
        .O(\syncstages_ff_reg[1] ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_4 
       (.I0(\reg_out_i_reg_n_0_[0] ),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg [0]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg [2]),
        .I3(\reg_out_i_reg_n_0_[2] ),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg [1]),
        .I5(\reg_out_i_reg_n_0_[1] ),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5 
       (.I0(\reg_out_i_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\reg_out_i_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(\reg_out_i_reg_n_0_[1] ),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\reg_out_i_reg_n_0_[0] ),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\reg_out_i_reg_n_0_[1] ),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\reg_out_i_reg_n_0_[2] ),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\reg_out_i_reg[3]_0 ),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module design_1_I2S_wrapper_0_0_xpm_fifo_reg_vec_0
   (ram_empty_i0,
    E,
    Q,
    \gen_pf_ic_rc.ram_empty_i_reg ,
    SR,
    D,
    rd_clk);
  output ram_empty_i0;
  input [0:0]E;
  input [3:0]Q;
  input [3:0]\gen_pf_ic_rc.ram_empty_i_reg ;
  input [0:0]SR;
  input [3:0]D;
  input rd_clk;

  wire [3:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \gen_pf_ic_rc.ram_empty_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_3_n_0 ;
  wire [3:0]\gen_pf_ic_rc.ram_empty_i_reg ;
  wire ram_empty_i0;
  wire rd_clk;
  wire [3:0]reg_out_i;

  LUT6 #(
    .INIT(64'hFF8080802020FF20)) 
    \gen_pf_ic_rc.ram_empty_i_i_1 
       (.I0(E),
        .I1(Q[3]),
        .I2(\gen_pf_ic_rc.ram_empty_i_i_2_n_0 ),
        .I3(\gen_pf_ic_rc.ram_empty_i_i_3_n_0 ),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg [3]),
        .I5(reg_out_i[3]),
        .O(ram_empty_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_2 
       (.I0(reg_out_i[0]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(reg_out_i[2]),
        .I4(Q[1]),
        .I5(reg_out_i[1]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_3 
       (.I0(reg_out_i[0]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg [0]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg [2]),
        .I3(reg_out_i[2]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg [1]),
        .I5(reg_out_i[1]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(reg_out_i[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(reg_out_i[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(reg_out_i[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(reg_out_i[3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module design_1_I2S_wrapper_0_0_xpm_fifo_rst
   (SR,
    wrst_busy,
    E,
    \gen_rst_ic.fifo_rd_rst_ic_reg_0 ,
    rd_clk,
    wr_clk,
    rst,
    wr_en,
    \count_value_i_reg[3] ,
    rst_d1,
    ram_empty_i,
    Q,
    rd_en);
  output [0:0]SR;
  output wrst_busy;
  output [0:0]E;
  output [0:0]\gen_rst_ic.fifo_rd_rst_ic_reg_0 ;
  input rd_clk;
  input wr_clk;
  input rst;
  input wr_en;
  input \count_value_i_reg[3] ;
  input rst_d1;
  input ram_empty_i;
  input [1:0]Q;
  input rd_en;

  wire \/i__n_0 ;
  wire [0:0]E;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire \count_value_i_reg[3] ;
  (* RTL_KEEP = "yes" *) wire [1:0]\gen_rst_ic.curr_rrst_state ;
  wire \gen_rst_ic.fifo_rd_rst_i ;
  wire [0:0]\gen_rst_ic.fifo_rd_rst_ic_reg_0 ;
  wire \gen_rst_ic.fifo_rd_rst_wr_i ;
  wire \gen_rst_ic.fifo_wr_rst_ic ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_rd ;
  wire [1:0]\gen_rst_ic.next_rrst_state ;
  wire \gen_rst_ic.rst_seq_reentered_i_1_n_0 ;
  wire \gen_rst_ic.rst_seq_reentered_i_2_n_0 ;
  wire \gen_rst_ic.rst_seq_reentered_reg_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire rst_d1;
  wire rst_i__0;
  wire wr_clk;
  wire wr_en;
  wire wrst_busy;

  LUT5 #(
    .INIT(32'h00010116)) 
    \/i_ 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\/i__n_0 ));
  LUT6 #(
    .INIT(64'h03030200FFFFFFFF)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(p_0_in),
        .I2(rst),
        .I3(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I5(\/i__n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFEEE)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I3(rst),
        .I4(p_0_in),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0EEE0FFFFEEE0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(rst),
        .I3(p_0_in),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I5(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000C0008)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I1(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I2(rst),
        .I3(p_0_in),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000004400000044)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1 
       (.I0(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I3(rst),
        .I4(p_0_in),
        .I5(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1 
       (.I0(\/i__n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(p_0_in),
        .I2(rst),
        .I3(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1 
       (.I0(\gen_rst_ic.curr_rrst_state [0]),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .O(\gen_rst_ic.next_rrst_state [1]));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [0]),
        .Q(\gen_rst_ic.curr_rrst_state [0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [1]),
        .Q(\gen_rst_ic.curr_rrst_state [1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h06)) 
    \__0/i_ 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.next_rrst_state [0]));
  LUT5 #(
    .INIT(32'hAAAAAEAE)) 
    \count_value_i[1]_i_1__2 
       (.I0(SR),
        .I1(ram_empty_i),
        .I2(Q[1]),
        .I3(rd_en),
        .I4(Q[0]),
        .O(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ));
  LUT3 #(
    .INIT(8'h3E)) 
    \gen_rst_ic.fifo_rd_rst_ic_i_1 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.fifo_rd_rst_i ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_rd_rst_ic_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_rd_rst_i ),
        .Q(SR),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEAFFFFFFEA0000)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(rst_i__0),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I4(\gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ),
        .I5(\gen_rst_ic.fifo_wr_rst_ic ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_2 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i__0));
  LUT5 #(
    .INIT(32'h00010116)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_3 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_wr_rst_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ),
        .Q(\gen_rst_ic.fifo_wr_rst_ic ),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst \gen_rst_ic.rrst_wr_inst 
       (.dest_clk(wr_clk),
        .dest_rst(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .src_rst(SR));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \gen_rst_ic.rst_seq_reentered_i_1 
       (.I0(\gen_rst_ic.rst_seq_reentered_i_2_n_0 ),
        .I1(rst),
        .I2(p_0_in),
        .O(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    \gen_rst_ic.rst_seq_reentered_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I5(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .O(\gen_rst_ic.rst_seq_reentered_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.rst_seq_reentered_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ),
        .Q(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFFFEF00)) 
    \gen_rst_ic.wr_rst_busy_ic_i_1 
       (.I0(rst),
        .I1(p_0_in),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I3(\gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ),
        .I4(wrst_busy),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000116)) 
    \gen_rst_ic.wr_rst_busy_ic_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.wr_rst_busy_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ),
        .Q(wrst_busy),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst__4 \gen_rst_ic.wrst_rd_inst 
       (.dest_clk(rd_clk),
        .dest_rst(\gen_rst_ic.fifo_wr_rst_rd ),
        .src_rst(\gen_rst_ic.fifo_wr_rst_ic ));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[3] ),
        .I2(wrst_busy),
        .I3(rst_d1),
        .O(E));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ADDR_WIDTH_A = "4" *) (* ADDR_WIDTH_B = "4" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "35" *) (* BYTE_WRITE_WIDTH_B = "35" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "1" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "0" *) (* MEMORY_SIZE = "560" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "0" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "16" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) 
(* P_MIN_WIDTH_DATA = "35" *) (* P_MIN_WIDTH_DATA_A = "35" *) (* P_MIN_WIDTH_DATA_B = "35" *) 
(* P_MIN_WIDTH_DATA_ECC = "35" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "35" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "4" *) 
(* P_WIDTH_ADDR_READ_B = "4" *) (* P_WIDTH_ADDR_WRITE_A = "4" *) (* P_WIDTH_ADDR_WRITE_B = "4" *) 
(* P_WIDTH_COL_WRITE_A = "35" *) (* P_WIDTH_COL_WRITE_B = "35" *) (* RAM_DECOMP = "auto" *) 
(* READ_DATA_WIDTH_A = "35" *) (* READ_DATA_WIDTH_B = "35" *) (* READ_LATENCY_A = "2" *) 
(* READ_LATENCY_B = "2" *) (* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "" *) 
(* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) 
(* VERSION = "0" *) (* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "35" *) 
(* WRITE_DATA_WIDTH_B = "35" *) (* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) 
(* WRITE_PROTECT = "1" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
(* rsta_loop_iter = "36" *) (* rstb_loop_iter = "36" *) 
module design_1_I2S_wrapper_0_0_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [3:0]addra;
  input [34:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [34:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [3:0]addrb;
  input [34:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [34:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [3:0]addra;
  wire [3:0]addrb;
  wire clkb;
  wire [34:0]dina;
  wire [34:0]doutb;
  wire enb;
  wire [34:0]\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg ;
  wire [34:0]\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 ;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27_DOH_UNCONNECTED ;
  wire [1:1]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_34_DOD_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_34_DOE_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_34_DOF_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_34_DOG_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_34_DOH_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[34] = \<const0> ;
  assign douta[33] = \<const0> ;
  assign douta[32] = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][0] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [0]),
        .Q(doutb[0]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][10] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [10]),
        .Q(doutb[10]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][11] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [11]),
        .Q(doutb[11]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][12] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [12]),
        .Q(doutb[12]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][13] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [13]),
        .Q(doutb[13]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][14] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [14]),
        .Q(doutb[14]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][15] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [15]),
        .Q(doutb[15]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][16] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [16]),
        .Q(doutb[16]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][17] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [17]),
        .Q(doutb[17]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][18] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [18]),
        .Q(doutb[18]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][19] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [19]),
        .Q(doutb[19]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][1] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [1]),
        .Q(doutb[1]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][20] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [20]),
        .Q(doutb[20]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][21] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [21]),
        .Q(doutb[21]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][22] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [22]),
        .Q(doutb[22]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][23] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [23]),
        .Q(doutb[23]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][24] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [24]),
        .Q(doutb[24]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][25] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [25]),
        .Q(doutb[25]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][26] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [26]),
        .Q(doutb[26]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][27] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [27]),
        .Q(doutb[27]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][28] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [28]),
        .Q(doutb[28]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][29] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [29]),
        .Q(doutb[29]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][2] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [2]),
        .Q(doutb[2]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][30] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [30]),
        .Q(doutb[30]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][31] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [31]),
        .Q(doutb[31]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][32] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [32]),
        .Q(doutb[32]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][33] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [33]),
        .Q(doutb[33]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][34] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [34]),
        .Q(doutb[34]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][3] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [3]),
        .Q(doutb[3]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][4] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [4]),
        .Q(doutb[4]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [5]),
        .Q(doutb[5]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [6]),
        .Q(doutb[6]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][7] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [7]),
        .Q(doutb[7]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][8] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [8]),
        .Q(doutb[8]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][9] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [9]),
        .Q(doutb[9]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[0] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [0]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [0]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[10] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [10]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [10]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[11] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [11]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [11]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[12] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [12]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [12]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[13] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [13]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [13]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[14] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [14]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [14]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[15] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [15]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [15]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[16] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [16]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [16]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[17] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [17]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [17]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[18] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [18]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [18]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[19] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [19]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [19]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[1] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [1]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [1]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[20] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [20]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [20]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[21] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [21]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [21]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[22] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [22]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [22]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[23] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [23]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [23]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[24] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [24]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [24]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [25]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [25]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[26] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [26]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [26]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[27] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [27]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [27]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[28] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [28]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [28]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[29] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [29]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [29]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[2] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [2]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [2]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[30] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [30]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [30]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[31] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [31]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [31]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[32] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [32]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [32]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[33] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [33]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [33]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[34] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [34]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [34]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[3] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [3]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [3]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[4] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [4]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [4]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[5] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [5]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [5]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[6] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [6]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [6]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[7] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [7]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [7]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[8] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [8]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [8]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[9] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [9]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "560" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "13" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[1:0]),
        .DIB(dina[3:2]),
        .DIC(dina[5:4]),
        .DID(dina[7:6]),
        .DIE(dina[9:8]),
        .DIF(dina[11:10]),
        .DIG(dina[13:12]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [1:0]),
        .DOB(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [3:2]),
        .DOC(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [5:4]),
        .DOD(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [7:6]),
        .DOE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [9:8]),
        .DOF(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [11:10]),
        .DOG(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [13:12]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13_DOH_UNCONNECTED [1:0]),
        .WCLK(clkb),
        .WE(wea));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "560" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "27" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[15:14]),
        .DIB(dina[17:16]),
        .DIC(dina[19:18]),
        .DID(dina[21:20]),
        .DIE(dina[23:22]),
        .DIF(dina[25:24]),
        .DIG(dina[27:26]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [15:14]),
        .DOB(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [17:16]),
        .DOC(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [19:18]),
        .DOD(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [21:20]),
        .DOE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [23:22]),
        .DOF(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [25:24]),
        .DOG(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [27:26]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27_DOH_UNCONNECTED [1:0]),
        .WCLK(clkb),
        .WE(wea));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "560" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem_reg_0_15_28_34" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "34" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_34 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[29:28]),
        .DIB(dina[31:30]),
        .DIC(dina[33:32]),
        .DID({1'b0,dina[34]}),
        .DIE({1'b0,1'b0}),
        .DIF({1'b0,1'b0}),
        .DIG({1'b0,1'b0}),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [29:28]),
        .DOB(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [31:30]),
        .DOC(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [33:32]),
        .DOD({\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_34_DOD_UNCONNECTED [1],\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [34]}),
        .DOE(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_34_DOE_UNCONNECTED [1:0]),
        .DOF(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_34_DOF_UNCONNECTED [1:0]),
        .DOG(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_34_DOG_UNCONNECTED [1:0]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_34_DOH_UNCONNECTED [1:0]),
        .WCLK(clkb),
        .WE(wea));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
