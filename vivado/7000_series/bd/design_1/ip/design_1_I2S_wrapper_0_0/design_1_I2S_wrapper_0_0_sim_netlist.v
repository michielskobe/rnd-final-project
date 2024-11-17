// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Sun Nov 17 16:09:15 2024
// Host        : fedora running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/debber/Documents/__KuLeuven/GroepT/Fase4/semester1/rnd/team-e/vivado/7000_series/bd/design_1/ip/design_1_I2S_wrapper_0_0/design_1_I2S_wrapper_0_0_sim_netlist.v
// Design      : design_1_I2S_wrapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_I2S_wrapper_0_0,I2S_wrapper,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "I2S_wrapper,Vivado 2024.1" *) 
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 m_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME m_clk, ASSOCIATED_RESET m_rst, FREQ_HZ 12288013, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input m_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 m_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME m_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m_rst;
  output mclk_r;
  output lrclk_r;
  output sclk_r;
  output mclk_t;
  output lrclk_t;
  output sclk_t;
  input data_in;
  output data_out;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_in TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_in, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 4, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_TValid_in;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_in TLAST" *) input s_TLast_in;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_in TDATA" *) input [23:0]s_TData_in;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_in TID" *) input [3:0]s_TID_in;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_in TREADY" *) output s_TReady_in;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_out TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_out, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 4, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output s_TValid_out;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_out TLAST" *) output s_TLast_out;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_out TDATA" *) output [23:0]s_TData_out;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_out TID" *) output [3:0]s_TID_out;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_out TREADY" *) input s_TReady_out;

  wire data_in;
  wire data_out;
  wire lrclk_r;
  wire lrclk_t;
  wire m_clk;
  wire m_rst;
  wire mclk_r;
  wire mclk_t;
  wire [23:0]s_TData_in;
  wire [23:0]s_TData_out;
  wire [3:0]s_TID_in;
  wire [3:0]s_TID_out;
  wire s_TLast_in;
  wire s_TLast_out;
  wire s_TReady_in;
  wire s_TReady_out;
  wire s_TValid_in;
  wire s_TValid_out;
  wire sclk_r;
  wire sclk_t;

  (* KEEP_HIERARCHY = "soft" *) 
  (* g_chip_scope = "True" *) 
  (* g_clock_div_lrclk = "64" *) 
  (* g_clock_div_sclk = "4" *) 
  design_1_I2S_wrapper_0_0_I2S_wrapper U0
       (.data_in(data_in),
        .data_out(data_out),
        .lrclk_r(lrclk_r),
        .lrclk_t(lrclk_t),
        .m_clk(m_clk),
        .m_rst(m_rst),
        .mclk_r(mclk_r),
        .mclk_t(mclk_t),
        .s_TData_in(s_TData_in),
        .s_TData_out(s_TData_out),
        .s_TID_in(s_TID_in),
        .s_TID_out(s_TID_out),
        .s_TLast_in(s_TLast_in),
        .s_TLast_out(s_TLast_out),
        .s_TReady_in(s_TReady_in),
        .s_TReady_out(s_TReady_out),
        .s_TValid_in(s_TValid_in),
        .s_TValid_out(s_TValid_out),
        .sclk_r(sclk_r),
        .sclk_t(sclk_t));
endmodule

