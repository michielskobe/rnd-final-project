-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:audio_pipeline_wrapper:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_audio_pipeline_wrapp_0_0 IS
  PORT (
    clk_in : IN STD_LOGIC;
    clk_audio : IN STD_LOGIC;
    clk_out : IN STD_LOGIC;
    clk_axi_mm : IN STD_LOGIC;
    master_volume : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    channel_volume_select : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    channel_volume_value : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    rst : IN STD_LOGIC;
    vivado_is_zo_tof_ugh : IN STD_LOGIC;
    dma_valid : IN STD_LOGIC;
    s_TValid_anal : IN STD_LOGIC;
    s_TLast_anal : IN STD_LOGIC;
    s_TData_anal : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    s_TID_anal : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_TReady_anal : OUT STD_LOGIC;
    s_TValid_dma : IN STD_LOGIC;
    s_TLast_dma : IN STD_LOGIC;
    s_TData_dma : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    s_TID_dma : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_TReady_dma : OUT STD_LOGIC;
    s_TValid_out : OUT STD_LOGIC;
    s_TLast_out : OUT STD_LOGIC;
    s_TData_out : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    s_TID_out : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_TReady_out : IN STD_LOGIC
  );
END design_1_audio_pipeline_wrapp_0_0;

ARCHITECTURE design_1_audio_pipeline_wrapp_0_0_arch OF design_1_audio_pipeline_wrapp_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_audio_pipeline_wrapp_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT audio_pipeline_wrapper IS
    GENERIC (
      g_chip_scope : STRING
    );
    PORT (
      clk_in : IN STD_LOGIC;
      clk_audio : IN STD_LOGIC;
      clk_out : IN STD_LOGIC;
      clk_axi_mm : IN STD_LOGIC;
      master_volume : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      channel_volume_select : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      channel_volume_value : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      rst : IN STD_LOGIC;
      vivado_is_zo_tof_ugh : IN STD_LOGIC;
      dma_valid : IN STD_LOGIC;
      s_TValid_anal : IN STD_LOGIC;
      s_TLast_anal : IN STD_LOGIC;
      s_TData_anal : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
      s_TID_anal : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_TReady_anal : OUT STD_LOGIC;
      s_TValid_dma : IN STD_LOGIC;
      s_TLast_dma : IN STD_LOGIC;
      s_TData_dma : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
      s_TID_dma : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_TReady_dma : OUT STD_LOGIC;
      s_TValid_out : OUT STD_LOGIC;
      s_TLast_out : OUT STD_LOGIC;
      s_TData_out : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      s_TID_out : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_TReady_out : IN STD_LOGIC
    );
  END COMPONENT audio_pipeline_wrapper;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_audio_pipeline_wrapp_0_0_arch: ARCHITECTURE IS "audio_pipeline_wrapper,Vivado 2023.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_audio_pipeline_wrapp_0_0_arch : ARCHITECTURE IS "design_1_audio_pipeline_wrapp_0_0,audio_pipeline_wrapper,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF design_1_audio_pipeline_wrapp_0_0_arch: ARCHITECTURE IS "design_1_audio_pipeline_wrapp_0_0,audio_pipeline_wrapper,{x_ipProduct=Vivado 2023.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=audio_pipeline_wrapper,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,g_chip_scope=false}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_audio_pipeline_wrapp_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF rst: SIGNAL IS "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rst: SIGNAL IS "xilinx.com:signal:reset:1.0 rst RST";
  ATTRIBUTE X_INTERFACE_INFO OF s_TData_anal: SIGNAL IS "xilinx.com:interface:axis:1.0 s_anal TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_TData_dma: SIGNAL IS "xilinx.com:interface:axis:1.0 s_dma TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_TData_out: SIGNAL IS "xilinx.com:interface:axis:1.0 s_out TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_TID_anal: SIGNAL IS "xilinx.com:interface:axis:1.0 s_anal TID";
  ATTRIBUTE X_INTERFACE_INFO OF s_TID_dma: SIGNAL IS "xilinx.com:interface:axis:1.0 s_dma TID";
  ATTRIBUTE X_INTERFACE_INFO OF s_TID_out: SIGNAL IS "xilinx.com:interface:axis:1.0 s_out TID";
  ATTRIBUTE X_INTERFACE_INFO OF s_TLast_anal: SIGNAL IS "xilinx.com:interface:axis:1.0 s_anal TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_TLast_dma: SIGNAL IS "xilinx.com:interface:axis:1.0 s_dma TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_TLast_out: SIGNAL IS "xilinx.com:interface:axis:1.0 s_out TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_TReady_anal: SIGNAL IS "xilinx.com:interface:axis:1.0 s_anal TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_TReady_dma: SIGNAL IS "xilinx.com:interface:axis:1.0 s_dma TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_TReady_out: SIGNAL IS "xilinx.com:interface:axis:1.0 s_out TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_TValid_anal: SIGNAL IS "XIL_INTERFACENAME s_anal, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 2, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_TValid_anal: SIGNAL IS "xilinx.com:interface:axis:1.0 s_anal TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_TValid_dma: SIGNAL IS "XIL_INTERFACENAME s_dma, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 2, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_TValid_dma: SIGNAL IS "xilinx.com:interface:axis:1.0 s_dma TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_TValid_out: SIGNAL IS "XIL_INTERFACENAME s_out, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 2, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_TValid_out: SIGNAL IS "xilinx.com:interface:axis:1.0 s_out TVALID";
BEGIN
  U0 : audio_pipeline_wrapper
    GENERIC MAP (
      g_chip_scope => "false"
    )
    PORT MAP (
      clk_in => clk_in,
      clk_audio => clk_audio,
      clk_out => clk_out,
      clk_axi_mm => clk_axi_mm,
      master_volume => master_volume,
      channel_volume_select => channel_volume_select,
      channel_volume_value => channel_volume_value,
      rst => rst,
      vivado_is_zo_tof_ugh => vivado_is_zo_tof_ugh,
      dma_valid => dma_valid,
      s_TValid_anal => s_TValid_anal,
      s_TLast_anal => s_TLast_anal,
      s_TData_anal => s_TData_anal,
      s_TID_anal => s_TID_anal,
      s_TReady_anal => s_TReady_anal,
      s_TValid_dma => s_TValid_dma,
      s_TLast_dma => s_TLast_dma,
      s_TData_dma => s_TData_dma,
      s_TID_dma => s_TID_dma,
      s_TReady_dma => s_TReady_dma,
      s_TValid_out => s_TValid_out,
      s_TLast_out => s_TLast_out,
      s_TData_out => s_TData_out,
      s_TID_out => s_TID_out,
      s_TReady_out => s_TReady_out
    );
END design_1_audio_pipeline_wrapp_0_0_arch;
