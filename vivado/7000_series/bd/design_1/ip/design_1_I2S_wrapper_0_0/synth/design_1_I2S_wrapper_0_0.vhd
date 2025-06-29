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

-- IP VLNV: xilinx.com:module_ref:I2S_wrapper:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_I2S_wrapper_0_0 IS
  PORT (
    m_clk : IN STD_LOGIC;
    m_rst : IN STD_LOGIC;
    mclk_r : OUT STD_LOGIC;
    lrclk_r : OUT STD_LOGIC;
    sclk_r : OUT STD_LOGIC;
    mclk_t : OUT STD_LOGIC;
    lrclk_t : OUT STD_LOGIC;
    sclk_t : OUT STD_LOGIC;
    data_in : IN STD_LOGIC;
    data_out : OUT STD_LOGIC;
    s_TValid_in : IN STD_LOGIC;
    s_TLast_in : IN STD_LOGIC;
    s_TData_in : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    s_TID_in : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_TReady_in : OUT STD_LOGIC;
    s_TValid_out : OUT STD_LOGIC;
    s_TLast_out : OUT STD_LOGIC;
    s_TData_out : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    s_TID_out : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_TReady_out : IN STD_LOGIC
  );
END design_1_I2S_wrapper_0_0;

ARCHITECTURE design_1_I2S_wrapper_0_0_arch OF design_1_I2S_wrapper_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_I2S_wrapper_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT I2S_wrapper IS
    GENERIC (
      g_clock_div_sclk : INTEGER;
      g_clock_div_lrclk : INTEGER;
      g_chip_scope : STRING
    );
    PORT (
      m_clk : IN STD_LOGIC;
      m_rst : IN STD_LOGIC;
      mclk_r : OUT STD_LOGIC;
      lrclk_r : OUT STD_LOGIC;
      sclk_r : OUT STD_LOGIC;
      mclk_t : OUT STD_LOGIC;
      lrclk_t : OUT STD_LOGIC;
      sclk_t : OUT STD_LOGIC;
      data_in : IN STD_LOGIC;
      data_out : OUT STD_LOGIC;
      s_TValid_in : IN STD_LOGIC;
      s_TLast_in : IN STD_LOGIC;
      s_TData_in : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
      s_TID_in : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_TReady_in : OUT STD_LOGIC;
      s_TValid_out : OUT STD_LOGIC;
      s_TLast_out : OUT STD_LOGIC;
      s_TData_out : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      s_TID_out : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_TReady_out : IN STD_LOGIC
    );
  END COMPONENT I2S_wrapper;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_I2S_wrapper_0_0_arch: ARCHITECTURE IS "I2S_wrapper,Vivado 2024.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_I2S_wrapper_0_0_arch : ARCHITECTURE IS "design_1_I2S_wrapper_0_0,I2S_wrapper,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF design_1_I2S_wrapper_0_0_arch: ARCHITECTURE IS "design_1_I2S_wrapper_0_0,I2S_wrapper,{x_ipProduct=Vivado 2024.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=I2S_wrapper,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,g_clock_div_sclk=4,g_clock_div_lrclk=64,g_chip_scope=false}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_I2S_wrapper_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_clk: SIGNAL IS "XIL_INTERFACENAME m_clk, ASSOCIATED_RESET m_rst, FREQ_HZ 12345679, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 m_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_rst: SIGNAL IS "XIL_INTERFACENAME m_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 m_rst RST";
  ATTRIBUTE X_INTERFACE_INFO OF s_TData_in: SIGNAL IS "xilinx.com:interface:axis:1.0 s_in TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_TData_out: SIGNAL IS "xilinx.com:interface:axis:1.0 s_out TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_TID_in: SIGNAL IS "xilinx.com:interface:axis:1.0 s_in TID";
  ATTRIBUTE X_INTERFACE_INFO OF s_TID_out: SIGNAL IS "xilinx.com:interface:axis:1.0 s_out TID";
  ATTRIBUTE X_INTERFACE_INFO OF s_TLast_in: SIGNAL IS "xilinx.com:interface:axis:1.0 s_in TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_TLast_out: SIGNAL IS "xilinx.com:interface:axis:1.0 s_out TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_TReady_in: SIGNAL IS "xilinx.com:interface:axis:1.0 s_in TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_TReady_out: SIGNAL IS "xilinx.com:interface:axis:1.0 s_out TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_TValid_in: SIGNAL IS "XIL_INTERFACENAME s_in, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 2, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_TValid_in: SIGNAL IS "xilinx.com:interface:axis:1.0 s_in TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_TValid_out: SIGNAL IS "XIL_INTERFACENAME s_out, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 2, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_TValid_out: SIGNAL IS "xilinx.com:interface:axis:1.0 s_out TVALID";
BEGIN
  U0 : I2S_wrapper
    GENERIC MAP (
      g_clock_div_sclk => 4,
      g_clock_div_lrclk => 64,
      g_chip_scope => "false"
    )
    PORT MAP (
      m_clk => m_clk,
      m_rst => m_rst,
      mclk_r => mclk_r,
      lrclk_r => lrclk_r,
      sclk_r => sclk_r,
      mclk_t => mclk_t,
      lrclk_t => lrclk_t,
      sclk_t => sclk_t,
      data_in => data_in,
      data_out => data_out,
      s_TValid_in => s_TValid_in,
      s_TLast_in => s_TLast_in,
      s_TData_in => s_TData_in,
      s_TID_in => s_TID_in,
      s_TReady_in => s_TReady_in,
      s_TValid_out => s_TValid_out,
      s_TLast_out => s_TLast_out,
      s_TData_out => s_TData_out,
      s_TID_out => s_TID_out,
      s_TReady_out => s_TReady_out
    );
END design_1_I2S_wrapper_0_0_arch;