(* ORIG_REF_NAME = "I2S_clock_gen" *) (* g_chip_scope = "True" *) (* g_clock_div_lrclk = "64" *) 
(* g_clock_div_sclk = "4" *) (* keep_hierarchy = "soft" *) 
module design_1_I2S_wrapper_0_0_I2S_clock_gen
   (m_clk,
    mclk,
    sclk,
    lrclk);
  input m_clk;
  output mclk;
  output sclk;
  output lrclk;

  (* MARK_DEBUG *) wire i_lrclk;
  (* MARK_DEBUG *) wire i_sclk;
  wire lr_counter;
  wire \lr_counter[5]_i_2_n_0 ;
  wire \lr_counter[5]_i_4_n_0 ;
  wire [5:0]lr_counter_reg;
  wire m_clk;
  wire [5:0]p_0_in;
  wire [1:0]serial_counter;
  wire \serial_counter[0]_i_1_n_0 ;
  wire \serial_counter[1]_i_1_n_0 ;

  assign lrclk = i_lrclk;
  assign mclk = m_clk;
  assign sclk = i_sclk;
  LUT6 #(
    .INIT(64'h1555555555555555)) 
    i_lrclk_inferred_i_1
       (.I0(lr_counter_reg[5]),
        .I1(lr_counter_reg[3]),
        .I2(lr_counter_reg[2]),
        .I3(lr_counter_reg[0]),
        .I4(lr_counter_reg[4]),
        .I5(lr_counter_reg[1]),
        .O(i_lrclk));
  LUT2 #(
    .INIT(4'h1)) 
    i_sclk_inferred_i_1
       (.I0(serial_counter[1]),
        .I1(serial_counter[0]),
        .O(i_sclk));
  LUT1 #(
    .INIT(2'h1)) 
    \lr_counter[0]_i_1 
       (.I0(lr_counter_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lr_counter[1]_i_1 
       (.I0(lr_counter_reg[0]),
        .I1(lr_counter_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \lr_counter[2]_i_1 
       (.I0(lr_counter_reg[0]),
        .I1(lr_counter_reg[1]),
        .I2(lr_counter_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \lr_counter[3]_i_1 
       (.I0(lr_counter_reg[1]),
        .I1(lr_counter_reg[0]),
        .I2(lr_counter_reg[2]),
        .I3(lr_counter_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \lr_counter[4]_i_1 
       (.I0(lr_counter_reg[2]),
        .I1(lr_counter_reg[0]),
        .I2(lr_counter_reg[1]),
        .I3(lr_counter_reg[3]),
        .I4(lr_counter_reg[4]),
        .O(p_0_in[4]));
  LUT3 #(
    .INIT(8'h80)) 
    \lr_counter[5]_i_1 
       (.I0(serial_counter[0]),
        .I1(serial_counter[1]),
        .I2(\lr_counter[5]_i_4_n_0 ),
        .O(lr_counter));
  LUT2 #(
    .INIT(4'h8)) 
    \lr_counter[5]_i_2 
       (.I0(serial_counter[1]),
        .I1(serial_counter[0]),
        .O(\lr_counter[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \lr_counter[5]_i_3 
       (.I0(lr_counter_reg[3]),
        .I1(lr_counter_reg[1]),
        .I2(lr_counter_reg[0]),
        .I3(lr_counter_reg[2]),
        .I4(lr_counter_reg[4]),
        .I5(lr_counter_reg[5]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \lr_counter[5]_i_4 
       (.I0(lr_counter_reg[2]),
        .I1(lr_counter_reg[1]),
        .I2(lr_counter_reg[5]),
        .I3(lr_counter_reg[0]),
        .I4(lr_counter_reg[3]),
        .I5(lr_counter_reg[4]),
        .O(\lr_counter[5]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[0] 
       (.C(m_clk),
        .CE(\lr_counter[5]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(lr_counter_reg[0]),
        .R(lr_counter));
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[1] 
       (.C(m_clk),
        .CE(\lr_counter[5]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(lr_counter_reg[1]),
        .R(lr_counter));
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[2] 
       (.C(m_clk),
        .CE(\lr_counter[5]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(lr_counter_reg[2]),
        .R(lr_counter));
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[3] 
       (.C(m_clk),
        .CE(\lr_counter[5]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(lr_counter_reg[3]),
        .R(lr_counter));
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[4] 
       (.C(m_clk),
        .CE(\lr_counter[5]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(lr_counter_reg[4]),
        .R(lr_counter));
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[5] 
       (.C(m_clk),
        .CE(\lr_counter[5]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(lr_counter_reg[5]),
        .R(lr_counter));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \serial_counter[0]_i_1 
       (.I0(serial_counter[0]),
        .O(\serial_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \serial_counter[1]_i_1 
       (.I0(serial_counter[0]),
        .I1(serial_counter[1]),
        .O(\serial_counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \serial_counter_reg[0] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\serial_counter[0]_i_1_n_0 ),
        .Q(serial_counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \serial_counter_reg[1] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\serial_counter[1]_i_1_n_0 ),
        .Q(serial_counter[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "I2S_rec" *) (* g_channel_offset = "4'b0000" *) (* g_clock_div_lrclk = "64" *) 
(* g_clock_div_sclk = "4" *) 
module design_1_I2S_wrapper_0_0_I2S_rec
   (m_clk,
    m_rst,
    mclk,
    lrclk,
    sclk,
    data_in,
    \axi_out_fwd[TValid] ,
    \axi_out_fwd[TLast] ,
    \axi_out_fwd[TData] ,
    \axi_out_fwd[TID] ,
    \axi_out_bwd[TReady] );
  input m_clk;
  input m_rst;
  output mclk;
  output lrclk;
  output sclk;
  input data_in;
  output \axi_out_fwd[TValid] ;
  output \axi_out_fwd[TLast] ;
  output [23:0]\axi_out_fwd[TData] ;
  output [3:0]\axi_out_fwd[TID] ;
  input \axi_out_bwd[TReady] ;

  wire \<const0> ;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \axi_out_bwd[TReady] ;
  wire [23:0]\axi_out_fwd[TData] ;
  wire \axi_out_fwd[TData][23]_i_1_n_0 ;
  wire [0:0]\^axi_out_fwd[TID] ;
  wire \axi_out_fwd[TValid] ;
  wire \axi_out_fwd[TValid]_i_1_n_0 ;
  wire busy_i_1_n_0;
  wire busy_i_2_n_0;
  wire busy_reg_n_0;
  wire data_in;
  wire is_l_sample_inv_i_1_n_0;
  wire is_l_sample_reg_inv_n_0;
  wire l_buffr0;
  wire l_buffr_i_1_n_0;
  wire l_buffr_reg_n_0;
  wire l_sample;
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
  wire l_sent_prev;
  wire l_sent_prev_i_1_n_0;
  wire lr_counter;
  wire \lr_counter[5]_i_4_n_0 ;
  wire [5:0]lr_counter_reg;
  wire m_clk;
  wire m_rst;
  wire [4:0]minusOp;
  wire offset;
  wire \offset[4]_i_1_n_0 ;
  wire [4:0]offset_reg;
  wire [5:0]p_0_in;
  wire [23:0]r_sample;
  wire \r_sample[0]_i_1_n_0 ;
  wire \r_sample[10]_i_1_n_0 ;
  wire \r_sample[11]_i_1_n_0 ;
  wire \r_sample[11]_i_2_n_0 ;
  wire \r_sample[12]_i_1_n_0 ;
  wire \r_sample[13]_i_1_n_0 ;
  wire \r_sample[13]_i_2_n_0 ;
  wire \r_sample[14]_i_1_n_0 ;
  wire \r_sample[14]_i_2_n_0 ;
  wire \r_sample[14]_i_3_n_0 ;
  wire \r_sample[15]_i_1_n_0 ;
  wire \r_sample[16]_i_1_n_0 ;
  wire \r_sample[17]_i_1_n_0 ;
  wire \r_sample[18]_i_1_n_0 ;
  wire \r_sample[19]_i_1_n_0 ;
  wire \r_sample[19]_i_2_n_0 ;
  wire \r_sample[1]_i_1_n_0 ;
  wire \r_sample[20]_i_1_n_0 ;
  wire \r_sample[20]_i_2_n_0 ;
  wire \r_sample[21]_i_1_n_0 ;
  wire \r_sample[22]_i_1_n_0 ;
  wire \r_sample[22]_i_2_n_0 ;
  wire \r_sample[23]_i_1_n_0 ;
  wire \r_sample[23]_i_2_n_0 ;
  wire \r_sample[23]_i_3_n_0 ;
  wire \r_sample[2]_i_1_n_0 ;
  wire \r_sample[3]_i_1_n_0 ;
  wire \r_sample[4]_i_1_n_0 ;
  wire \r_sample[5]_i_1_n_0 ;
  wire \r_sample[6]_i_1_n_0 ;
  wire \r_sample[7]_i_1_n_0 ;
  wire \r_sample[8]_i_1_n_0 ;
  wire \r_sample[9]_i_1_n_0 ;
  wire r_sent;
  wire r_sent_i_1_n_0;
  wire r_sent_i_2_n_0;
  wire [1:0]serial_counter;
  wire serial_counter0;
  wire \serial_counter[0]_i_1_n_0 ;
  wire \serial_counter[1]_i_1_n_0 ;
  wire start;
  wire start0;

  assign \axi_out_fwd[TID] [3] = \<const0> ;
  assign \axi_out_fwd[TID] [2] = \<const0> ;
  assign \axi_out_fwd[TID] [1] = \<const0> ;
  assign \axi_out_fwd[TID] [0] = \^axi_out_fwd[TID] [0];
  assign \axi_out_fwd[TLast]  = \<const0> ;
  assign lrclk = \<const0> ;
  assign mclk = \<const0> ;
  assign sclk = \<const0> ;
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0700)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\axi_out_bwd[TReady] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(l_buffr_reg_n_0),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(m_rst),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00FC44)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\axi_out_bwd[TReady] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(l_buffr_reg_n_0),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(m_rst),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCCCC888)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\axi_out_bwd[TReady] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(l_buffr_reg_n_0),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(m_rst),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "e_idle:001,e_data:010,e_wait:100," *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "e_idle:001,e_data:010,e_wait:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "e_idle:001,e_data:010,e_wait:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(1'b0));
  GND GND
       (.G(\<const0> ));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_out_fwd[TData][23]_i_1 
       (.I0(l_buffr_reg_n_0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(m_rst),
        .O(\axi_out_fwd[TData][23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8F8800008F88)) 
    \axi_out_fwd[TValid]_i_1 
       (.I0(l_buffr_reg_n_0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\axi_out_bwd[TReady] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(m_rst),
        .I5(\axi_out_fwd[TValid] ),
        .O(\axi_out_fwd[TValid]_i_1_n_0 ));
  FDRE \axi_out_fwd_reg[TData][0] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(\l_sample_reg_n_0_[0] ),
        .Q(\axi_out_fwd[TData] [0]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][10] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(\l_sample_reg_n_0_[10] ),
        .Q(\axi_out_fwd[TData] [10]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][11] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(\l_sample_reg_n_0_[11] ),
        .Q(\axi_out_fwd[TData] [11]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][12] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(\l_sample_reg_n_0_[12] ),
        .Q(\axi_out_fwd[TData] [12]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][13] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(\l_sample_reg_n_0_[13] ),
        .Q(\axi_out_fwd[TData] [13]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][14] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(\l_sample_reg_n_0_[14] ),
        .Q(\axi_out_fwd[TData] [14]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][15] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(\l_sample_reg_n_0_[15] ),
        .Q(\axi_out_fwd[TData] [15]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][16] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(\l_sample_reg_n_0_[16] ),
        .Q(\axi_out_fwd[TData] [16]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][17] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(\l_sample_reg_n_0_[17] ),
        .Q(\axi_out_fwd[TData] [17]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][18] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(\l_sample_reg_n_0_[18] ),
        .Q(\axi_out_fwd[TData] [18]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][19] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(\l_sample_reg_n_0_[19] ),
        .Q(\axi_out_fwd[TData] [19]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][1] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(\l_sample_reg_n_0_[1] ),
        .Q(\axi_out_fwd[TData] [1]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][20] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(\l_sample_reg_n_0_[20] ),
        .Q(\axi_out_fwd[TData] [20]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][21] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(\l_sample_reg_n_0_[21] ),
        .Q(\axi_out_fwd[TData] [21]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][22] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(\l_sample_reg_n_0_[22] ),
        .Q(\axi_out_fwd[TData] [22]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][23] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(\l_sample_reg_n_0_[23] ),
        .Q(\axi_out_fwd[TData] [23]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][2] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(\l_sample_reg_n_0_[2] ),
        .Q(\axi_out_fwd[TData] [2]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][3] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(\l_sample_reg_n_0_[3] ),
        .Q(\axi_out_fwd[TData] [3]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][4] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(\l_sample_reg_n_0_[4] ),
        .Q(\axi_out_fwd[TData] [4]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][5] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(\l_sample_reg_n_0_[5] ),
        .Q(\axi_out_fwd[TData] [5]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][6] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(\l_sample_reg_n_0_[6] ),
        .Q(\axi_out_fwd[TData] [6]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][7] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(\l_sample_reg_n_0_[7] ),
        .Q(\axi_out_fwd[TData] [7]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][8] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(\l_sample_reg_n_0_[8] ),
        .Q(\axi_out_fwd[TData] [8]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TData][9] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(\l_sample_reg_n_0_[9] ),
        .Q(\axi_out_fwd[TData] [9]),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TID][0] 
       (.C(m_clk),
        .CE(\axi_out_fwd[TData][23]_i_1_n_0 ),
        .D(is_l_sample_reg_inv_n_0),
        .Q(\^axi_out_fwd[TID] ),
        .R(1'b0));
  FDRE \axi_out_fwd_reg[TValid] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\axi_out_fwd[TValid]_i_1_n_0 ),
        .Q(\axi_out_fwd[TValid] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEEE0F0F0F0F0F0F0)) 
    busy_i_1
       (.I0(offset_reg[4]),
        .I1(busy_i_2_n_0),
        .I2(busy_reg_n_0),
        .I3(start),
        .I4(serial_counter[1]),
        .I5(serial_counter[0]),
        .O(busy_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    busy_i_2
       (.I0(offset_reg[0]),
        .I1(offset_reg[3]),
        .I2(offset_reg[2]),
        .I3(offset_reg[1]),
        .O(busy_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    busy_reg
       (.C(m_clk),
        .CE(1'b1),
        .D(busy_i_1_n_0),
        .Q(busy_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    is_l_sample_inv_i_1
       (.I0(lr_counter_reg[4]),
        .I1(lr_counter_reg[2]),
        .I2(lr_counter_reg[0]),
        .I3(lr_counter_reg[1]),
        .I4(lr_counter_reg[3]),
        .I5(lr_counter_reg[5]),
        .O(is_l_sample_inv_i_1_n_0));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    is_l_sample_reg_inv
       (.C(m_clk),
        .CE(l_sample),
        .D(is_l_sample_inv_i_1_n_0),
        .Q(is_l_sample_reg_inv_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAAF040F262)) 
    l_buffr_i_1
       (.I0(l_buffr_reg_n_0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(l_buffr0),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(m_rst),
        .O(l_buffr_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    l_buffr_i_2
       (.I0(l_sent),
        .I1(l_sent_prev),
        .O(l_buffr0));
  FDRE #(
    .INIT(1'b0)) 
    l_buffr_reg
       (.C(m_clk),
        .CE(1'b1),
        .D(l_buffr_i_1_n_0),
        .Q(l_buffr_reg_n_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \l_sample[23]_i_1 
       (.I0(r_sent),
        .I1(serial_counter[1]),
        .I2(serial_counter[0]),
        .O(l_sample));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[0] 
       (.C(m_clk),
        .CE(l_sample),
        .D(r_sample[0]),
        .Q(\l_sample_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[10] 
       (.C(m_clk),
        .CE(l_sample),
        .D(r_sample[10]),
        .Q(\l_sample_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[11] 
       (.C(m_clk),
        .CE(l_sample),
        .D(r_sample[11]),
        .Q(\l_sample_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[12] 
       (.C(m_clk),
        .CE(l_sample),
        .D(r_sample[12]),
        .Q(\l_sample_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[13] 
       (.C(m_clk),
        .CE(l_sample),
        .D(r_sample[13]),
        .Q(\l_sample_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[14] 
       (.C(m_clk),
        .CE(l_sample),
        .D(r_sample[14]),
        .Q(\l_sample_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[15] 
       (.C(m_clk),
        .CE(l_sample),
        .D(r_sample[15]),
        .Q(\l_sample_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[16] 
       (.C(m_clk),
        .CE(l_sample),
        .D(r_sample[16]),
        .Q(\l_sample_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[17] 
       (.C(m_clk),
        .CE(l_sample),
        .D(r_sample[17]),
        .Q(\l_sample_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[18] 
       (.C(m_clk),
        .CE(l_sample),
        .D(r_sample[18]),
        .Q(\l_sample_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[19] 
       (.C(m_clk),
        .CE(l_sample),
        .D(r_sample[19]),
        .Q(\l_sample_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[1] 
       (.C(m_clk),
        .CE(l_sample),
        .D(r_sample[1]),
        .Q(\l_sample_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[20] 
       (.C(m_clk),
        .CE(l_sample),
        .D(r_sample[20]),
        .Q(\l_sample_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[21] 
       (.C(m_clk),
        .CE(l_sample),
        .D(r_sample[21]),
        .Q(\l_sample_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[22] 
       (.C(m_clk),
        .CE(l_sample),
        .D(r_sample[22]),
        .Q(\l_sample_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[23] 
       (.C(m_clk),
        .CE(l_sample),
        .D(r_sample[23]),
        .Q(\l_sample_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[2] 
       (.C(m_clk),
        .CE(l_sample),
        .D(r_sample[2]),
        .Q(\l_sample_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[3] 
       (.C(m_clk),
        .CE(l_sample),
        .D(r_sample[3]),
        .Q(\l_sample_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[4] 
       (.C(m_clk),
        .CE(l_sample),
        .D(r_sample[4]),
        .Q(\l_sample_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[5] 
       (.C(m_clk),
        .CE(l_sample),
        .D(r_sample[5]),
        .Q(\l_sample_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[6] 
       (.C(m_clk),
        .CE(l_sample),
        .D(r_sample[6]),
        .Q(\l_sample_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[7] 
       (.C(m_clk),
        .CE(l_sample),
        .D(r_sample[7]),
        .Q(\l_sample_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[8] 
       (.C(m_clk),
        .CE(l_sample),
        .D(r_sample[8]),
        .Q(\l_sample_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[9] 
       (.C(m_clk),
        .CE(l_sample),
        .D(r_sample[9]),
        .Q(\l_sample_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    l_sent_i_1
       (.I0(r_sent),
        .I1(serial_counter[1]),
        .I2(serial_counter[0]),
        .I3(l_sent),
        .O(l_sent_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    l_sent_prev_i_1
       (.I0(l_sent),
        .I1(m_rst),
        .I2(l_sent_prev),
        .O(l_sent_prev_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    l_sent_prev_reg
       (.C(m_clk),
        .CE(1'b1),
        .D(l_sent_prev_i_1_n_0),
        .Q(l_sent_prev),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    l_sent_reg
       (.C(m_clk),
        .CE(1'b1),
        .D(l_sent_i_1_n_0),
        .Q(l_sent),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \lr_counter[0]_i_1 
       (.I0(lr_counter_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lr_counter[1]_i_1 
       (.I0(lr_counter_reg[0]),
        .I1(lr_counter_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \lr_counter[2]_i_1 
       (.I0(lr_counter_reg[1]),
        .I1(lr_counter_reg[0]),
        .I2(lr_counter_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \lr_counter[3]_i_1 
       (.I0(lr_counter_reg[2]),
        .I1(lr_counter_reg[0]),
        .I2(lr_counter_reg[1]),
        .I3(lr_counter_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \lr_counter[4]_i_1 
       (.I0(lr_counter_reg[3]),
        .I1(lr_counter_reg[1]),
        .I2(lr_counter_reg[0]),
        .I3(lr_counter_reg[2]),
        .I4(lr_counter_reg[4]),
        .O(p_0_in[4]));
  LUT4 #(
    .INIT(16'h0080)) 
    \lr_counter[5]_i_1 
       (.I0(serial_counter[0]),
        .I1(serial_counter[1]),
        .I2(lr_counter_reg[5]),
        .I3(\lr_counter[5]_i_4_n_0 ),
        .O(lr_counter));
  LUT2 #(
    .INIT(4'h8)) 
    \lr_counter[5]_i_2 
       (.I0(serial_counter[1]),
        .I1(serial_counter[0]),
        .O(serial_counter0));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \lr_counter[5]_i_3 
       (.I0(lr_counter_reg[4]),
        .I1(lr_counter_reg[2]),
        .I2(lr_counter_reg[0]),
        .I3(lr_counter_reg[1]),
        .I4(lr_counter_reg[3]),
        .I5(lr_counter_reg[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \lr_counter[5]_i_4 
       (.I0(lr_counter_reg[3]),
        .I1(lr_counter_reg[1]),
        .I2(lr_counter_reg[0]),
        .I3(lr_counter_reg[2]),
        .I4(lr_counter_reg[4]),
        .O(\lr_counter[5]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[0] 
       (.C(m_clk),
        .CE(serial_counter0),
        .D(p_0_in[0]),
        .Q(lr_counter_reg[0]),
        .R(lr_counter));
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[1] 
       (.C(m_clk),
        .CE(serial_counter0),
        .D(p_0_in[1]),
        .Q(lr_counter_reg[1]),
        .R(lr_counter));
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[2] 
       (.C(m_clk),
        .CE(serial_counter0),
        .D(p_0_in[2]),
        .Q(lr_counter_reg[2]),
        .R(lr_counter));
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[3] 
       (.C(m_clk),
        .CE(serial_counter0),
        .D(p_0_in[3]),
        .Q(lr_counter_reg[3]),
        .R(lr_counter));
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[4] 
       (.C(m_clk),
        .CE(serial_counter0),
        .D(p_0_in[4]),
        .Q(lr_counter_reg[4]),
        .R(lr_counter));
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[5] 
       (.C(m_clk),
        .CE(serial_counter0),
        .D(p_0_in[5]),
        .Q(lr_counter_reg[5]),
        .R(lr_counter));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \offset[0]_i_1 
       (.I0(offset_reg[0]),
        .O(minusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \offset[1]_i_1 
       (.I0(offset_reg[1]),
        .I1(offset_reg[0]),
        .O(minusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \offset[2]_i_1 
       (.I0(offset_reg[0]),
        .I1(offset_reg[1]),
        .I2(offset_reg[2]),
        .O(minusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \offset[3]_i_1 
       (.I0(offset_reg[1]),
        .I1(offset_reg[2]),
        .I2(offset_reg[0]),
        .I3(offset_reg[3]),
        .O(minusOp[3]));
  LUT5 #(
    .INIT(32'h00000004)) 
    \offset[4]_i_1 
       (.I0(\r_sample[14]_i_2_n_0 ),
        .I1(offset_reg[0]),
        .I2(offset_reg[3]),
        .I3(offset_reg[2]),
        .I4(offset_reg[1]),
        .O(\offset[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE000)) 
    \offset[4]_i_2 
       (.I0(start),
        .I1(busy_reg_n_0),
        .I2(serial_counter[0]),
        .I3(serial_counter[1]),
        .O(offset));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \offset[4]_i_3 
       (.I0(offset_reg[1]),
        .I1(offset_reg[2]),
        .I2(offset_reg[0]),
        .I3(offset_reg[3]),
        .I4(offset_reg[4]),
        .O(minusOp[4]));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[0] 
       (.C(m_clk),
        .CE(offset),
        .D(minusOp[0]),
        .Q(offset_reg[0]),
        .R(\offset[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[1] 
       (.C(m_clk),
        .CE(offset),
        .D(minusOp[1]),
        .Q(offset_reg[1]),
        .R(\offset[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[2] 
       (.C(m_clk),
        .CE(offset),
        .D(minusOp[2]),
        .Q(offset_reg[2]),
        .R(\offset[4]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \offset_reg[3] 
       (.C(m_clk),
        .CE(offset),
        .D(minusOp[3]),
        .Q(offset_reg[3]),
        .S(\offset[4]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \offset_reg[4] 
       (.C(m_clk),
        .CE(offset),
        .D(minusOp[4]),
        .Q(offset_reg[4]),
        .S(\offset[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \r_sample[0]_i_1 
       (.I0(r_sample[0]),
        .I1(offset_reg[1]),
        .I2(offset_reg[2]),
        .I3(\r_sample[20]_i_2_n_0 ),
        .I4(\r_sample[14]_i_2_n_0 ),
        .I5(data_in),
        .O(\r_sample[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \r_sample[10]_i_1 
       (.I0(data_in),
        .I1(offset_reg[2]),
        .I2(offset_reg[1]),
        .I3(\r_sample[14]_i_2_n_0 ),
        .I4(\r_sample[14]_i_3_n_0 ),
        .I5(r_sample[10]),
        .O(\r_sample[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \r_sample[11]_i_1 
       (.I0(data_in),
        .I1(offset_reg[0]),
        .I2(offset_reg[3]),
        .I3(\r_sample[14]_i_2_n_0 ),
        .I4(\r_sample[11]_i_2_n_0 ),
        .I5(r_sample[11]),
        .O(\r_sample[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_sample[11]_i_2 
       (.I0(offset_reg[2]),
        .I1(offset_reg[1]),
        .O(\r_sample[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \r_sample[12]_i_1 
       (.I0(data_in),
        .I1(\r_sample[14]_i_2_n_0 ),
        .I2(offset_reg[2]),
        .I3(offset_reg[1]),
        .I4(\r_sample[14]_i_3_n_0 ),
        .I5(r_sample[12]),
        .O(\r_sample[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \r_sample[13]_i_1 
       (.I0(data_in),
        .I1(offset_reg[0]),
        .I2(offset_reg[3]),
        .I3(offset_reg[2]),
        .I4(\r_sample[13]_i_2_n_0 ),
        .I5(r_sample[13]),
        .O(\r_sample[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000200020000000)) 
    \r_sample[13]_i_2 
       (.I0(offset_reg[1]),
        .I1(offset_reg[4]),
        .I2(serial_counter[1]),
        .I3(serial_counter[0]),
        .I4(busy_reg_n_0),
        .I5(start),
        .O(\r_sample[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \r_sample[14]_i_1 
       (.I0(data_in),
        .I1(offset_reg[2]),
        .I2(offset_reg[1]),
        .I3(\r_sample[14]_i_2_n_0 ),
        .I4(\r_sample[14]_i_3_n_0 ),
        .I5(r_sample[14]),
        .O(\r_sample[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFF1FFF)) 
    \r_sample[14]_i_2 
       (.I0(start),
        .I1(busy_reg_n_0),
        .I2(serial_counter[0]),
        .I3(serial_counter[1]),
        .I4(offset_reg[4]),
        .O(\r_sample[14]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \r_sample[14]_i_3 
       (.I0(offset_reg[0]),
        .I1(offset_reg[3]),
        .O(\r_sample[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \r_sample[15]_i_1 
       (.I0(data_in),
        .I1(\r_sample[23]_i_3_n_0 ),
        .I2(offset_reg[1]),
        .I3(offset_reg[2]),
        .I4(\r_sample[19]_i_2_n_0 ),
        .I5(r_sample[15]),
        .O(\r_sample[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \r_sample[16]_i_1 
       (.I0(data_in),
        .I1(\r_sample[23]_i_3_n_0 ),
        .I2(offset_reg[1]),
        .I3(offset_reg[2]),
        .I4(\r_sample[20]_i_2_n_0 ),
        .I5(r_sample[16]),
        .O(\r_sample[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \r_sample[17]_i_1 
       (.I0(data_in),
        .I1(offset_reg[2]),
        .I2(offset_reg[0]),
        .I3(offset_reg[3]),
        .I4(\r_sample[22]_i_2_n_0 ),
        .I5(r_sample[17]),
        .O(\r_sample[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \r_sample[18]_i_1 
       (.I0(data_in),
        .I1(offset_reg[2]),
        .I2(offset_reg[3]),
        .I3(offset_reg[0]),
        .I4(\r_sample[22]_i_2_n_0 ),
        .I5(r_sample[18]),
        .O(\r_sample[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \r_sample[19]_i_1 
       (.I0(data_in),
        .I1(\r_sample[19]_i_2_n_0 ),
        .I2(offset_reg[2]),
        .I3(offset_reg[1]),
        .I4(\r_sample[23]_i_3_n_0 ),
        .I5(r_sample[19]),
        .O(\r_sample[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r_sample[19]_i_2 
       (.I0(offset_reg[0]),
        .I1(offset_reg[3]),
        .O(\r_sample[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \r_sample[1]_i_1 
       (.I0(data_in),
        .I1(offset_reg[2]),
        .I2(offset_reg[1]),
        .I3(\r_sample[14]_i_2_n_0 ),
        .I4(\r_sample[19]_i_2_n_0 ),
        .I5(r_sample[1]),
        .O(\r_sample[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \r_sample[20]_i_1 
       (.I0(data_in),
        .I1(\r_sample[20]_i_2_n_0 ),
        .I2(offset_reg[2]),
        .I3(offset_reg[1]),
        .I4(\r_sample[23]_i_3_n_0 ),
        .I5(r_sample[20]),
        .O(\r_sample[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \r_sample[20]_i_2 
       (.I0(offset_reg[3]),
        .I1(offset_reg[0]),
        .O(\r_sample[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \r_sample[21]_i_1 
       (.I0(data_in),
        .I1(offset_reg[0]),
        .I2(offset_reg[3]),
        .I3(offset_reg[2]),
        .I4(\r_sample[22]_i_2_n_0 ),
        .I5(r_sample[21]),
        .O(\r_sample[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \r_sample[22]_i_1 
       (.I0(data_in),
        .I1(offset_reg[3]),
        .I2(offset_reg[0]),
        .I3(offset_reg[2]),
        .I4(\r_sample[22]_i_2_n_0 ),
        .I5(r_sample[22]),
        .O(\r_sample[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8880000000000000)) 
    \r_sample[22]_i_2 
       (.I0(serial_counter[1]),
        .I1(serial_counter[0]),
        .I2(busy_reg_n_0),
        .I3(start),
        .I4(offset_reg[4]),
        .I5(offset_reg[1]),
        .O(\r_sample[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \r_sample[23]_i_1 
       (.I0(data_in),
        .I1(\r_sample[23]_i_2_n_0 ),
        .I2(offset_reg[0]),
        .I3(offset_reg[3]),
        .I4(\r_sample[23]_i_3_n_0 ),
        .I5(r_sample[23]),
        .O(\r_sample[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r_sample[23]_i_2 
       (.I0(offset_reg[1]),
        .I1(offset_reg[2]),
        .O(\r_sample[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hA8000000)) 
    \r_sample[23]_i_3 
       (.I0(offset_reg[4]),
        .I1(start),
        .I2(busy_reg_n_0),
        .I3(serial_counter[0]),
        .I4(serial_counter[1]),
        .O(\r_sample[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \r_sample[2]_i_1 
       (.I0(data_in),
        .I1(offset_reg[2]),
        .I2(offset_reg[1]),
        .I3(\r_sample[14]_i_2_n_0 ),
        .I4(\r_sample[20]_i_2_n_0 ),
        .I5(r_sample[2]),
        .O(\r_sample[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \r_sample[3]_i_1 
       (.I0(data_in),
        .I1(\r_sample[14]_i_2_n_0 ),
        .I2(offset_reg[2]),
        .I3(offset_reg[1]),
        .I4(\r_sample[19]_i_2_n_0 ),
        .I5(r_sample[3]),
        .O(\r_sample[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \r_sample[4]_i_1 
       (.I0(data_in),
        .I1(\r_sample[14]_i_2_n_0 ),
        .I2(offset_reg[2]),
        .I3(offset_reg[1]),
        .I4(\r_sample[20]_i_2_n_0 ),
        .I5(r_sample[4]),
        .O(\r_sample[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \r_sample[5]_i_1 
       (.I0(data_in),
        .I1(offset_reg[2]),
        .I2(offset_reg[1]),
        .I3(\r_sample[14]_i_2_n_0 ),
        .I4(\r_sample[19]_i_2_n_0 ),
        .I5(r_sample[5]),
        .O(\r_sample[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \r_sample[6]_i_1 
       (.I0(data_in),
        .I1(offset_reg[2]),
        .I2(offset_reg[1]),
        .I3(\r_sample[14]_i_2_n_0 ),
        .I4(\r_sample[20]_i_2_n_0 ),
        .I5(r_sample[6]),
        .O(\r_sample[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \r_sample[7]_i_1 
       (.I0(data_in),
        .I1(\r_sample[23]_i_2_n_0 ),
        .I2(offset_reg[0]),
        .I3(offset_reg[3]),
        .I4(\r_sample[14]_i_2_n_0 ),
        .I5(r_sample[7]),
        .O(\r_sample[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \r_sample[8]_i_1 
       (.I0(data_in),
        .I1(\r_sample[23]_i_2_n_0 ),
        .I2(offset_reg[0]),
        .I3(offset_reg[3]),
        .I4(\r_sample[14]_i_2_n_0 ),
        .I5(r_sample[8]),
        .O(\r_sample[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \r_sample[9]_i_1 
       (.I0(data_in),
        .I1(offset_reg[0]),
        .I2(offset_reg[3]),
        .I3(offset_reg[2]),
        .I4(\r_sample[13]_i_2_n_0 ),
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
    .INIT(64'h888B888B888B8888)) 
    r_sent_i_1
       (.I0(r_sent),
        .I1(r_sent_i_2_n_0),
        .I2(busy_i_2_n_0),
        .I3(offset_reg[4]),
        .I4(start),
        .I5(busy_reg_n_0),
        .O(r_sent_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h7)) 
    r_sent_i_2
       (.I0(serial_counter[0]),
        .I1(serial_counter[1]),
        .O(r_sent_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_sent_reg
       (.C(m_clk),
        .CE(1'b1),
        .D(r_sent_i_1_n_0),
        .Q(r_sent),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \serial_counter[0]_i_1 
       (.I0(serial_counter[0]),
        .O(\serial_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \serial_counter[1]_i_1 
       (.I0(serial_counter[0]),
        .I1(serial_counter[1]),
        .O(\serial_counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \serial_counter_reg[0] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\serial_counter[0]_i_1_n_0 ),
        .Q(serial_counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \serial_counter_reg[1] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\serial_counter[1]_i_1_n_0 ),
        .Q(serial_counter[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000002)) 
    start_i_1
       (.I0(lr_counter_reg[0]),
        .I1(lr_counter_reg[1]),
        .I2(lr_counter_reg[2]),
        .I3(lr_counter_reg[4]),
        .I4(lr_counter_reg[3]),
        .O(start0));
  FDRE #(
    .INIT(1'b0)) 
    start_reg
       (.C(m_clk),
        .CE(1'b1),
        .D(start0),
        .Q(start),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "I2S_trans" *) (* g_channel_offset = "4'b0000" *) (* g_chip_scope = "True" *) 
(* g_clock_div_lrclk = "64" *) (* g_clock_div_sclk = "4" *) 
module design_1_I2S_wrapper_0_0_I2S_trans
   (m_clk,
    m_rst,
    mclk,
    lrclk,
    sclk,
    data_out,
    \axi_in_fwd[TValid] ,
    \axi_in_fwd[TLast] ,
    \axi_in_fwd[TData] ,
    \axi_in_fwd[TID] ,
    \axi_in_bwd[TReady] );
  input m_clk;
  input m_rst;
  output mclk;
  output lrclk;
  output sclk;
  output data_out;
  input \axi_in_fwd[TValid] ;
  input \axi_in_fwd[TLast] ;
  input [23:0]\axi_in_fwd[TData] ;
  input [3:0]\axi_in_fwd[TID] ;
  output \axi_in_bwd[TReady] ;

  wire \<const0> ;
  wire \axi_in_bwd[TReady] ;
  wire \axi_in_bwd[TReady]_i_1_n_0 ;
  wire \axi_in_bwd[TReady]_i_2_n_0 ;
  wire [23:0]\axi_in_fwd[TData] ;
  wire [3:0]\axi_in_fwd[TID] ;
  wire \axi_in_fwd[TValid] ;
  (* MARK_DEBUG *) wire busy;
  wire busy_i_1_n_0;
  wire data_out;
  wire data_out_i_10_n_0;
  wire data_out_i_11_n_0;
  wire data_out_i_14_n_0;
  wire data_out_i_15_n_0;
  wire data_out_i_16_n_0;
  wire data_out_i_17_n_0;
  wire data_out_i_18_n_0;
  wire data_out_i_19_n_0;
  wire data_out_i_1_n_0;
  wire data_out_i_20_n_0;
  wire data_out_i_21_n_0;
  wire data_out_i_22_n_0;
  wire data_out_i_23_n_0;
  wire data_out_i_2_n_0;
  wire data_out_i_3_n_0;
  wire data_out_i_4_n_0;
  wire data_out_i_5_n_0;
  wire data_out_i_6_n_0;
  wire data_out_i_7_n_0;
  wire data_out_i_8_n_0;
  wire data_out_i_9_n_0;
  wire data_out_reg_i_12_n_0;
  wire data_out_reg_i_13_n_0;
  wire l_buffr_i_1_n_0;
  wire l_buffr_reg_n_0;
  wire l_sample;
  wire \l_sample[23]_i_2_n_0 ;
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
  (* MARK_DEBUG *) wire l_sent;
  wire l_sent_i_1_n_0;
  wire lr_counter;
  wire \lr_counter[5]_i_3_n_0 ;
  wire [5:0]lr_counter_reg;
  wire m_clk;
  wire m_rst;
  (* MARK_DEBUG *) wire [4:0]offset;
  wire \offset[0]_i_1_n_0 ;
  wire \offset[1]_i_1_n_0 ;
  wire \offset[2]_i_1_n_0 ;
  wire \offset[3]_i_1_n_0 ;
  wire \offset[4]_i_1_n_0 ;
  wire \offset[4]_i_3_n_0 ;
  wire \offset[4]_i_4_n_0 ;
  wire \offset[4]_i_5_n_0 ;
  wire [5:0]p_0_in__0;
  wire r_buffr_i_1_n_0;
  wire r_buffr_reg_n_0;
  wire r_sample;
  wire \r_sample[23]_i_2_n_0 ;
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
  (* MARK_DEBUG *) wire r_sent;
  wire r_sent_i_1_n_0;
  wire sample;
  wire \sample_reg_n_0_[0] ;
  wire \sample_reg_n_0_[10] ;
  wire \sample_reg_n_0_[11] ;
  wire \sample_reg_n_0_[12] ;
  wire \sample_reg_n_0_[13] ;
  wire \sample_reg_n_0_[14] ;
  wire \sample_reg_n_0_[15] ;
  wire \sample_reg_n_0_[16] ;
  wire \sample_reg_n_0_[17] ;
  wire \sample_reg_n_0_[18] ;
  wire \sample_reg_n_0_[19] ;
  wire \sample_reg_n_0_[1] ;
  wire \sample_reg_n_0_[20] ;
  wire \sample_reg_n_0_[21] ;
  wire \sample_reg_n_0_[22] ;
  wire \sample_reg_n_0_[23] ;
  wire \sample_reg_n_0_[2] ;
  wire \sample_reg_n_0_[3] ;
  wire \sample_reg_n_0_[4] ;
  wire \sample_reg_n_0_[5] ;
  wire \sample_reg_n_0_[6] ;
  wire \sample_reg_n_0_[7] ;
  wire \sample_reg_n_0_[8] ;
  wire \sample_reg_n_0_[9] ;
  wire [1:0]serial_counter;
  wire serial_counter0;
  wire \serial_counter[0]_i_1_n_0 ;
  wire \serial_counter[1]_i_1_n_0 ;
  (* MARK_DEBUG *) wire start;
  wire start_reg0;
  (* MARK_DEBUG *) wire [1:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;

  assign lrclk = \<const0> ;
  assign mclk = \<const0> ;
  assign sclk = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h888888888B8B88BB)) 
    \axi_in_bwd[TReady]_i_1 
       (.I0(\axi_in_bwd[TReady] ),
        .I1(m_rst),
        .I2(\axi_in_bwd[TReady]_i_2_n_0 ),
        .I3(\axi_in_fwd[TValid] ),
        .I4(state[1]),
        .I5(state[0]),
        .O(\axi_in_bwd[TReady]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_in_bwd[TReady]_i_2 
       (.I0(l_buffr_reg_n_0),
        .I1(r_buffr_reg_n_0),
        .O(\axi_in_bwd[TReady]_i_2_n_0 ));
  FDRE \axi_in_bwd_reg[TReady] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\axi_in_bwd[TReady]_i_1_n_0 ),
        .Q(\axi_in_bwd[TReady] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBF80BF80BF803F00)) 
    busy_i_1
       (.I0(\offset[4]_i_4_n_0 ),
        .I1(serial_counter[1]),
        .I2(serial_counter[0]),
        .I3(busy),
        .I4(busy),
        .I5(start),
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
  LUT6 #(
    .INIT(64'h08AAFFFF08AA0000)) 
    data_out_i_1
       (.I0(data_out_i_2_n_0),
        .I1(data_out_i_3_n_0),
        .I2(data_out_i_4_n_0),
        .I3(data_out_i_5_n_0),
        .I4(serial_counter0),
        .I5(data_out),
        .O(data_out_i_1_n_0));
  LUT5 #(
    .INIT(32'h55555556)) 
    data_out_i_10
       (.I0(offset[4]),
        .I1(offset[0]),
        .I2(offset[1]),
        .I3(offset[2]),
        .I4(offset[3]),
        .O(data_out_i_10_n_0));
  LUT4 #(
    .INIT(16'hAAA9)) 
    data_out_i_11
       (.I0(offset[3]),
        .I1(offset[2]),
        .I2(offset[1]),
        .I3(offset[0]),
        .O(data_out_i_11_n_0));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    data_out_i_14
       (.I0(\r_sample_reg_n_0_[20] ),
        .I1(\r_sample_reg_n_0_[21] ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(\r_sample_reg_n_0_[22] ),
        .I5(\r_sample_reg_n_0_[23] ),
        .O(data_out_i_14_n_0));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    data_out_i_15
       (.I0(\r_sample_reg_n_0_[16] ),
        .I1(\r_sample_reg_n_0_[17] ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(\r_sample_reg_n_0_[18] ),
        .I5(\r_sample_reg_n_0_[19] ),
        .O(data_out_i_15_n_0));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    data_out_i_16
       (.I0(\l_sample_reg_n_0_[8] ),
        .I1(\l_sample_reg_n_0_[9] ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(\l_sample_reg_n_0_[10] ),
        .I5(\l_sample_reg_n_0_[11] ),
        .O(data_out_i_16_n_0));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    data_out_i_17
       (.I0(\l_sample_reg_n_0_[12] ),
        .I1(\l_sample_reg_n_0_[13] ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(\l_sample_reg_n_0_[14] ),
        .I5(\l_sample_reg_n_0_[15] ),
        .O(data_out_i_17_n_0));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    data_out_i_18
       (.I0(\l_sample_reg_n_0_[0] ),
        .I1(\l_sample_reg_n_0_[1] ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(\l_sample_reg_n_0_[2] ),
        .I5(\l_sample_reg_n_0_[3] ),
        .O(data_out_i_18_n_0));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    data_out_i_19
       (.I0(\l_sample_reg_n_0_[4] ),
        .I1(\l_sample_reg_n_0_[5] ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(\l_sample_reg_n_0_[6] ),
        .I5(\l_sample_reg_n_0_[7] ),
        .O(data_out_i_19_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBFFF333F3)) 
    data_out_i_2
       (.I0(data_out_i_6_n_0),
        .I1(lr_counter_reg[5]),
        .I2(data_out_i_7_n_0),
        .I3(data_out_i_8_n_0),
        .I4(data_out_i_9_n_0),
        .I5(data_out_i_10_n_0),
        .O(data_out_i_2_n_0));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    data_out_i_20
       (.I0(\r_sample_reg_n_0_[4] ),
        .I1(\r_sample_reg_n_0_[5] ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(\r_sample_reg_n_0_[6] ),
        .I5(\r_sample_reg_n_0_[7] ),
        .O(data_out_i_20_n_0));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    data_out_i_21
       (.I0(\r_sample_reg_n_0_[0] ),
        .I1(\r_sample_reg_n_0_[1] ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(\r_sample_reg_n_0_[2] ),
        .I5(\r_sample_reg_n_0_[3] ),
        .O(data_out_i_21_n_0));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    data_out_i_22
       (.I0(\r_sample_reg_n_0_[12] ),
        .I1(\r_sample_reg_n_0_[13] ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(\r_sample_reg_n_0_[14] ),
        .I5(\r_sample_reg_n_0_[15] ),
        .O(data_out_i_22_n_0));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    data_out_i_23
       (.I0(\r_sample_reg_n_0_[8] ),
        .I1(\r_sample_reg_n_0_[9] ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(\r_sample_reg_n_0_[10] ),
        .I5(\r_sample_reg_n_0_[11] ),
        .O(data_out_i_23_n_0));
  LUT3 #(
    .INIT(8'hE4)) 
    data_out_i_3
       (.I0(data_out_i_11_n_0),
        .I1(data_out_reg_i_12_n_0),
        .I2(data_out_reg_i_13_n_0),
        .O(data_out_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEAAAAAAAB)) 
    data_out_i_4
       (.I0(\offset[4]_i_5_n_0 ),
        .I1(offset[3]),
        .I2(offset[2]),
        .I3(offset[1]),
        .I4(offset[0]),
        .I5(offset[4]),
        .O(data_out_i_4_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFFABFB)) 
    data_out_i_5
       (.I0(\offset[4]_i_5_n_0 ),
        .I1(data_out_i_14_n_0),
        .I2(data_out_i_8_n_0),
        .I3(data_out_i_15_n_0),
        .I4(data_out_i_10_n_0),
        .I5(lr_counter_reg[5]),
        .O(data_out_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    data_out_i_6
       (.I0(data_out_i_16_n_0),
        .I1(data_out_i_17_n_0),
        .I2(data_out_i_11_n_0),
        .I3(data_out_i_18_n_0),
        .I4(data_out_i_8_n_0),
        .I5(data_out_i_19_n_0),
        .O(data_out_i_6_n_0));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    data_out_i_7
       (.I0(\l_sample_reg_n_0_[20] ),
        .I1(\l_sample_reg_n_0_[21] ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(\l_sample_reg_n_0_[22] ),
        .I5(\l_sample_reg_n_0_[23] ),
        .O(data_out_i_7_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    data_out_i_8
       (.I0(offset[2]),
        .I1(offset[0]),
        .I2(offset[1]),
        .O(data_out_i_8_n_0));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    data_out_i_9
       (.I0(\l_sample_reg_n_0_[16] ),
        .I1(\l_sample_reg_n_0_[17] ),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(\l_sample_reg_n_0_[18] ),
        .I5(\l_sample_reg_n_0_[19] ),
        .O(data_out_i_9_n_0));
  FDRE data_out_reg
       (.C(m_clk),
        .CE(1'b1),
        .D(data_out_i_1_n_0),
        .Q(data_out),
        .R(1'b0));
  MUXF7 data_out_reg_i_12
       (.I0(data_out_i_20_n_0),
        .I1(data_out_i_21_n_0),
        .O(data_out_reg_i_12_n_0),
        .S(data_out_i_8_n_0));
  MUXF7 data_out_reg_i_13
       (.I0(data_out_i_22_n_0),
        .I1(data_out_i_23_n_0),
        .O(data_out_reg_i_13_n_0),
        .S(data_out_i_8_n_0));
  LUT4 #(
    .INIT(16'hEF22)) 
    l_buffr_i_1
       (.I0(\l_sample[23]_i_2_n_0 ),
        .I1(m_rst),
        .I2(l_sent),
        .I3(l_buffr_reg_n_0),
        .O(l_buffr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    l_buffr_reg
       (.C(m_clk),
        .CE(1'b1),
        .D(l_buffr_i_1_n_0),
        .Q(l_buffr_reg_n_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \l_sample[23]_i_1 
       (.I0(\l_sample[23]_i_2_n_0 ),
        .I1(m_rst),
        .O(l_sample));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \l_sample[23]_i_2 
       (.I0(\axi_in_fwd[TID] [2]),
        .I1(\axi_in_fwd[TID] [3]),
        .I2(\axi_in_fwd[TID] [1]),
        .I3(busy),
        .I4(state[0]),
        .I5(\axi_in_fwd[TID] [0]),
        .O(\l_sample[23]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[0] 
       (.C(m_clk),
        .CE(l_sample),
        .D(\sample_reg_n_0_[0] ),
        .Q(\l_sample_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[10] 
       (.C(m_clk),
        .CE(l_sample),
        .D(\sample_reg_n_0_[10] ),
        .Q(\l_sample_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[11] 
       (.C(m_clk),
        .CE(l_sample),
        .D(\sample_reg_n_0_[11] ),
        .Q(\l_sample_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[12] 
       (.C(m_clk),
        .CE(l_sample),
        .D(\sample_reg_n_0_[12] ),
        .Q(\l_sample_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[13] 
       (.C(m_clk),
        .CE(l_sample),
        .D(\sample_reg_n_0_[13] ),
        .Q(\l_sample_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[14] 
       (.C(m_clk),
        .CE(l_sample),
        .D(\sample_reg_n_0_[14] ),
        .Q(\l_sample_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[15] 
       (.C(m_clk),
        .CE(l_sample),
        .D(\sample_reg_n_0_[15] ),
        .Q(\l_sample_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[16] 
       (.C(m_clk),
        .CE(l_sample),
        .D(\sample_reg_n_0_[16] ),
        .Q(\l_sample_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[17] 
       (.C(m_clk),
        .CE(l_sample),
        .D(\sample_reg_n_0_[17] ),
        .Q(\l_sample_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[18] 
       (.C(m_clk),
        .CE(l_sample),
        .D(\sample_reg_n_0_[18] ),
        .Q(\l_sample_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[19] 
       (.C(m_clk),
        .CE(l_sample),
        .D(\sample_reg_n_0_[19] ),
        .Q(\l_sample_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[1] 
       (.C(m_clk),
        .CE(l_sample),
        .D(\sample_reg_n_0_[1] ),
        .Q(\l_sample_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[20] 
       (.C(m_clk),
        .CE(l_sample),
        .D(\sample_reg_n_0_[20] ),
        .Q(\l_sample_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[21] 
       (.C(m_clk),
        .CE(l_sample),
        .D(\sample_reg_n_0_[21] ),
        .Q(\l_sample_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[22] 
       (.C(m_clk),
        .CE(l_sample),
        .D(\sample_reg_n_0_[22] ),
        .Q(\l_sample_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[23] 
       (.C(m_clk),
        .CE(l_sample),
        .D(\sample_reg_n_0_[23] ),
        .Q(\l_sample_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[2] 
       (.C(m_clk),
        .CE(l_sample),
        .D(\sample_reg_n_0_[2] ),
        .Q(\l_sample_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[3] 
       (.C(m_clk),
        .CE(l_sample),
        .D(\sample_reg_n_0_[3] ),
        .Q(\l_sample_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[4] 
       (.C(m_clk),
        .CE(l_sample),
        .D(\sample_reg_n_0_[4] ),
        .Q(\l_sample_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[5] 
       (.C(m_clk),
        .CE(l_sample),
        .D(\sample_reg_n_0_[5] ),
        .Q(\l_sample_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[6] 
       (.C(m_clk),
        .CE(l_sample),
        .D(\sample_reg_n_0_[6] ),
        .Q(\l_sample_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[7] 
       (.C(m_clk),
        .CE(l_sample),
        .D(\sample_reg_n_0_[7] ),
        .Q(\l_sample_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[8] 
       (.C(m_clk),
        .CE(l_sample),
        .D(\sample_reg_n_0_[8] ),
        .Q(\l_sample_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_sample_reg[9] 
       (.C(m_clk),
        .CE(l_sample),
        .D(\sample_reg_n_0_[9] ),
        .Q(\l_sample_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h7F403F00)) 
    l_sent_i_1
       (.I0(\offset[4]_i_4_n_0 ),
        .I1(serial_counter[1]),
        .I2(serial_counter[0]),
        .I3(l_sent),
        .I4(lr_counter_reg[5]),
        .O(l_sent_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    l_sent_reg
       (.C(m_clk),
        .CE(1'b1),
        .D(l_sent_i_1_n_0),
        .Q(l_sent),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \lr_counter[0]_i_1 
       (.I0(lr_counter_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lr_counter[1]_i_1 
       (.I0(lr_counter_reg[0]),
        .I1(lr_counter_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \lr_counter[2]_i_1 
       (.I0(lr_counter_reg[2]),
        .I1(lr_counter_reg[0]),
        .I2(lr_counter_reg[1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \lr_counter[3]_i_1 
       (.I0(lr_counter_reg[3]),
        .I1(lr_counter_reg[1]),
        .I2(lr_counter_reg[0]),
        .I3(lr_counter_reg[2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \lr_counter[4]_i_1 
       (.I0(lr_counter_reg[2]),
        .I1(lr_counter_reg[0]),
        .I2(lr_counter_reg[1]),
        .I3(lr_counter_reg[3]),
        .I4(lr_counter_reg[4]),
        .O(p_0_in__0[4]));
  LUT4 #(
    .INIT(16'h8000)) 
    \lr_counter[5]_i_1 
       (.I0(serial_counter[1]),
        .I1(serial_counter[0]),
        .I2(\lr_counter[5]_i_3_n_0 ),
        .I3(lr_counter_reg[5]),
        .O(lr_counter));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \lr_counter[5]_i_2 
       (.I0(lr_counter_reg[5]),
        .I1(lr_counter_reg[2]),
        .I2(lr_counter_reg[0]),
        .I3(lr_counter_reg[1]),
        .I4(lr_counter_reg[3]),
        .I5(lr_counter_reg[4]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \lr_counter[5]_i_3 
       (.I0(lr_counter_reg[4]),
        .I1(lr_counter_reg[3]),
        .I2(lr_counter_reg[1]),
        .I3(lr_counter_reg[0]),
        .I4(lr_counter_reg[2]),
        .O(\lr_counter[5]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[0] 
       (.C(m_clk),
        .CE(serial_counter0),
        .D(p_0_in__0[0]),
        .Q(lr_counter_reg[0]),
        .R(lr_counter));
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[1] 
       (.C(m_clk),
        .CE(serial_counter0),
        .D(p_0_in__0[1]),
        .Q(lr_counter_reg[1]),
        .R(lr_counter));
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[2] 
       (.C(m_clk),
        .CE(serial_counter0),
        .D(p_0_in__0[2]),
        .Q(lr_counter_reg[2]),
        .R(lr_counter));
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[3] 
       (.C(m_clk),
        .CE(serial_counter0),
        .D(p_0_in__0[3]),
        .Q(lr_counter_reg[3]),
        .R(lr_counter));
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[4] 
       (.C(m_clk),
        .CE(serial_counter0),
        .D(p_0_in__0[4]),
        .Q(lr_counter_reg[4]),
        .R(lr_counter));
  FDRE #(
    .INIT(1'b0)) 
    \lr_counter_reg[5] 
       (.C(m_clk),
        .CE(serial_counter0),
        .D(p_0_in__0[5]),
        .Q(lr_counter_reg[5]),
        .R(lr_counter));
  LUT3 #(
    .INIT(8'h56)) 
    \offset[0]_i_1 
       (.I0(offset[0]),
        .I1(start),
        .I2(busy),
        .O(\offset[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA56)) 
    \offset[1]_i_1 
       (.I0(offset[1]),
        .I1(busy),
        .I2(start),
        .I3(offset[0]),
        .O(\offset[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF1000E)) 
    \offset[2]_i_1 
       (.I0(busy),
        .I1(start),
        .I2(offset[1]),
        .I3(offset[0]),
        .I4(offset[2]),
        .O(\offset[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F0F01E)) 
    \offset[3]_i_1 
       (.I0(busy),
        .I1(start),
        .I2(offset[3]),
        .I3(offset[2]),
        .I4(offset[1]),
        .I5(offset[0]),
        .O(\offset[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \offset[4]_i_1 
       (.I0(\offset[4]_i_4_n_0 ),
        .I1(serial_counter[1]),
        .I2(serial_counter[0]),
        .O(\offset[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \offset[4]_i_2 
       (.I0(serial_counter[0]),
        .I1(serial_counter[1]),
        .O(serial_counter0));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0001)) 
    \offset[4]_i_3 
       (.I0(offset[0]),
        .I1(offset[1]),
        .I2(offset[2]),
        .I3(offset[3]),
        .I4(offset[4]),
        .I5(\offset[4]_i_5_n_0 ),
        .O(\offset[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \offset[4]_i_4 
       (.I0(offset[2]),
        .I1(offset[3]),
        .I2(offset[4]),
        .I3(offset[1]),
        .I4(offset[0]),
        .I5(\offset[4]_i_5_n_0 ),
        .O(\offset[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \offset[4]_i_5 
       (.I0(busy),
        .I1(start),
        .O(\offset[4]_i_5_n_0 ));
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
        .D(\offset[4]_i_3_n_0 ),
        .Q(offset[4]),
        .S(\offset[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF22)) 
    r_buffr_i_1
       (.I0(\r_sample[23]_i_2_n_0 ),
        .I1(m_rst),
        .I2(r_sent),
        .I3(r_buffr_reg_n_0),
        .O(r_buffr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_buffr_reg
       (.C(m_clk),
        .CE(1'b1),
        .D(r_buffr_i_1_n_0),
        .Q(r_buffr_reg_n_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \r_sample[23]_i_1 
       (.I0(\r_sample[23]_i_2_n_0 ),
        .I1(m_rst),
        .O(r_sample));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \r_sample[23]_i_2 
       (.I0(\axi_in_fwd[TID] [2]),
        .I1(\axi_in_fwd[TID] [3]),
        .I2(\axi_in_fwd[TID] [1]),
        .I3(\axi_in_fwd[TID] [0]),
        .I4(busy),
        .I5(state[0]),
        .O(\r_sample[23]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[0] 
       (.C(m_clk),
        .CE(r_sample),
        .D(\sample_reg_n_0_[0] ),
        .Q(\r_sample_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[10] 
       (.C(m_clk),
        .CE(r_sample),
        .D(\sample_reg_n_0_[10] ),
        .Q(\r_sample_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[11] 
       (.C(m_clk),
        .CE(r_sample),
        .D(\sample_reg_n_0_[11] ),
        .Q(\r_sample_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[12] 
       (.C(m_clk),
        .CE(r_sample),
        .D(\sample_reg_n_0_[12] ),
        .Q(\r_sample_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[13] 
       (.C(m_clk),
        .CE(r_sample),
        .D(\sample_reg_n_0_[13] ),
        .Q(\r_sample_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[14] 
       (.C(m_clk),
        .CE(r_sample),
        .D(\sample_reg_n_0_[14] ),
        .Q(\r_sample_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[15] 
       (.C(m_clk),
        .CE(r_sample),
        .D(\sample_reg_n_0_[15] ),
        .Q(\r_sample_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[16] 
       (.C(m_clk),
        .CE(r_sample),
        .D(\sample_reg_n_0_[16] ),
        .Q(\r_sample_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[17] 
       (.C(m_clk),
        .CE(r_sample),
        .D(\sample_reg_n_0_[17] ),
        .Q(\r_sample_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[18] 
       (.C(m_clk),
        .CE(r_sample),
        .D(\sample_reg_n_0_[18] ),
        .Q(\r_sample_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[19] 
       (.C(m_clk),
        .CE(r_sample),
        .D(\sample_reg_n_0_[19] ),
        .Q(\r_sample_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[1] 
       (.C(m_clk),
        .CE(r_sample),
        .D(\sample_reg_n_0_[1] ),
        .Q(\r_sample_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[20] 
       (.C(m_clk),
        .CE(r_sample),
        .D(\sample_reg_n_0_[20] ),
        .Q(\r_sample_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[21] 
       (.C(m_clk),
        .CE(r_sample),
        .D(\sample_reg_n_0_[21] ),
        .Q(\r_sample_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[22] 
       (.C(m_clk),
        .CE(r_sample),
        .D(\sample_reg_n_0_[22] ),
        .Q(\r_sample_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[23] 
       (.C(m_clk),
        .CE(r_sample),
        .D(\sample_reg_n_0_[23] ),
        .Q(\r_sample_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[2] 
       (.C(m_clk),
        .CE(r_sample),
        .D(\sample_reg_n_0_[2] ),
        .Q(\r_sample_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[3] 
       (.C(m_clk),
        .CE(r_sample),
        .D(\sample_reg_n_0_[3] ),
        .Q(\r_sample_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[4] 
       (.C(m_clk),
        .CE(r_sample),
        .D(\sample_reg_n_0_[4] ),
        .Q(\r_sample_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[5] 
       (.C(m_clk),
        .CE(r_sample),
        .D(\sample_reg_n_0_[5] ),
        .Q(\r_sample_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[6] 
       (.C(m_clk),
        .CE(r_sample),
        .D(\sample_reg_n_0_[6] ),
        .Q(\r_sample_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[7] 
       (.C(m_clk),
        .CE(r_sample),
        .D(\sample_reg_n_0_[7] ),
        .Q(\r_sample_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[8] 
       (.C(m_clk),
        .CE(r_sample),
        .D(\sample_reg_n_0_[8] ),
        .Q(\r_sample_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[9] 
       (.C(m_clk),
        .CE(r_sample),
        .D(\sample_reg_n_0_[9] ),
        .Q(\r_sample_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h1FFF1000)) 
    r_sent_i_1
       (.I0(lr_counter_reg[5]),
        .I1(\offset[4]_i_4_n_0 ),
        .I2(serial_counter[0]),
        .I3(serial_counter[1]),
        .I4(r_sent),
        .O(r_sent_i_1_n_0));
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
  LUT4 #(
    .INIT(16'h0004)) 
    \sample[23]_i_1 
       (.I0(state[1]),
        .I1(\axi_in_fwd[TValid] ),
        .I2(m_rst),
        .I3(state[0]),
        .O(sample));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[0] 
       (.C(m_clk),
        .CE(sample),
        .D(\axi_in_fwd[TData] [0]),
        .Q(\sample_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[10] 
       (.C(m_clk),
        .CE(sample),
        .D(\axi_in_fwd[TData] [10]),
        .Q(\sample_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[11] 
       (.C(m_clk),
        .CE(sample),
        .D(\axi_in_fwd[TData] [11]),
        .Q(\sample_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[12] 
       (.C(m_clk),
        .CE(sample),
        .D(\axi_in_fwd[TData] [12]),
        .Q(\sample_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[13] 
       (.C(m_clk),
        .CE(sample),
        .D(\axi_in_fwd[TData] [13]),
        .Q(\sample_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[14] 
       (.C(m_clk),
        .CE(sample),
        .D(\axi_in_fwd[TData] [14]),
        .Q(\sample_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[15] 
       (.C(m_clk),
        .CE(sample),
        .D(\axi_in_fwd[TData] [15]),
        .Q(\sample_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[16] 
       (.C(m_clk),
        .CE(sample),
        .D(\axi_in_fwd[TData] [16]),
        .Q(\sample_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[17] 
       (.C(m_clk),
        .CE(sample),
        .D(\axi_in_fwd[TData] [17]),
        .Q(\sample_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[18] 
       (.C(m_clk),
        .CE(sample),
        .D(\axi_in_fwd[TData] [18]),
        .Q(\sample_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[19] 
       (.C(m_clk),
        .CE(sample),
        .D(\axi_in_fwd[TData] [19]),
        .Q(\sample_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[1] 
       (.C(m_clk),
        .CE(sample),
        .D(\axi_in_fwd[TData] [1]),
        .Q(\sample_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[20] 
       (.C(m_clk),
        .CE(sample),
        .D(\axi_in_fwd[TData] [20]),
        .Q(\sample_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[21] 
       (.C(m_clk),
        .CE(sample),
        .D(\axi_in_fwd[TData] [21]),
        .Q(\sample_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[22] 
       (.C(m_clk),
        .CE(sample),
        .D(\axi_in_fwd[TData] [22]),
        .Q(\sample_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[23] 
       (.C(m_clk),
        .CE(sample),
        .D(\axi_in_fwd[TData] [23]),
        .Q(\sample_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[2] 
       (.C(m_clk),
        .CE(sample),
        .D(\axi_in_fwd[TData] [2]),
        .Q(\sample_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[3] 
       (.C(m_clk),
        .CE(sample),
        .D(\axi_in_fwd[TData] [3]),
        .Q(\sample_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[4] 
       (.C(m_clk),
        .CE(sample),
        .D(\axi_in_fwd[TData] [4]),
        .Q(\sample_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[5] 
       (.C(m_clk),
        .CE(sample),
        .D(\axi_in_fwd[TData] [5]),
        .Q(\sample_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[6] 
       (.C(m_clk),
        .CE(sample),
        .D(\axi_in_fwd[TData] [6]),
        .Q(\sample_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[7] 
       (.C(m_clk),
        .CE(sample),
        .D(\axi_in_fwd[TData] [7]),
        .Q(\sample_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[8] 
       (.C(m_clk),
        .CE(sample),
        .D(\axi_in_fwd[TData] [8]),
        .Q(\sample_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg[9] 
       (.C(m_clk),
        .CE(sample),
        .D(\axi_in_fwd[TData] [9]),
        .Q(\sample_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \serial_counter[0]_i_1 
       (.I0(serial_counter[0]),
        .O(\serial_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \serial_counter[1]_i_1 
       (.I0(serial_counter[1]),
        .I1(serial_counter[0]),
        .O(\serial_counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \serial_counter_reg[0] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\serial_counter[0]_i_1_n_0 ),
        .Q(serial_counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \serial_counter_reg[1] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\serial_counter[1]_i_1_n_0 ),
        .Q(serial_counter[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000004)) 
    start_i_1
       (.I0(lr_counter_reg[3]),
        .I1(lr_counter_reg[0]),
        .I2(lr_counter_reg[2]),
        .I3(lr_counter_reg[4]),
        .I4(lr_counter_reg[1]),
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
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \state[0]_i_1 
       (.I0(\axi_in_fwd[TValid] ),
        .I1(state[0]),
        .I2(busy),
        .I3(state[1]),
        .I4(\axi_in_bwd[TReady]_i_2_n_0 ),
        .I5(m_rst),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F4040404)) 
    \state[1]_i_1 
       (.I0(busy),
        .I1(state[0]),
        .I2(state[1]),
        .I3(r_buffr_reg_n_0),
        .I4(l_buffr_reg_n_0),
        .I5(m_rst),
        .O(\state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "e_idle:00,e_data:01,e_wait:10" *) 
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "e_idle:00,e_data:01,e_wait:10" *) 
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(m_clk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "I2S_wrapper" *) (* g_chip_scope = "True" *) (* g_clock_div_lrclk = "64" *) 
(* g_clock_div_sclk = "4" *) (* keep_hierarchy = "soft" *) 
module design_1_I2S_wrapper_0_0_I2S_wrapper
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
  input m_clk;
  input m_rst;
  output mclk_r;
  output lrclk_r;
  output sclk_r;
  output mclk_t;
  output lrclk_t;
  output sclk_t;
  input data_in;
  output data_out;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 audio_in TVALID" *) input s_TValid_in;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 audio_in TLAST" *) input s_TLast_in;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 audio_in TDATA" *) input [23:0]s_TData_in;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 audio_in TID" *) input [3:0]s_TID_in;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 audio_in TREADY" *) output s_TReady_in;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 audio_out TVALID" *) output s_TValid_out;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 audio_out TLAST" *) output s_TLast_out;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 audio_out TDATA" *) output [23:0]s_TData_out;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 audio_out TID" *) output [3:0]s_TID_out;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 audio_out TREADY" *) input s_TReady_out;

  (* MARK_DEBUG *) (* x_interface_info = "xilinx.com:interface:axis:1.0 audio_in TREADY" *) wire \axi_bwd_in[TReady] ;
  (* MARK_DEBUG *) wire \axi_bwd_out[TReady] ;
  (* MARK_DEBUG *) wire [23:0]\axi_fwd_in[TData] ;
  (* MARK_DEBUG *) wire [3:0]\axi_fwd_in[TID] ;
  (* MARK_DEBUG *) wire \axi_fwd_in[TLast] ;
  (* MARK_DEBUG *) wire \axi_fwd_in[TValid] ;
  (* MARK_DEBUG *) (* x_interface_info = "xilinx.com:interface:axis:1.0 audio_out TDATA" *) wire [23:0]\axi_fwd_out[TData] ;
  (* MARK_DEBUG *) (* x_interface_info = "xilinx.com:interface:axis:1.0 audio_out TID" *) wire [3:0]\axi_fwd_out[TID] ;
  (* MARK_DEBUG *) (* x_interface_info = "xilinx.com:interface:axis:1.0 audio_out TLAST" *) wire \axi_fwd_out[TLast] ;
  (* MARK_DEBUG *) (* x_interface_info = "xilinx.com:interface:axis:1.0 audio_out TVALID" *) wire \axi_fwd_out[TValid] ;
  (* MARK_DEBUG *) wire di_i;
  (* MARK_DEBUG *) wire do_i;
  (* MARK_DEBUG *) wire lrclk_r_i;
  wire m_clk;
  wire m_rst;
  (* MARK_DEBUG *) wire mclk_r_i;
  (* MARK_DEBUG *) wire sclk_r_i;
  wire \NLW_I2S_rec_inst_axi_out_fwd[TLast]_UNCONNECTED ;
  wire NLW_I2S_rec_inst_lrclk_UNCONNECTED;
  wire NLW_I2S_rec_inst_mclk_UNCONNECTED;
  wire NLW_I2S_rec_inst_sclk_UNCONNECTED;
  wire [3:1]\NLW_I2S_rec_inst_axi_out_fwd[TID]_UNCONNECTED ;
  wire NLW_I2S_trans_inst_lrclk_UNCONNECTED;
  wire NLW_I2S_trans_inst_mclk_UNCONNECTED;
  wire NLW_I2S_trans_inst_sclk_UNCONNECTED;

  assign \axi_bwd_out[TReady]  = s_TReady_out;
  assign \axi_fwd_in[TData]  = s_TData_in[23:0];
  assign \axi_fwd_in[TID]  = s_TID_in[3:0];
  assign \axi_fwd_in[TLast]  = s_TLast_in;
  assign \axi_fwd_in[TValid]  = s_TValid_in;
  assign data_out = do_i;
  assign di_i = data_in;
  assign lrclk_r = lrclk_r_i;
  assign lrclk_t = lrclk_r_i;
  assign mclk_r = mclk_r_i;
  assign mclk_t = mclk_r_i;
  assign s_TData_out[23:0] = \axi_fwd_out[TData] ;
  assign s_TID_out[3:0] = \axi_fwd_out[TID] ;
  assign s_TLast_out = \axi_fwd_out[TLast] ;
  assign s_TReady_in = \axi_bwd_in[TReady] ;
  assign s_TValid_out = \axi_fwd_out[TValid] ;
  assign sclk_r = sclk_r_i;
  assign sclk_t = sclk_r_i;
  (* KEEP_HIERARCHY = "soft" *) 
  (* g_chip_scope = "True" *) 
  (* g_clock_div_lrclk = "64" *) 
  (* g_clock_div_sclk = "4" *) 
  design_1_I2S_wrapper_0_0_I2S_clock_gen I2S_clock_gen_inst
       (.lrclk(lrclk_r_i),
        .m_clk(m_clk),
        .mclk(mclk_r_i),
        .sclk(sclk_r_i));
  (* KEEP_HIERARCHY = "soft" *) 
  (* g_channel_offset = "4'b0000" *) 
  (* g_clock_div_lrclk = "64" *) 
  (* g_clock_div_sclk = "4" *) 
  design_1_I2S_wrapper_0_0_I2S_rec I2S_rec_inst
       (.\axi_out_bwd[TReady] (\axi_bwd_out[TReady] ),
        .\axi_out_fwd[TData] (\axi_fwd_out[TData] ),
        .\axi_out_fwd[TID] ({\NLW_I2S_rec_inst_axi_out_fwd[TID]_UNCONNECTED [3:1],\axi_fwd_out[TID] [0]}),
        .\axi_out_fwd[TLast] (\NLW_I2S_rec_inst_axi_out_fwd[TLast]_UNCONNECTED ),
        .\axi_out_fwd[TValid] (\axi_fwd_out[TValid] ),
        .data_in(di_i),
        .lrclk(NLW_I2S_rec_inst_lrclk_UNCONNECTED),
        .m_clk(m_clk),
        .m_rst(m_rst),
        .mclk(NLW_I2S_rec_inst_mclk_UNCONNECTED),
        .sclk(NLW_I2S_rec_inst_sclk_UNCONNECTED));
  (* KEEP_HIERARCHY = "soft" *) 
  (* g_channel_offset = "4'b0000" *) 
  (* g_chip_scope = "True" *) 
  (* g_clock_div_lrclk = "64" *) 
  (* g_clock_div_sclk = "4" *) 
  design_1_I2S_wrapper_0_0_I2S_trans I2S_trans_inst
       (.\axi_in_bwd[TReady] (\axi_bwd_in[TReady] ),
        .\axi_in_fwd[TData] (\axi_fwd_in[TData] ),
        .\axi_in_fwd[TID] (\axi_fwd_in[TID] ),
        .\axi_in_fwd[TLast] (1'b0),
        .\axi_in_fwd[TValid] (\axi_fwd_in[TValid] ),
        .data_out(do_i),
        .lrclk(NLW_I2S_trans_inst_lrclk_UNCONNECTED),
        .m_clk(m_clk),
        .m_rst(m_rst),
        .mclk(NLW_I2S_trans_inst_mclk_UNCONNECTED),
        .sclk(NLW_I2S_trans_inst_sclk_UNCONNECTED));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(\axi_fwd_out[TLast] ));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(\axi_fwd_out[TID] [3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(\axi_fwd_out[TID] [2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(\axi_fwd_out[TID] [1]));
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
