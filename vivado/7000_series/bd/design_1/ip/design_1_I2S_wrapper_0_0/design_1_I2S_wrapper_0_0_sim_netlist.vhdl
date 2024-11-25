-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Sat Nov 23 11:50:33 2024
-- Host        : fedora running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/debber/Documents/__KuLeuven/GroepT/Fase4/semester1/rnd/team-e/vivado/7000_series/bd/design_1/ip/design_1_I2S_wrapper_0_0/design_1_I2S_wrapper_0_0_sim_netlist.vhdl
-- Design      : design_1_I2S_wrapper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_I2S_wrapper_0_0_I2S_clock_gen is
  port (
    m_clk : in STD_LOGIC;
    mclk : out STD_LOGIC;
    sclk : out STD_LOGIC;
    lrclk : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_I2S_wrapper_0_0_I2S_clock_gen : entity is "I2S_clock_gen";
  attribute g_chip_scope : string;
  attribute g_chip_scope of design_1_I2S_wrapper_0_0_I2S_clock_gen : entity is "True";
  attribute g_clock_div_lrclk : integer;
  attribute g_clock_div_lrclk of design_1_I2S_wrapper_0_0_I2S_clock_gen : entity is 64;
  attribute g_clock_div_sclk : integer;
  attribute g_clock_div_sclk of design_1_I2S_wrapper_0_0_I2S_clock_gen : entity is 4;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_I2S_wrapper_0_0_I2S_clock_gen : entity is "soft";
end design_1_I2S_wrapper_0_0_I2S_clock_gen;

architecture STRUCTURE of design_1_I2S_wrapper_0_0_I2S_clock_gen is
  signal i_lrclk : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of i_lrclk : signal is std.standard.true;
  signal i_sclk : STD_LOGIC;
  attribute MARK_DEBUG of i_sclk : signal is std.standard.true;
  signal lr_counter : STD_LOGIC;
  signal \lr_counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \lr_counter[5]_i_4_n_0\ : STD_LOGIC;
  signal lr_counter_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^m_clk\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal serial_counter : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \serial_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \serial_counter[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \lr_counter[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \lr_counter[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \lr_counter[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \lr_counter[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \serial_counter[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \serial_counter[1]_i_1\ : label is "soft_lutpair2";
begin
  \^m_clk\ <= m_clk;
  lrclk <= i_lrclk;
  mclk <= \^m_clk\;
  sclk <= i_sclk;
i_lrclk_inferred_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555555555555"
    )
        port map (
      I0 => lr_counter_reg(5),
      I1 => lr_counter_reg(3),
      I2 => lr_counter_reg(2),
      I3 => lr_counter_reg(0),
      I4 => lr_counter_reg(4),
      I5 => lr_counter_reg(1),
      O => i_lrclk
    );
i_sclk_inferred_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => serial_counter(1),
      I1 => serial_counter(0),
      O => i_sclk
    );
\lr_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => lr_counter_reg(0),
      O => p_0_in(0)
    );
\lr_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lr_counter_reg(0),
      I1 => lr_counter_reg(1),
      O => p_0_in(1)
    );
\lr_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => lr_counter_reg(0),
      I1 => lr_counter_reg(1),
      I2 => lr_counter_reg(2),
      O => p_0_in(2)
    );
\lr_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => lr_counter_reg(1),
      I1 => lr_counter_reg(0),
      I2 => lr_counter_reg(2),
      I3 => lr_counter_reg(3),
      O => p_0_in(3)
    );
\lr_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => lr_counter_reg(2),
      I1 => lr_counter_reg(0),
      I2 => lr_counter_reg(1),
      I3 => lr_counter_reg(3),
      I4 => lr_counter_reg(4),
      O => p_0_in(4)
    );
\lr_counter[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => serial_counter(0),
      I1 => serial_counter(1),
      I2 => \lr_counter[5]_i_4_n_0\,
      O => lr_counter
    );
\lr_counter[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => serial_counter(1),
      I1 => serial_counter(0),
      O => \lr_counter[5]_i_2_n_0\
    );
\lr_counter[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => lr_counter_reg(3),
      I1 => lr_counter_reg(1),
      I2 => lr_counter_reg(0),
      I3 => lr_counter_reg(2),
      I4 => lr_counter_reg(4),
      I5 => lr_counter_reg(5),
      O => p_0_in(5)
    );
\lr_counter[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => lr_counter_reg(2),
      I1 => lr_counter_reg(1),
      I2 => lr_counter_reg(5),
      I3 => lr_counter_reg(0),
      I4 => lr_counter_reg(3),
      I5 => lr_counter_reg(4),
      O => \lr_counter[5]_i_4_n_0\
    );
\lr_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \lr_counter[5]_i_2_n_0\,
      D => p_0_in(0),
      Q => lr_counter_reg(0),
      R => lr_counter
    );
\lr_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \lr_counter[5]_i_2_n_0\,
      D => p_0_in(1),
      Q => lr_counter_reg(1),
      R => lr_counter
    );
\lr_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \lr_counter[5]_i_2_n_0\,
      D => p_0_in(2),
      Q => lr_counter_reg(2),
      R => lr_counter
    );
\lr_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \lr_counter[5]_i_2_n_0\,
      D => p_0_in(3),
      Q => lr_counter_reg(3),
      R => lr_counter
    );
\lr_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \lr_counter[5]_i_2_n_0\,
      D => p_0_in(4),
      Q => lr_counter_reg(4),
      R => lr_counter
    );
\lr_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \lr_counter[5]_i_2_n_0\,
      D => p_0_in(5),
      Q => lr_counter_reg(5),
      R => lr_counter
    );
\serial_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => serial_counter(0),
      O => \serial_counter[0]_i_1_n_0\
    );
\serial_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => serial_counter(0),
      I1 => serial_counter(1),
      O => \serial_counter[1]_i_1_n_0\
    );
\serial_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => \serial_counter[0]_i_1_n_0\,
      Q => serial_counter(0),
      R => '0'
    );
\serial_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => \serial_counter[1]_i_1_n_0\,
      Q => serial_counter(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_I2S_wrapper_0_0_I2S_rec is
  port (
    m_clk : in STD_LOGIC;
    m_rst : in STD_LOGIC;
    mclk : out STD_LOGIC;
    lrclk : out STD_LOGIC;
    sclk : out STD_LOGIC;
    data_in : in STD_LOGIC;
    \axi_out_fwd[TValid]\ : out STD_LOGIC;
    \axi_out_fwd[TLast]\ : out STD_LOGIC;
    \axi_out_fwd[TData]\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \axi_out_fwd[TID]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \axi_out_bwd[TReady]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_I2S_wrapper_0_0_I2S_rec : entity is "I2S_rec";
  attribute g_channel_offset : string;
  attribute g_channel_offset of design_1_I2S_wrapper_0_0_I2S_rec : entity is "4'b0000";
  attribute g_clock_div_lrclk : integer;
  attribute g_clock_div_lrclk of design_1_I2S_wrapper_0_0_I2S_rec : entity is 64;
  attribute g_clock_div_sclk : integer;
  attribute g_clock_div_sclk of design_1_I2S_wrapper_0_0_I2S_rec : entity is 4;
end design_1_I2S_wrapper_0_0_I2S_rec;

architecture STRUCTURE of design_1_I2S_wrapper_0_0_I2S_rec is
  signal \<const0>\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_out_fwd[TData][23]_i_1_n_0\ : STD_LOGIC;
  signal \^axi_out_fwd[tid]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^axi_out_fwd[tvalid]\ : STD_LOGIC;
  signal \axi_out_fwd[TValid]_i_1_n_0\ : STD_LOGIC;
  signal busy_i_1_n_0 : STD_LOGIC;
  signal busy_i_2_n_0 : STD_LOGIC;
  signal busy_reg_n_0 : STD_LOGIC;
  signal is_l_sample_inv_i_1_n_0 : STD_LOGIC;
  signal is_l_sample_reg_inv_n_0 : STD_LOGIC;
  signal l_buffr0 : STD_LOGIC;
  signal l_buffr_i_1_n_0 : STD_LOGIC;
  signal l_buffr_reg_n_0 : STD_LOGIC;
  signal l_sample : STD_LOGIC;
  signal \l_sample_reg_n_0_[0]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[10]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[11]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[12]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[13]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[14]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[15]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[16]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[17]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[18]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[19]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[1]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[20]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[21]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[22]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[23]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[2]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[3]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[4]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[5]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[6]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[7]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[8]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[9]\ : STD_LOGIC;
  signal l_sent : STD_LOGIC;
  signal l_sent_i_1_n_0 : STD_LOGIC;
  signal l_sent_prev : STD_LOGIC;
  signal l_sent_prev_i_1_n_0 : STD_LOGIC;
  signal lr_counter : STD_LOGIC;
  signal \lr_counter[5]_i_4_n_0\ : STD_LOGIC;
  signal lr_counter_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal minusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal offset : STD_LOGIC;
  signal \offset[4]_i_1_n_0\ : STD_LOGIC;
  signal offset_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal r_sample : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \r_sample[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[10]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[11]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[11]_i_2_n_0\ : STD_LOGIC;
  signal \r_sample[12]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[13]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[13]_i_2_n_0\ : STD_LOGIC;
  signal \r_sample[14]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[14]_i_2_n_0\ : STD_LOGIC;
  signal \r_sample[14]_i_3_n_0\ : STD_LOGIC;
  signal \r_sample[15]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[16]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[17]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[18]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[19]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[19]_i_2_n_0\ : STD_LOGIC;
  signal \r_sample[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[20]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[20]_i_2_n_0\ : STD_LOGIC;
  signal \r_sample[21]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[22]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[22]_i_2_n_0\ : STD_LOGIC;
  signal \r_sample[23]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[23]_i_2_n_0\ : STD_LOGIC;
  signal \r_sample[23]_i_3_n_0\ : STD_LOGIC;
  signal \r_sample[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[9]_i_1_n_0\ : STD_LOGIC;
  signal r_sent : STD_LOGIC;
  signal r_sent_i_1_n_0 : STD_LOGIC;
  signal r_sent_i_2_n_0 : STD_LOGIC;
  signal serial_counter : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal serial_counter0 : STD_LOGIC;
  signal \serial_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \serial_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal start : STD_LOGIC;
  signal start0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "e_idle:001,e_data:010,e_wait:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "e_idle:001,e_data:010,e_wait:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "e_idle:001,e_data:010,e_wait:100,";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of busy_i_2 : label is "soft_lutpair7";
  attribute inverted : string;
  attribute inverted of is_l_sample_reg_inv : label is "yes";
  attribute SOFT_HLUTNM of l_buffr_i_2 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of l_sent_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of l_sent_prev_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \lr_counter[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \lr_counter[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \lr_counter[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \lr_counter[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \lr_counter[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \lr_counter[5]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \offset[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \offset[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \offset[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \offset[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \offset[4]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_sample[11]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r_sample[14]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_sample[19]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r_sample[20]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r_sample[23]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r_sample[23]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of r_sent_i_2 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \serial_counter[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \serial_counter[1]_i_1\ : label is "soft_lutpair8";
begin
  \axi_out_fwd[TID]\(3) <= \<const0>\;
  \axi_out_fwd[TID]\(2) <= \<const0>\;
  \axi_out_fwd[TID]\(1) <= \<const0>\;
  \axi_out_fwd[TID]\(0) <= \^axi_out_fwd[tid]\(0);
  \axi_out_fwd[TLast]\ <= \<const0>\;
  \axi_out_fwd[TValid]\ <= \^axi_out_fwd[tvalid]\;
  lrclk <= \<const0>\;
  mclk <= \<const0>\;
  sclk <= \<const0>\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0700"
    )
        port map (
      I0 => \axi_out_bwd[TReady]\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => l_buffr_reg_n_0,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => m_rst,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF00FC44"
    )
        port map (
      I0 => \axi_out_bwd[TReady]\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => l_buffr_reg_n_0,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => m_rst,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCCCC888"
    )
        port map (
      I0 => \axi_out_bwd[TReady]\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => l_buffr_reg_n_0,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => m_rst,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => '0'
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\axi_out_fwd[TData][23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => l_buffr_reg_n_0,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => m_rst,
      O => \axi_out_fwd[TData][23]_i_1_n_0\
    );
\axi_out_fwd[TValid]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8F8800008F88"
    )
        port map (
      I0 => l_buffr_reg_n_0,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \axi_out_bwd[TReady]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => m_rst,
      I5 => \^axi_out_fwd[tvalid]\,
      O => \axi_out_fwd[TValid]_i_1_n_0\
    );
\axi_out_fwd_reg[TData][0]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk,
      CE => \axi_out_fwd[TData][23]_i_1_n_0\,
      D => \l_sample_reg_n_0_[0]\,
      Q => \axi_out_fwd[TData]\(0),
      R => '0'
    );
\axi_out_fwd_reg[TData][10]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk,
      CE => \axi_out_fwd[TData][23]_i_1_n_0\,
      D => \l_sample_reg_n_0_[10]\,
      Q => \axi_out_fwd[TData]\(10),
      R => '0'
    );
\axi_out_fwd_reg[TData][11]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk,
      CE => \axi_out_fwd[TData][23]_i_1_n_0\,
      D => \l_sample_reg_n_0_[11]\,
      Q => \axi_out_fwd[TData]\(11),
      R => '0'
    );
\axi_out_fwd_reg[TData][12]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk,
      CE => \axi_out_fwd[TData][23]_i_1_n_0\,
      D => \l_sample_reg_n_0_[12]\,
      Q => \axi_out_fwd[TData]\(12),
      R => '0'
    );
\axi_out_fwd_reg[TData][13]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk,
      CE => \axi_out_fwd[TData][23]_i_1_n_0\,
      D => \l_sample_reg_n_0_[13]\,
      Q => \axi_out_fwd[TData]\(13),
      R => '0'
    );
\axi_out_fwd_reg[TData][14]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk,
      CE => \axi_out_fwd[TData][23]_i_1_n_0\,
      D => \l_sample_reg_n_0_[14]\,
      Q => \axi_out_fwd[TData]\(14),
      R => '0'
    );
\axi_out_fwd_reg[TData][15]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk,
      CE => \axi_out_fwd[TData][23]_i_1_n_0\,
      D => \l_sample_reg_n_0_[15]\,
      Q => \axi_out_fwd[TData]\(15),
      R => '0'
    );
\axi_out_fwd_reg[TData][16]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk,
      CE => \axi_out_fwd[TData][23]_i_1_n_0\,
      D => \l_sample_reg_n_0_[16]\,
      Q => \axi_out_fwd[TData]\(16),
      R => '0'
    );
\axi_out_fwd_reg[TData][17]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk,
      CE => \axi_out_fwd[TData][23]_i_1_n_0\,
      D => \l_sample_reg_n_0_[17]\,
      Q => \axi_out_fwd[TData]\(17),
      R => '0'
    );
\axi_out_fwd_reg[TData][18]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk,
      CE => \axi_out_fwd[TData][23]_i_1_n_0\,
      D => \l_sample_reg_n_0_[18]\,
      Q => \axi_out_fwd[TData]\(18),
      R => '0'
    );
\axi_out_fwd_reg[TData][19]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk,
      CE => \axi_out_fwd[TData][23]_i_1_n_0\,
      D => \l_sample_reg_n_0_[19]\,
      Q => \axi_out_fwd[TData]\(19),
      R => '0'
    );
\axi_out_fwd_reg[TData][1]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk,
      CE => \axi_out_fwd[TData][23]_i_1_n_0\,
      D => \l_sample_reg_n_0_[1]\,
      Q => \axi_out_fwd[TData]\(1),
      R => '0'
    );
\axi_out_fwd_reg[TData][20]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk,
      CE => \axi_out_fwd[TData][23]_i_1_n_0\,
      D => \l_sample_reg_n_0_[20]\,
      Q => \axi_out_fwd[TData]\(20),
      R => '0'
    );
\axi_out_fwd_reg[TData][21]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk,
      CE => \axi_out_fwd[TData][23]_i_1_n_0\,
      D => \l_sample_reg_n_0_[21]\,
      Q => \axi_out_fwd[TData]\(21),
      R => '0'
    );
\axi_out_fwd_reg[TData][22]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk,
      CE => \axi_out_fwd[TData][23]_i_1_n_0\,
      D => \l_sample_reg_n_0_[22]\,
      Q => \axi_out_fwd[TData]\(22),
      R => '0'
    );
\axi_out_fwd_reg[TData][23]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk,
      CE => \axi_out_fwd[TData][23]_i_1_n_0\,
      D => \l_sample_reg_n_0_[23]\,
      Q => \axi_out_fwd[TData]\(23),
      R => '0'
    );
\axi_out_fwd_reg[TData][2]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk,
      CE => \axi_out_fwd[TData][23]_i_1_n_0\,
      D => \l_sample_reg_n_0_[2]\,
      Q => \axi_out_fwd[TData]\(2),
      R => '0'
    );
\axi_out_fwd_reg[TData][3]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk,
      CE => \axi_out_fwd[TData][23]_i_1_n_0\,
      D => \l_sample_reg_n_0_[3]\,
      Q => \axi_out_fwd[TData]\(3),
      R => '0'
    );
\axi_out_fwd_reg[TData][4]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk,
      CE => \axi_out_fwd[TData][23]_i_1_n_0\,
      D => \l_sample_reg_n_0_[4]\,
      Q => \axi_out_fwd[TData]\(4),
      R => '0'
    );
\axi_out_fwd_reg[TData][5]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk,
      CE => \axi_out_fwd[TData][23]_i_1_n_0\,
      D => \l_sample_reg_n_0_[5]\,
      Q => \axi_out_fwd[TData]\(5),
      R => '0'
    );
\axi_out_fwd_reg[TData][6]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk,
      CE => \axi_out_fwd[TData][23]_i_1_n_0\,
      D => \l_sample_reg_n_0_[6]\,
      Q => \axi_out_fwd[TData]\(6),
      R => '0'
    );
\axi_out_fwd_reg[TData][7]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk,
      CE => \axi_out_fwd[TData][23]_i_1_n_0\,
      D => \l_sample_reg_n_0_[7]\,
      Q => \axi_out_fwd[TData]\(7),
      R => '0'
    );
\axi_out_fwd_reg[TData][8]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk,
      CE => \axi_out_fwd[TData][23]_i_1_n_0\,
      D => \l_sample_reg_n_0_[8]\,
      Q => \axi_out_fwd[TData]\(8),
      R => '0'
    );
\axi_out_fwd_reg[TData][9]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk,
      CE => \axi_out_fwd[TData][23]_i_1_n_0\,
      D => \l_sample_reg_n_0_[9]\,
      Q => \axi_out_fwd[TData]\(9),
      R => '0'
    );
\axi_out_fwd_reg[TID][0]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk,
      CE => \axi_out_fwd[TData][23]_i_1_n_0\,
      D => is_l_sample_reg_inv_n_0,
      Q => \^axi_out_fwd[tid]\(0),
      R => '0'
    );
\axi_out_fwd_reg[TValid]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk,
      CE => '1',
      D => \axi_out_fwd[TValid]_i_1_n_0\,
      Q => \^axi_out_fwd[tvalid]\,
      R => '0'
    );
busy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE0F0F0F0F0F0F0"
    )
        port map (
      I0 => offset_reg(4),
      I1 => busy_i_2_n_0,
      I2 => busy_reg_n_0,
      I3 => start,
      I4 => serial_counter(1),
      I5 => serial_counter(0),
      O => busy_i_1_n_0
    );
busy_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => offset_reg(0),
      I1 => offset_reg(3),
      I2 => offset_reg(2),
      I3 => offset_reg(1),
      O => busy_i_2_n_0
    );
busy_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => busy_i_1_n_0,
      Q => busy_reg_n_0,
      R => '0'
    );
is_l_sample_inv_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => lr_counter_reg(4),
      I1 => lr_counter_reg(2),
      I2 => lr_counter_reg(0),
      I3 => lr_counter_reg(1),
      I4 => lr_counter_reg(3),
      I5 => lr_counter_reg(5),
      O => is_l_sample_inv_i_1_n_0
    );
is_l_sample_reg_inv: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => is_l_sample_inv_i_1_n_0,
      Q => is_l_sample_reg_inv_n_0,
      R => '0'
    );
l_buffr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAF040F262"
    )
        port map (
      I0 => l_buffr_reg_n_0,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => l_buffr0,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => m_rst,
      O => l_buffr_i_1_n_0
    );
l_buffr_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => l_sent,
      I1 => l_sent_prev,
      O => l_buffr0
    );
l_buffr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => l_buffr_i_1_n_0,
      Q => l_buffr_reg_n_0,
      R => '0'
    );
\l_sample[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => r_sent,
      I1 => serial_counter(1),
      I2 => serial_counter(0),
      O => l_sample
    );
\l_sample_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => r_sample(0),
      Q => \l_sample_reg_n_0_[0]\,
      R => '0'
    );
\l_sample_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => r_sample(10),
      Q => \l_sample_reg_n_0_[10]\,
      R => '0'
    );
\l_sample_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => r_sample(11),
      Q => \l_sample_reg_n_0_[11]\,
      R => '0'
    );
\l_sample_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => r_sample(12),
      Q => \l_sample_reg_n_0_[12]\,
      R => '0'
    );
\l_sample_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => r_sample(13),
      Q => \l_sample_reg_n_0_[13]\,
      R => '0'
    );
\l_sample_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => r_sample(14),
      Q => \l_sample_reg_n_0_[14]\,
      R => '0'
    );
\l_sample_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => r_sample(15),
      Q => \l_sample_reg_n_0_[15]\,
      R => '0'
    );
\l_sample_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => r_sample(16),
      Q => \l_sample_reg_n_0_[16]\,
      R => '0'
    );
\l_sample_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => r_sample(17),
      Q => \l_sample_reg_n_0_[17]\,
      R => '0'
    );
\l_sample_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => r_sample(18),
      Q => \l_sample_reg_n_0_[18]\,
      R => '0'
    );
\l_sample_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => r_sample(19),
      Q => \l_sample_reg_n_0_[19]\,
      R => '0'
    );
\l_sample_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => r_sample(1),
      Q => \l_sample_reg_n_0_[1]\,
      R => '0'
    );
\l_sample_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => r_sample(20),
      Q => \l_sample_reg_n_0_[20]\,
      R => '0'
    );
\l_sample_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => r_sample(21),
      Q => \l_sample_reg_n_0_[21]\,
      R => '0'
    );
\l_sample_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => r_sample(22),
      Q => \l_sample_reg_n_0_[22]\,
      R => '0'
    );
\l_sample_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => r_sample(23),
      Q => \l_sample_reg_n_0_[23]\,
      R => '0'
    );
\l_sample_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => r_sample(2),
      Q => \l_sample_reg_n_0_[2]\,
      R => '0'
    );
\l_sample_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => r_sample(3),
      Q => \l_sample_reg_n_0_[3]\,
      R => '0'
    );
\l_sample_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => r_sample(4),
      Q => \l_sample_reg_n_0_[4]\,
      R => '0'
    );
\l_sample_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => r_sample(5),
      Q => \l_sample_reg_n_0_[5]\,
      R => '0'
    );
\l_sample_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => r_sample(6),
      Q => \l_sample_reg_n_0_[6]\,
      R => '0'
    );
\l_sample_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => r_sample(7),
      Q => \l_sample_reg_n_0_[7]\,
      R => '0'
    );
\l_sample_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => r_sample(8),
      Q => \l_sample_reg_n_0_[8]\,
      R => '0'
    );
\l_sample_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => r_sample(9),
      Q => \l_sample_reg_n_0_[9]\,
      R => '0'
    );
l_sent_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => r_sent,
      I1 => serial_counter(1),
      I2 => serial_counter(0),
      I3 => l_sent,
      O => l_sent_i_1_n_0
    );
l_sent_prev_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => l_sent,
      I1 => m_rst,
      I2 => l_sent_prev,
      O => l_sent_prev_i_1_n_0
    );
l_sent_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => l_sent_prev_i_1_n_0,
      Q => l_sent_prev,
      R => '0'
    );
l_sent_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => l_sent_i_1_n_0,
      Q => l_sent,
      R => '0'
    );
\lr_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => lr_counter_reg(0),
      O => p_0_in(0)
    );
\lr_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lr_counter_reg(0),
      I1 => lr_counter_reg(1),
      O => p_0_in(1)
    );
\lr_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => lr_counter_reg(1),
      I1 => lr_counter_reg(0),
      I2 => lr_counter_reg(2),
      O => p_0_in(2)
    );
\lr_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => lr_counter_reg(2),
      I1 => lr_counter_reg(0),
      I2 => lr_counter_reg(1),
      I3 => lr_counter_reg(3),
      O => p_0_in(3)
    );
\lr_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => lr_counter_reg(3),
      I1 => lr_counter_reg(1),
      I2 => lr_counter_reg(0),
      I3 => lr_counter_reg(2),
      I4 => lr_counter_reg(4),
      O => p_0_in(4)
    );
\lr_counter[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => serial_counter(0),
      I1 => serial_counter(1),
      I2 => lr_counter_reg(5),
      I3 => \lr_counter[5]_i_4_n_0\,
      O => lr_counter
    );
\lr_counter[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => serial_counter(1),
      I1 => serial_counter(0),
      O => serial_counter0
    );
\lr_counter[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => lr_counter_reg(4),
      I1 => lr_counter_reg(2),
      I2 => lr_counter_reg(0),
      I3 => lr_counter_reg(1),
      I4 => lr_counter_reg(3),
      I5 => lr_counter_reg(5),
      O => p_0_in(5)
    );
\lr_counter[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => lr_counter_reg(3),
      I1 => lr_counter_reg(1),
      I2 => lr_counter_reg(0),
      I3 => lr_counter_reg(2),
      I4 => lr_counter_reg(4),
      O => \lr_counter[5]_i_4_n_0\
    );
\lr_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => serial_counter0,
      D => p_0_in(0),
      Q => lr_counter_reg(0),
      R => lr_counter
    );
\lr_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => serial_counter0,
      D => p_0_in(1),
      Q => lr_counter_reg(1),
      R => lr_counter
    );
\lr_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => serial_counter0,
      D => p_0_in(2),
      Q => lr_counter_reg(2),
      R => lr_counter
    );
\lr_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => serial_counter0,
      D => p_0_in(3),
      Q => lr_counter_reg(3),
      R => lr_counter
    );
\lr_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => serial_counter0,
      D => p_0_in(4),
      Q => lr_counter_reg(4),
      R => lr_counter
    );
\lr_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => serial_counter0,
      D => p_0_in(5),
      Q => lr_counter_reg(5),
      R => lr_counter
    );
\offset[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => offset_reg(0),
      O => minusOp(0)
    );
\offset[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => offset_reg(1),
      I1 => offset_reg(0),
      O => minusOp(1)
    );
\offset[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => offset_reg(0),
      I1 => offset_reg(1),
      I2 => offset_reg(2),
      O => minusOp(2)
    );
\offset[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => offset_reg(1),
      I1 => offset_reg(2),
      I2 => offset_reg(0),
      I3 => offset_reg(3),
      O => minusOp(3)
    );
\offset[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \r_sample[14]_i_2_n_0\,
      I1 => offset_reg(0),
      I2 => offset_reg(3),
      I3 => offset_reg(2),
      I4 => offset_reg(1),
      O => \offset[4]_i_1_n_0\
    );
\offset[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => start,
      I1 => busy_reg_n_0,
      I2 => serial_counter(0),
      I3 => serial_counter(1),
      O => offset
    );
\offset[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => offset_reg(1),
      I1 => offset_reg(2),
      I2 => offset_reg(0),
      I3 => offset_reg(3),
      I4 => offset_reg(4),
      O => minusOp(4)
    );
\offset_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => offset,
      D => minusOp(0),
      Q => offset_reg(0),
      R => \offset[4]_i_1_n_0\
    );
\offset_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => offset,
      D => minusOp(1),
      Q => offset_reg(1),
      R => \offset[4]_i_1_n_0\
    );
\offset_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => offset,
      D => minusOp(2),
      Q => offset_reg(2),
      R => \offset[4]_i_1_n_0\
    );
\offset_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_clk,
      CE => offset,
      D => minusOp(3),
      Q => offset_reg(3),
      S => \offset[4]_i_1_n_0\
    );
\offset_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_clk,
      CE => offset,
      D => minusOp(4),
      Q => offset_reg(4),
      S => \offset[4]_i_1_n_0\
    );
\r_sample[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => r_sample(0),
      I1 => offset_reg(1),
      I2 => offset_reg(2),
      I3 => \r_sample[20]_i_2_n_0\,
      I4 => \r_sample[14]_i_2_n_0\,
      I5 => data_in,
      O => \r_sample[0]_i_1_n_0\
    );
\r_sample[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => data_in,
      I1 => offset_reg(2),
      I2 => offset_reg(1),
      I3 => \r_sample[14]_i_2_n_0\,
      I4 => \r_sample[14]_i_3_n_0\,
      I5 => r_sample(10),
      O => \r_sample[10]_i_1_n_0\
    );
\r_sample[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => data_in,
      I1 => offset_reg(0),
      I2 => offset_reg(3),
      I3 => \r_sample[14]_i_2_n_0\,
      I4 => \r_sample[11]_i_2_n_0\,
      I5 => r_sample(11),
      O => \r_sample[11]_i_1_n_0\
    );
\r_sample[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => offset_reg(2),
      I1 => offset_reg(1),
      O => \r_sample[11]_i_2_n_0\
    );
\r_sample[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => data_in,
      I1 => \r_sample[14]_i_2_n_0\,
      I2 => offset_reg(2),
      I3 => offset_reg(1),
      I4 => \r_sample[14]_i_3_n_0\,
      I5 => r_sample(12),
      O => \r_sample[12]_i_1_n_0\
    );
\r_sample[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => data_in,
      I1 => offset_reg(0),
      I2 => offset_reg(3),
      I3 => offset_reg(2),
      I4 => \r_sample[13]_i_2_n_0\,
      I5 => r_sample(13),
      O => \r_sample[13]_i_1_n_0\
    );
\r_sample[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000200020000000"
    )
        port map (
      I0 => offset_reg(1),
      I1 => offset_reg(4),
      I2 => serial_counter(1),
      I3 => serial_counter(0),
      I4 => busy_reg_n_0,
      I5 => start,
      O => \r_sample[13]_i_2_n_0\
    );
\r_sample[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => data_in,
      I1 => offset_reg(2),
      I2 => offset_reg(1),
      I3 => \r_sample[14]_i_2_n_0\,
      I4 => \r_sample[14]_i_3_n_0\,
      I5 => r_sample(14),
      O => \r_sample[14]_i_1_n_0\
    );
\r_sample[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1FFF"
    )
        port map (
      I0 => start,
      I1 => busy_reg_n_0,
      I2 => serial_counter(0),
      I3 => serial_counter(1),
      I4 => offset_reg(4),
      O => \r_sample[14]_i_2_n_0\
    );
\r_sample[14]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => offset_reg(0),
      I1 => offset_reg(3),
      O => \r_sample[14]_i_3_n_0\
    );
\r_sample[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => data_in,
      I1 => \r_sample[23]_i_3_n_0\,
      I2 => offset_reg(1),
      I3 => offset_reg(2),
      I4 => \r_sample[19]_i_2_n_0\,
      I5 => r_sample(15),
      O => \r_sample[15]_i_1_n_0\
    );
\r_sample[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => data_in,
      I1 => \r_sample[23]_i_3_n_0\,
      I2 => offset_reg(1),
      I3 => offset_reg(2),
      I4 => \r_sample[20]_i_2_n_0\,
      I5 => r_sample(16),
      O => \r_sample[16]_i_1_n_0\
    );
\r_sample[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => data_in,
      I1 => offset_reg(2),
      I2 => offset_reg(0),
      I3 => offset_reg(3),
      I4 => \r_sample[22]_i_2_n_0\,
      I5 => r_sample(17),
      O => \r_sample[17]_i_1_n_0\
    );
\r_sample[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => data_in,
      I1 => offset_reg(2),
      I2 => offset_reg(3),
      I3 => offset_reg(0),
      I4 => \r_sample[22]_i_2_n_0\,
      I5 => r_sample(18),
      O => \r_sample[18]_i_1_n_0\
    );
\r_sample[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => data_in,
      I1 => \r_sample[19]_i_2_n_0\,
      I2 => offset_reg(2),
      I3 => offset_reg(1),
      I4 => \r_sample[23]_i_3_n_0\,
      I5 => r_sample(19),
      O => \r_sample[19]_i_1_n_0\
    );
\r_sample[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => offset_reg(0),
      I1 => offset_reg(3),
      O => \r_sample[19]_i_2_n_0\
    );
\r_sample[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => data_in,
      I1 => offset_reg(2),
      I2 => offset_reg(1),
      I3 => \r_sample[14]_i_2_n_0\,
      I4 => \r_sample[19]_i_2_n_0\,
      I5 => r_sample(1),
      O => \r_sample[1]_i_1_n_0\
    );
\r_sample[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => data_in,
      I1 => \r_sample[20]_i_2_n_0\,
      I2 => offset_reg(2),
      I3 => offset_reg(1),
      I4 => \r_sample[23]_i_3_n_0\,
      I5 => r_sample(20),
      O => \r_sample[20]_i_1_n_0\
    );
\r_sample[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => offset_reg(3),
      I1 => offset_reg(0),
      O => \r_sample[20]_i_2_n_0\
    );
\r_sample[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => data_in,
      I1 => offset_reg(0),
      I2 => offset_reg(3),
      I3 => offset_reg(2),
      I4 => \r_sample[22]_i_2_n_0\,
      I5 => r_sample(21),
      O => \r_sample[21]_i_1_n_0\
    );
\r_sample[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => data_in,
      I1 => offset_reg(3),
      I2 => offset_reg(0),
      I3 => offset_reg(2),
      I4 => \r_sample[22]_i_2_n_0\,
      I5 => r_sample(22),
      O => \r_sample[22]_i_1_n_0\
    );
\r_sample[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880000000000000"
    )
        port map (
      I0 => serial_counter(1),
      I1 => serial_counter(0),
      I2 => busy_reg_n_0,
      I3 => start,
      I4 => offset_reg(4),
      I5 => offset_reg(1),
      O => \r_sample[22]_i_2_n_0\
    );
\r_sample[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => data_in,
      I1 => \r_sample[23]_i_2_n_0\,
      I2 => offset_reg(0),
      I3 => offset_reg(3),
      I4 => \r_sample[23]_i_3_n_0\,
      I5 => r_sample(23),
      O => \r_sample[23]_i_1_n_0\
    );
\r_sample[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => offset_reg(1),
      I1 => offset_reg(2),
      O => \r_sample[23]_i_2_n_0\
    );
\r_sample[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8000000"
    )
        port map (
      I0 => offset_reg(4),
      I1 => start,
      I2 => busy_reg_n_0,
      I3 => serial_counter(0),
      I4 => serial_counter(1),
      O => \r_sample[23]_i_3_n_0\
    );
\r_sample[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => data_in,
      I1 => offset_reg(2),
      I2 => offset_reg(1),
      I3 => \r_sample[14]_i_2_n_0\,
      I4 => \r_sample[20]_i_2_n_0\,
      I5 => r_sample(2),
      O => \r_sample[2]_i_1_n_0\
    );
\r_sample[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => data_in,
      I1 => \r_sample[14]_i_2_n_0\,
      I2 => offset_reg(2),
      I3 => offset_reg(1),
      I4 => \r_sample[19]_i_2_n_0\,
      I5 => r_sample(3),
      O => \r_sample[3]_i_1_n_0\
    );
\r_sample[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => data_in,
      I1 => \r_sample[14]_i_2_n_0\,
      I2 => offset_reg(2),
      I3 => offset_reg(1),
      I4 => \r_sample[20]_i_2_n_0\,
      I5 => r_sample(4),
      O => \r_sample[4]_i_1_n_0\
    );
\r_sample[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => data_in,
      I1 => offset_reg(2),
      I2 => offset_reg(1),
      I3 => \r_sample[14]_i_2_n_0\,
      I4 => \r_sample[19]_i_2_n_0\,
      I5 => r_sample(5),
      O => \r_sample[5]_i_1_n_0\
    );
\r_sample[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => data_in,
      I1 => offset_reg(2),
      I2 => offset_reg(1),
      I3 => \r_sample[14]_i_2_n_0\,
      I4 => \r_sample[20]_i_2_n_0\,
      I5 => r_sample(6),
      O => \r_sample[6]_i_1_n_0\
    );
\r_sample[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => data_in,
      I1 => \r_sample[23]_i_2_n_0\,
      I2 => offset_reg(0),
      I3 => offset_reg(3),
      I4 => \r_sample[14]_i_2_n_0\,
      I5 => r_sample(7),
      O => \r_sample[7]_i_1_n_0\
    );
\r_sample[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => data_in,
      I1 => \r_sample[23]_i_2_n_0\,
      I2 => offset_reg(0),
      I3 => offset_reg(3),
      I4 => \r_sample[14]_i_2_n_0\,
      I5 => r_sample(8),
      O => \r_sample[8]_i_1_n_0\
    );
\r_sample[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => data_in,
      I1 => offset_reg(0),
      I2 => offset_reg(3),
      I3 => offset_reg(2),
      I4 => \r_sample[13]_i_2_n_0\,
      I5 => r_sample(9),
      O => \r_sample[9]_i_1_n_0\
    );
\r_sample_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \r_sample[0]_i_1_n_0\,
      Q => r_sample(0),
      R => '0'
    );
\r_sample_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \r_sample[10]_i_1_n_0\,
      Q => r_sample(10),
      R => '0'
    );
\r_sample_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \r_sample[11]_i_1_n_0\,
      Q => r_sample(11),
      R => '0'
    );
\r_sample_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \r_sample[12]_i_1_n_0\,
      Q => r_sample(12),
      R => '0'
    );
\r_sample_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \r_sample[13]_i_1_n_0\,
      Q => r_sample(13),
      R => '0'
    );
\r_sample_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \r_sample[14]_i_1_n_0\,
      Q => r_sample(14),
      R => '0'
    );
\r_sample_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \r_sample[15]_i_1_n_0\,
      Q => r_sample(15),
      R => '0'
    );
\r_sample_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \r_sample[16]_i_1_n_0\,
      Q => r_sample(16),
      R => '0'
    );
\r_sample_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \r_sample[17]_i_1_n_0\,
      Q => r_sample(17),
      R => '0'
    );
\r_sample_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \r_sample[18]_i_1_n_0\,
      Q => r_sample(18),
      R => '0'
    );
\r_sample_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \r_sample[19]_i_1_n_0\,
      Q => r_sample(19),
      R => '0'
    );
\r_sample_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \r_sample[1]_i_1_n_0\,
      Q => r_sample(1),
      R => '0'
    );
\r_sample_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \r_sample[20]_i_1_n_0\,
      Q => r_sample(20),
      R => '0'
    );
\r_sample_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \r_sample[21]_i_1_n_0\,
      Q => r_sample(21),
      R => '0'
    );
\r_sample_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \r_sample[22]_i_1_n_0\,
      Q => r_sample(22),
      R => '0'
    );
\r_sample_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \r_sample[23]_i_1_n_0\,
      Q => r_sample(23),
      R => '0'
    );
\r_sample_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \r_sample[2]_i_1_n_0\,
      Q => r_sample(2),
      R => '0'
    );
\r_sample_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \r_sample[3]_i_1_n_0\,
      Q => r_sample(3),
      R => '0'
    );
\r_sample_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \r_sample[4]_i_1_n_0\,
      Q => r_sample(4),
      R => '0'
    );
\r_sample_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \r_sample[5]_i_1_n_0\,
      Q => r_sample(5),
      R => '0'
    );
\r_sample_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \r_sample[6]_i_1_n_0\,
      Q => r_sample(6),
      R => '0'
    );
\r_sample_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \r_sample[7]_i_1_n_0\,
      Q => r_sample(7),
      R => '0'
    );
\r_sample_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \r_sample[8]_i_1_n_0\,
      Q => r_sample(8),
      R => '0'
    );
\r_sample_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \r_sample[9]_i_1_n_0\,
      Q => r_sample(9),
      R => '0'
    );
r_sent_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888B888B888B8888"
    )
        port map (
      I0 => r_sent,
      I1 => r_sent_i_2_n_0,
      I2 => busy_i_2_n_0,
      I3 => offset_reg(4),
      I4 => start,
      I5 => busy_reg_n_0,
      O => r_sent_i_1_n_0
    );
r_sent_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => serial_counter(0),
      I1 => serial_counter(1),
      O => r_sent_i_2_n_0
    );
r_sent_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => r_sent_i_1_n_0,
      Q => r_sent,
      R => '0'
    );
\serial_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => serial_counter(0),
      O => \serial_counter[0]_i_1_n_0\
    );
\serial_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => serial_counter(0),
      I1 => serial_counter(1),
      O => \serial_counter[1]_i_1_n_0\
    );
\serial_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \serial_counter[0]_i_1_n_0\,
      Q => serial_counter(0),
      R => '0'
    );
\serial_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \serial_counter[1]_i_1_n_0\,
      Q => serial_counter(1),
      R => '0'
    );
start_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => lr_counter_reg(0),
      I1 => lr_counter_reg(1),
      I2 => lr_counter_reg(2),
      I3 => lr_counter_reg(4),
      I4 => lr_counter_reg(3),
      O => start0
    );
start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => start0,
      Q => start,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_I2S_wrapper_0_0_I2S_trans is
  port (
    m_clk : in STD_LOGIC;
    m_rst : in STD_LOGIC;
    mclk : out STD_LOGIC;
    lrclk : out STD_LOGIC;
    sclk : out STD_LOGIC;
    data_out : out STD_LOGIC;
    \axi_in_fwd[TValid]\ : in STD_LOGIC;
    \axi_in_fwd[TLast]\ : in STD_LOGIC;
    \axi_in_fwd[TData]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \axi_in_fwd[TID]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axi_in_bwd[TReady]\ : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_I2S_wrapper_0_0_I2S_trans : entity is "I2S_trans";
  attribute g_channel_offset : string;
  attribute g_channel_offset of design_1_I2S_wrapper_0_0_I2S_trans : entity is "4'b0000";
  attribute g_chip_scope : string;
  attribute g_chip_scope of design_1_I2S_wrapper_0_0_I2S_trans : entity is "True";
  attribute g_clock_div_lrclk : integer;
  attribute g_clock_div_lrclk of design_1_I2S_wrapper_0_0_I2S_trans : entity is 64;
  attribute g_clock_div_sclk : integer;
  attribute g_clock_div_sclk of design_1_I2S_wrapper_0_0_I2S_trans : entity is 4;
end design_1_I2S_wrapper_0_0_I2S_trans;

architecture STRUCTURE of design_1_I2S_wrapper_0_0_I2S_trans is
  signal \<const0>\ : STD_LOGIC;
  signal \^axi_in_bwd[tready]\ : STD_LOGIC;
  signal \axi_in_bwd[TReady]_i_1_n_0\ : STD_LOGIC;
  signal \axi_in_bwd[TReady]_i_2_n_0\ : STD_LOGIC;
  signal busy : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of busy : signal is std.standard.true;
  signal busy_i_1_n_0 : STD_LOGIC;
  signal \^data_out\ : STD_LOGIC;
  signal data_out_i_10_n_0 : STD_LOGIC;
  signal data_out_i_11_n_0 : STD_LOGIC;
  signal data_out_i_14_n_0 : STD_LOGIC;
  signal data_out_i_15_n_0 : STD_LOGIC;
  signal data_out_i_16_n_0 : STD_LOGIC;
  signal data_out_i_17_n_0 : STD_LOGIC;
  signal data_out_i_18_n_0 : STD_LOGIC;
  signal data_out_i_19_n_0 : STD_LOGIC;
  signal data_out_i_1_n_0 : STD_LOGIC;
  signal data_out_i_20_n_0 : STD_LOGIC;
  signal data_out_i_21_n_0 : STD_LOGIC;
  signal data_out_i_22_n_0 : STD_LOGIC;
  signal data_out_i_23_n_0 : STD_LOGIC;
  signal data_out_i_2_n_0 : STD_LOGIC;
  signal data_out_i_3_n_0 : STD_LOGIC;
  signal data_out_i_4_n_0 : STD_LOGIC;
  signal data_out_i_5_n_0 : STD_LOGIC;
  signal data_out_i_6_n_0 : STD_LOGIC;
  signal data_out_i_7_n_0 : STD_LOGIC;
  signal data_out_i_8_n_0 : STD_LOGIC;
  signal data_out_i_9_n_0 : STD_LOGIC;
  signal data_out_reg_i_12_n_0 : STD_LOGIC;
  signal data_out_reg_i_13_n_0 : STD_LOGIC;
  signal l_buffr_i_1_n_0 : STD_LOGIC;
  signal l_buffr_reg_n_0 : STD_LOGIC;
  signal l_sample : STD_LOGIC;
  signal \l_sample[23]_i_2_n_0\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[0]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[10]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[11]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[12]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[13]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[14]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[15]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[16]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[17]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[18]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[19]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[1]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[20]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[21]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[22]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[23]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[2]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[3]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[4]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[5]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[6]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[7]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[8]\ : STD_LOGIC;
  signal \l_sample_reg_n_0_[9]\ : STD_LOGIC;
  signal l_sent : STD_LOGIC;
  attribute MARK_DEBUG of l_sent : signal is std.standard.true;
  signal l_sent_i_1_n_0 : STD_LOGIC;
  signal lr_counter : STD_LOGIC;
  signal \lr_counter[5]_i_3_n_0\ : STD_LOGIC;
  signal lr_counter_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal offset : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute MARK_DEBUG of offset : signal is std.standard.true;
  signal \offset[0]_i_1_n_0\ : STD_LOGIC;
  signal \offset[1]_i_1_n_0\ : STD_LOGIC;
  signal \offset[2]_i_1_n_0\ : STD_LOGIC;
  signal \offset[3]_i_1_n_0\ : STD_LOGIC;
  signal \offset[4]_i_1_n_0\ : STD_LOGIC;
  signal \offset[4]_i_3_n_0\ : STD_LOGIC;
  signal \offset[4]_i_4_n_0\ : STD_LOGIC;
  signal \offset[4]_i_5_n_0\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal r_buffr_i_1_n_0 : STD_LOGIC;
  signal r_buffr_reg_n_0 : STD_LOGIC;
  signal r_sample : STD_LOGIC;
  signal \r_sample[23]_i_2_n_0\ : STD_LOGIC;
  signal \r_sample_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_sample_reg_n_0_[10]\ : STD_LOGIC;
  signal \r_sample_reg_n_0_[11]\ : STD_LOGIC;
  signal \r_sample_reg_n_0_[12]\ : STD_LOGIC;
  signal \r_sample_reg_n_0_[13]\ : STD_LOGIC;
  signal \r_sample_reg_n_0_[14]\ : STD_LOGIC;
  signal \r_sample_reg_n_0_[15]\ : STD_LOGIC;
  signal \r_sample_reg_n_0_[16]\ : STD_LOGIC;
  signal \r_sample_reg_n_0_[17]\ : STD_LOGIC;
  signal \r_sample_reg_n_0_[18]\ : STD_LOGIC;
  signal \r_sample_reg_n_0_[19]\ : STD_LOGIC;
  signal \r_sample_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_sample_reg_n_0_[20]\ : STD_LOGIC;
  signal \r_sample_reg_n_0_[21]\ : STD_LOGIC;
  signal \r_sample_reg_n_0_[22]\ : STD_LOGIC;
  signal \r_sample_reg_n_0_[23]\ : STD_LOGIC;
  signal \r_sample_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_sample_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_sample_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_sample_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_sample_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_sample_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_sample_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_sample_reg_n_0_[9]\ : STD_LOGIC;
  signal r_sent : STD_LOGIC;
  attribute MARK_DEBUG of r_sent : signal is std.standard.true;
  signal r_sent_i_1_n_0 : STD_LOGIC;
  signal sample : STD_LOGIC;
  signal \sample_reg_n_0_[0]\ : STD_LOGIC;
  signal \sample_reg_n_0_[10]\ : STD_LOGIC;
  signal \sample_reg_n_0_[11]\ : STD_LOGIC;
  signal \sample_reg_n_0_[12]\ : STD_LOGIC;
  signal \sample_reg_n_0_[13]\ : STD_LOGIC;
  signal \sample_reg_n_0_[14]\ : STD_LOGIC;
  signal \sample_reg_n_0_[15]\ : STD_LOGIC;
  signal \sample_reg_n_0_[16]\ : STD_LOGIC;
  signal \sample_reg_n_0_[17]\ : STD_LOGIC;
  signal \sample_reg_n_0_[18]\ : STD_LOGIC;
  signal \sample_reg_n_0_[19]\ : STD_LOGIC;
  signal \sample_reg_n_0_[1]\ : STD_LOGIC;
  signal \sample_reg_n_0_[20]\ : STD_LOGIC;
  signal \sample_reg_n_0_[21]\ : STD_LOGIC;
  signal \sample_reg_n_0_[22]\ : STD_LOGIC;
  signal \sample_reg_n_0_[23]\ : STD_LOGIC;
  signal \sample_reg_n_0_[2]\ : STD_LOGIC;
  signal \sample_reg_n_0_[3]\ : STD_LOGIC;
  signal \sample_reg_n_0_[4]\ : STD_LOGIC;
  signal \sample_reg_n_0_[5]\ : STD_LOGIC;
  signal \sample_reg_n_0_[6]\ : STD_LOGIC;
  signal \sample_reg_n_0_[7]\ : STD_LOGIC;
  signal \sample_reg_n_0_[8]\ : STD_LOGIC;
  signal \sample_reg_n_0_[9]\ : STD_LOGIC;
  signal serial_counter : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal serial_counter0 : STD_LOGIC;
  signal \serial_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \serial_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal start : STD_LOGIC;
  attribute MARK_DEBUG of start : signal is std.standard.true;
  signal start_reg0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute MARK_DEBUG of state : signal is std.standard.true;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of busy_reg : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of busy_reg : label is "true";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of l_sent_i_1 : label is "soft_lutpair17";
  attribute KEEP of l_sent_reg : label is "yes";
  attribute mark_debug_string of l_sent_reg : label is "true";
  attribute SOFT_HLUTNM of \lr_counter[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \lr_counter[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \lr_counter[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \lr_counter[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \lr_counter[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \lr_counter[5]_i_3\ : label is "soft_lutpair15";
  attribute KEEP of \offset_reg[0]\ : label is "yes";
  attribute mark_debug_string of \offset_reg[0]\ : label is "true";
  attribute KEEP of \offset_reg[1]\ : label is "yes";
  attribute mark_debug_string of \offset_reg[1]\ : label is "true";
  attribute KEEP of \offset_reg[2]\ : label is "yes";
  attribute mark_debug_string of \offset_reg[2]\ : label is "true";
  attribute KEEP of \offset_reg[3]\ : label is "yes";
  attribute mark_debug_string of \offset_reg[3]\ : label is "true";
  attribute KEEP of \offset_reg[4]\ : label is "yes";
  attribute mark_debug_string of \offset_reg[4]\ : label is "true";
  attribute SOFT_HLUTNM of r_sent_i_1 : label is "soft_lutpair16";
  attribute KEEP of r_sent_reg : label is "yes";
  attribute mark_debug_string of r_sent_reg : label is "true";
  attribute SOFT_HLUTNM of \serial_counter[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \serial_counter[1]_i_1\ : label is "soft_lutpair16";
  attribute KEEP of start_reg : label is "yes";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \state_reg[0]\ : label is "e_idle:00,e_data:01,e_wait:10";
  attribute KEEP of \state_reg[0]\ : label is "yes";
  attribute mark_debug_string of \state_reg[0]\ : label is "true";
  attribute FSM_ENCODED_STATES of \state_reg[1]\ : label is "e_idle:00,e_data:01,e_wait:10";
  attribute KEEP of \state_reg[1]\ : label is "yes";
  attribute mark_debug_string of \state_reg[1]\ : label is "true";
begin
  \axi_in_bwd[TReady]\ <= \^axi_in_bwd[tready]\;
  data_out <= \^data_out\;
  lrclk <= \<const0>\;
  mclk <= \<const0>\;
  sclk <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\axi_in_bwd[TReady]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888B8B88BB"
    )
        port map (
      I0 => \^axi_in_bwd[tready]\,
      I1 => m_rst,
      I2 => \axi_in_bwd[TReady]_i_2_n_0\,
      I3 => \axi_in_fwd[TValid]\,
      I4 => state(1),
      I5 => state(0),
      O => \axi_in_bwd[TReady]_i_1_n_0\
    );
\axi_in_bwd[TReady]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => l_buffr_reg_n_0,
      I1 => r_buffr_reg_n_0,
      O => \axi_in_bwd[TReady]_i_2_n_0\
    );
\axi_in_bwd_reg[TReady]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk,
      CE => '1',
      D => \axi_in_bwd[TReady]_i_1_n_0\,
      Q => \^axi_in_bwd[tready]\,
      R => '0'
    );
busy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF80BF80BF803F00"
    )
        port map (
      I0 => \offset[4]_i_4_n_0\,
      I1 => serial_counter(1),
      I2 => serial_counter(0),
      I3 => busy,
      I4 => busy,
      I5 => start,
      O => busy_i_1_n_0
    );
busy_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => busy_i_1_n_0,
      Q => busy,
      R => '0'
    );
data_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AAFFFF08AA0000"
    )
        port map (
      I0 => data_out_i_2_n_0,
      I1 => data_out_i_3_n_0,
      I2 => data_out_i_4_n_0,
      I3 => data_out_i_5_n_0,
      I4 => serial_counter0,
      I5 => \^data_out\,
      O => data_out_i_1_n_0
    );
data_out_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555556"
    )
        port map (
      I0 => offset(4),
      I1 => offset(0),
      I2 => offset(1),
      I3 => offset(2),
      I4 => offset(3),
      O => data_out_i_10_n_0
    );
data_out_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => offset(3),
      I1 => offset(2),
      I2 => offset(1),
      I3 => offset(0),
      O => data_out_i_11_n_0
    );
data_out_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => \r_sample_reg_n_0_[20]\,
      I1 => \r_sample_reg_n_0_[21]\,
      I2 => offset(1),
      I3 => offset(0),
      I4 => \r_sample_reg_n_0_[22]\,
      I5 => \r_sample_reg_n_0_[23]\,
      O => data_out_i_14_n_0
    );
data_out_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => \r_sample_reg_n_0_[16]\,
      I1 => \r_sample_reg_n_0_[17]\,
      I2 => offset(1),
      I3 => offset(0),
      I4 => \r_sample_reg_n_0_[18]\,
      I5 => \r_sample_reg_n_0_[19]\,
      O => data_out_i_15_n_0
    );
data_out_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => \l_sample_reg_n_0_[8]\,
      I1 => \l_sample_reg_n_0_[9]\,
      I2 => offset(1),
      I3 => offset(0),
      I4 => \l_sample_reg_n_0_[10]\,
      I5 => \l_sample_reg_n_0_[11]\,
      O => data_out_i_16_n_0
    );
data_out_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => \l_sample_reg_n_0_[12]\,
      I1 => \l_sample_reg_n_0_[13]\,
      I2 => offset(1),
      I3 => offset(0),
      I4 => \l_sample_reg_n_0_[14]\,
      I5 => \l_sample_reg_n_0_[15]\,
      O => data_out_i_17_n_0
    );
data_out_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => \l_sample_reg_n_0_[0]\,
      I1 => \l_sample_reg_n_0_[1]\,
      I2 => offset(1),
      I3 => offset(0),
      I4 => \l_sample_reg_n_0_[2]\,
      I5 => \l_sample_reg_n_0_[3]\,
      O => data_out_i_18_n_0
    );
data_out_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => \l_sample_reg_n_0_[4]\,
      I1 => \l_sample_reg_n_0_[5]\,
      I2 => offset(1),
      I3 => offset(0),
      I4 => \l_sample_reg_n_0_[6]\,
      I5 => \l_sample_reg_n_0_[7]\,
      O => data_out_i_19_n_0
    );
data_out_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBFFF333F3"
    )
        port map (
      I0 => data_out_i_6_n_0,
      I1 => lr_counter_reg(5),
      I2 => data_out_i_7_n_0,
      I3 => data_out_i_8_n_0,
      I4 => data_out_i_9_n_0,
      I5 => data_out_i_10_n_0,
      O => data_out_i_2_n_0
    );
data_out_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => \r_sample_reg_n_0_[4]\,
      I1 => \r_sample_reg_n_0_[5]\,
      I2 => offset(1),
      I3 => offset(0),
      I4 => \r_sample_reg_n_0_[6]\,
      I5 => \r_sample_reg_n_0_[7]\,
      O => data_out_i_20_n_0
    );
data_out_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => \r_sample_reg_n_0_[0]\,
      I1 => \r_sample_reg_n_0_[1]\,
      I2 => offset(1),
      I3 => offset(0),
      I4 => \r_sample_reg_n_0_[2]\,
      I5 => \r_sample_reg_n_0_[3]\,
      O => data_out_i_21_n_0
    );
data_out_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => \r_sample_reg_n_0_[12]\,
      I1 => \r_sample_reg_n_0_[13]\,
      I2 => offset(1),
      I3 => offset(0),
      I4 => \r_sample_reg_n_0_[14]\,
      I5 => \r_sample_reg_n_0_[15]\,
      O => data_out_i_22_n_0
    );
data_out_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => \r_sample_reg_n_0_[8]\,
      I1 => \r_sample_reg_n_0_[9]\,
      I2 => offset(1),
      I3 => offset(0),
      I4 => \r_sample_reg_n_0_[10]\,
      I5 => \r_sample_reg_n_0_[11]\,
      O => data_out_i_23_n_0
    );
data_out_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => data_out_i_11_n_0,
      I1 => data_out_reg_i_12_n_0,
      I2 => data_out_reg_i_13_n_0,
      O => data_out_i_3_n_0
    );
data_out_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEAAAAAAAB"
    )
        port map (
      I0 => \offset[4]_i_5_n_0\,
      I1 => offset(3),
      I2 => offset(2),
      I3 => offset(1),
      I4 => offset(0),
      I5 => offset(4),
      O => data_out_i_4_n_0
    );
data_out_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFFFABFB"
    )
        port map (
      I0 => \offset[4]_i_5_n_0\,
      I1 => data_out_i_14_n_0,
      I2 => data_out_i_8_n_0,
      I3 => data_out_i_15_n_0,
      I4 => data_out_i_10_n_0,
      I5 => lr_counter_reg(5),
      O => data_out_i_5_n_0
    );
data_out_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_out_i_16_n_0,
      I1 => data_out_i_17_n_0,
      I2 => data_out_i_11_n_0,
      I3 => data_out_i_18_n_0,
      I4 => data_out_i_8_n_0,
      I5 => data_out_i_19_n_0,
      O => data_out_i_6_n_0
    );
data_out_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => \l_sample_reg_n_0_[20]\,
      I1 => \l_sample_reg_n_0_[21]\,
      I2 => offset(1),
      I3 => offset(0),
      I4 => \l_sample_reg_n_0_[22]\,
      I5 => \l_sample_reg_n_0_[23]\,
      O => data_out_i_7_n_0
    );
data_out_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => offset(2),
      I1 => offset(0),
      I2 => offset(1),
      O => data_out_i_8_n_0
    );
data_out_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => \l_sample_reg_n_0_[16]\,
      I1 => \l_sample_reg_n_0_[17]\,
      I2 => offset(1),
      I3 => offset(0),
      I4 => \l_sample_reg_n_0_[18]\,
      I5 => \l_sample_reg_n_0_[19]\,
      O => data_out_i_9_n_0
    );
data_out_reg: unisim.vcomponents.FDRE
     port map (
      C => m_clk,
      CE => '1',
      D => data_out_i_1_n_0,
      Q => \^data_out\,
      R => '0'
    );
data_out_reg_i_12: unisim.vcomponents.MUXF7
     port map (
      I0 => data_out_i_20_n_0,
      I1 => data_out_i_21_n_0,
      O => data_out_reg_i_12_n_0,
      S => data_out_i_8_n_0
    );
data_out_reg_i_13: unisim.vcomponents.MUXF7
     port map (
      I0 => data_out_i_22_n_0,
      I1 => data_out_i_23_n_0,
      O => data_out_reg_i_13_n_0,
      S => data_out_i_8_n_0
    );
l_buffr_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF22"
    )
        port map (
      I0 => \l_sample[23]_i_2_n_0\,
      I1 => m_rst,
      I2 => l_sent,
      I3 => l_buffr_reg_n_0,
      O => l_buffr_i_1_n_0
    );
l_buffr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => l_buffr_i_1_n_0,
      Q => l_buffr_reg_n_0,
      R => '0'
    );
\l_sample[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \l_sample[23]_i_2_n_0\,
      I1 => m_rst,
      O => l_sample
    );
\l_sample[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \axi_in_fwd[TID]\(2),
      I1 => \axi_in_fwd[TID]\(3),
      I2 => \axi_in_fwd[TID]\(1),
      I3 => busy,
      I4 => state(0),
      I5 => \axi_in_fwd[TID]\(0),
      O => \l_sample[23]_i_2_n_0\
    );
\l_sample_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => \sample_reg_n_0_[0]\,
      Q => \l_sample_reg_n_0_[0]\,
      R => '0'
    );
\l_sample_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => \sample_reg_n_0_[10]\,
      Q => \l_sample_reg_n_0_[10]\,
      R => '0'
    );
\l_sample_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => \sample_reg_n_0_[11]\,
      Q => \l_sample_reg_n_0_[11]\,
      R => '0'
    );
\l_sample_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => \sample_reg_n_0_[12]\,
      Q => \l_sample_reg_n_0_[12]\,
      R => '0'
    );
\l_sample_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => \sample_reg_n_0_[13]\,
      Q => \l_sample_reg_n_0_[13]\,
      R => '0'
    );
\l_sample_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => \sample_reg_n_0_[14]\,
      Q => \l_sample_reg_n_0_[14]\,
      R => '0'
    );
\l_sample_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => \sample_reg_n_0_[15]\,
      Q => \l_sample_reg_n_0_[15]\,
      R => '0'
    );
\l_sample_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => \sample_reg_n_0_[16]\,
      Q => \l_sample_reg_n_0_[16]\,
      R => '0'
    );
\l_sample_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => \sample_reg_n_0_[17]\,
      Q => \l_sample_reg_n_0_[17]\,
      R => '0'
    );
\l_sample_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => \sample_reg_n_0_[18]\,
      Q => \l_sample_reg_n_0_[18]\,
      R => '0'
    );
\l_sample_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => \sample_reg_n_0_[19]\,
      Q => \l_sample_reg_n_0_[19]\,
      R => '0'
    );
\l_sample_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => \sample_reg_n_0_[1]\,
      Q => \l_sample_reg_n_0_[1]\,
      R => '0'
    );
\l_sample_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => \sample_reg_n_0_[20]\,
      Q => \l_sample_reg_n_0_[20]\,
      R => '0'
    );
\l_sample_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => \sample_reg_n_0_[21]\,
      Q => \l_sample_reg_n_0_[21]\,
      R => '0'
    );
\l_sample_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => \sample_reg_n_0_[22]\,
      Q => \l_sample_reg_n_0_[22]\,
      R => '0'
    );
\l_sample_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => \sample_reg_n_0_[23]\,
      Q => \l_sample_reg_n_0_[23]\,
      R => '0'
    );
\l_sample_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => \sample_reg_n_0_[2]\,
      Q => \l_sample_reg_n_0_[2]\,
      R => '0'
    );
\l_sample_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => \sample_reg_n_0_[3]\,
      Q => \l_sample_reg_n_0_[3]\,
      R => '0'
    );
\l_sample_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => \sample_reg_n_0_[4]\,
      Q => \l_sample_reg_n_0_[4]\,
      R => '0'
    );
\l_sample_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => \sample_reg_n_0_[5]\,
      Q => \l_sample_reg_n_0_[5]\,
      R => '0'
    );
\l_sample_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => \sample_reg_n_0_[6]\,
      Q => \l_sample_reg_n_0_[6]\,
      R => '0'
    );
\l_sample_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => \sample_reg_n_0_[7]\,
      Q => \l_sample_reg_n_0_[7]\,
      R => '0'
    );
\l_sample_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => \sample_reg_n_0_[8]\,
      Q => \l_sample_reg_n_0_[8]\,
      R => '0'
    );
\l_sample_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => \sample_reg_n_0_[9]\,
      Q => \l_sample_reg_n_0_[9]\,
      R => '0'
    );
l_sent_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F403F00"
    )
        port map (
      I0 => \offset[4]_i_4_n_0\,
      I1 => serial_counter(1),
      I2 => serial_counter(0),
      I3 => l_sent,
      I4 => lr_counter_reg(5),
      O => l_sent_i_1_n_0
    );
l_sent_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => l_sent_i_1_n_0,
      Q => l_sent,
      R => '0'
    );
\lr_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => lr_counter_reg(0),
      O => \p_0_in__0\(0)
    );
\lr_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lr_counter_reg(0),
      I1 => lr_counter_reg(1),
      O => \p_0_in__0\(1)
    );
\lr_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => lr_counter_reg(2),
      I1 => lr_counter_reg(0),
      I2 => lr_counter_reg(1),
      O => \p_0_in__0\(2)
    );
\lr_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => lr_counter_reg(3),
      I1 => lr_counter_reg(1),
      I2 => lr_counter_reg(0),
      I3 => lr_counter_reg(2),
      O => \p_0_in__0\(3)
    );
\lr_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => lr_counter_reg(2),
      I1 => lr_counter_reg(0),
      I2 => lr_counter_reg(1),
      I3 => lr_counter_reg(3),
      I4 => lr_counter_reg(4),
      O => \p_0_in__0\(4)
    );
\lr_counter[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => serial_counter(1),
      I1 => serial_counter(0),
      I2 => \lr_counter[5]_i_3_n_0\,
      I3 => lr_counter_reg(5),
      O => lr_counter
    );
\lr_counter[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => lr_counter_reg(5),
      I1 => lr_counter_reg(2),
      I2 => lr_counter_reg(0),
      I3 => lr_counter_reg(1),
      I4 => lr_counter_reg(3),
      I5 => lr_counter_reg(4),
      O => \p_0_in__0\(5)
    );
\lr_counter[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => lr_counter_reg(4),
      I1 => lr_counter_reg(3),
      I2 => lr_counter_reg(1),
      I3 => lr_counter_reg(0),
      I4 => lr_counter_reg(2),
      O => \lr_counter[5]_i_3_n_0\
    );
\lr_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => serial_counter0,
      D => \p_0_in__0\(0),
      Q => lr_counter_reg(0),
      R => lr_counter
    );
\lr_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => serial_counter0,
      D => \p_0_in__0\(1),
      Q => lr_counter_reg(1),
      R => lr_counter
    );
\lr_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => serial_counter0,
      D => \p_0_in__0\(2),
      Q => lr_counter_reg(2),
      R => lr_counter
    );
\lr_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => serial_counter0,
      D => \p_0_in__0\(3),
      Q => lr_counter_reg(3),
      R => lr_counter
    );
\lr_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => serial_counter0,
      D => \p_0_in__0\(4),
      Q => lr_counter_reg(4),
      R => lr_counter
    );
\lr_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => serial_counter0,
      D => \p_0_in__0\(5),
      Q => lr_counter_reg(5),
      R => lr_counter
    );
\offset[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => offset(0),
      I1 => start,
      I2 => busy,
      O => \offset[0]_i_1_n_0\
    );
\offset[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA56"
    )
        port map (
      I0 => offset(1),
      I1 => busy,
      I2 => start,
      I3 => offset(0),
      O => \offset[1]_i_1_n_0\
    );
\offset[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF1000E"
    )
        port map (
      I0 => busy,
      I1 => start,
      I2 => offset(1),
      I3 => offset(0),
      I4 => offset(2),
      O => \offset[2]_i_1_n_0\
    );
\offset[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0F0F01E"
    )
        port map (
      I0 => busy,
      I1 => start,
      I2 => offset(3),
      I3 => offset(2),
      I4 => offset(1),
      I5 => offset(0),
      O => \offset[3]_i_1_n_0\
    );
\offset[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \offset[4]_i_4_n_0\,
      I1 => serial_counter(1),
      I2 => serial_counter(0),
      O => \offset[4]_i_1_n_0\
    );
\offset[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => serial_counter(0),
      I1 => serial_counter(1),
      O => serial_counter0
    );
\offset[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0001"
    )
        port map (
      I0 => offset(0),
      I1 => offset(1),
      I2 => offset(2),
      I3 => offset(3),
      I4 => offset(4),
      I5 => \offset[4]_i_5_n_0\,
      O => \offset[4]_i_3_n_0\
    );
\offset[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => offset(2),
      I1 => offset(3),
      I2 => offset(4),
      I3 => offset(1),
      I4 => offset(0),
      I5 => \offset[4]_i_5_n_0\,
      O => \offset[4]_i_4_n_0\
    );
\offset[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => busy,
      I1 => start,
      O => \offset[4]_i_5_n_0\
    );
\offset_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => serial_counter0,
      D => \offset[0]_i_1_n_0\,
      Q => offset(0),
      R => \offset[4]_i_1_n_0\
    );
\offset_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => serial_counter0,
      D => \offset[1]_i_1_n_0\,
      Q => offset(1),
      R => \offset[4]_i_1_n_0\
    );
\offset_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => serial_counter0,
      D => \offset[2]_i_1_n_0\,
      Q => offset(2),
      R => \offset[4]_i_1_n_0\
    );
\offset_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_clk,
      CE => serial_counter0,
      D => \offset[3]_i_1_n_0\,
      Q => offset(3),
      S => \offset[4]_i_1_n_0\
    );
\offset_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_clk,
      CE => serial_counter0,
      D => \offset[4]_i_3_n_0\,
      Q => offset(4),
      S => \offset[4]_i_1_n_0\
    );
r_buffr_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF22"
    )
        port map (
      I0 => \r_sample[23]_i_2_n_0\,
      I1 => m_rst,
      I2 => r_sent,
      I3 => r_buffr_reg_n_0,
      O => r_buffr_i_1_n_0
    );
r_buffr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => r_buffr_i_1_n_0,
      Q => r_buffr_reg_n_0,
      R => '0'
    );
\r_sample[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_sample[23]_i_2_n_0\,
      I1 => m_rst,
      O => r_sample
    );
\r_sample[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \axi_in_fwd[TID]\(2),
      I1 => \axi_in_fwd[TID]\(3),
      I2 => \axi_in_fwd[TID]\(1),
      I3 => \axi_in_fwd[TID]\(0),
      I4 => busy,
      I5 => state(0),
      O => \r_sample[23]_i_2_n_0\
    );
\r_sample_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => r_sample,
      D => \sample_reg_n_0_[0]\,
      Q => \r_sample_reg_n_0_[0]\,
      R => '0'
    );
\r_sample_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => r_sample,
      D => \sample_reg_n_0_[10]\,
      Q => \r_sample_reg_n_0_[10]\,
      R => '0'
    );
\r_sample_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => r_sample,
      D => \sample_reg_n_0_[11]\,
      Q => \r_sample_reg_n_0_[11]\,
      R => '0'
    );
\r_sample_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => r_sample,
      D => \sample_reg_n_0_[12]\,
      Q => \r_sample_reg_n_0_[12]\,
      R => '0'
    );
\r_sample_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => r_sample,
      D => \sample_reg_n_0_[13]\,
      Q => \r_sample_reg_n_0_[13]\,
      R => '0'
    );
\r_sample_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => r_sample,
      D => \sample_reg_n_0_[14]\,
      Q => \r_sample_reg_n_0_[14]\,
      R => '0'
    );
\r_sample_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => r_sample,
      D => \sample_reg_n_0_[15]\,
      Q => \r_sample_reg_n_0_[15]\,
      R => '0'
    );
\r_sample_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => r_sample,
      D => \sample_reg_n_0_[16]\,
      Q => \r_sample_reg_n_0_[16]\,
      R => '0'
    );
\r_sample_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => r_sample,
      D => \sample_reg_n_0_[17]\,
      Q => \r_sample_reg_n_0_[17]\,
      R => '0'
    );
\r_sample_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => r_sample,
      D => \sample_reg_n_0_[18]\,
      Q => \r_sample_reg_n_0_[18]\,
      R => '0'
    );
\r_sample_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => r_sample,
      D => \sample_reg_n_0_[19]\,
      Q => \r_sample_reg_n_0_[19]\,
      R => '0'
    );
\r_sample_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => r_sample,
      D => \sample_reg_n_0_[1]\,
      Q => \r_sample_reg_n_0_[1]\,
      R => '0'
    );
\r_sample_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => r_sample,
      D => \sample_reg_n_0_[20]\,
      Q => \r_sample_reg_n_0_[20]\,
      R => '0'
    );
\r_sample_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => r_sample,
      D => \sample_reg_n_0_[21]\,
      Q => \r_sample_reg_n_0_[21]\,
      R => '0'
    );
\r_sample_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => r_sample,
      D => \sample_reg_n_0_[22]\,
      Q => \r_sample_reg_n_0_[22]\,
      R => '0'
    );
\r_sample_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => r_sample,
      D => \sample_reg_n_0_[23]\,
      Q => \r_sample_reg_n_0_[23]\,
      R => '0'
    );
\r_sample_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => r_sample,
      D => \sample_reg_n_0_[2]\,
      Q => \r_sample_reg_n_0_[2]\,
      R => '0'
    );
\r_sample_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => r_sample,
      D => \sample_reg_n_0_[3]\,
      Q => \r_sample_reg_n_0_[3]\,
      R => '0'
    );
\r_sample_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => r_sample,
      D => \sample_reg_n_0_[4]\,
      Q => \r_sample_reg_n_0_[4]\,
      R => '0'
    );
\r_sample_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => r_sample,
      D => \sample_reg_n_0_[5]\,
      Q => \r_sample_reg_n_0_[5]\,
      R => '0'
    );
\r_sample_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => r_sample,
      D => \sample_reg_n_0_[6]\,
      Q => \r_sample_reg_n_0_[6]\,
      R => '0'
    );
\r_sample_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => r_sample,
      D => \sample_reg_n_0_[7]\,
      Q => \r_sample_reg_n_0_[7]\,
      R => '0'
    );
\r_sample_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => r_sample,
      D => \sample_reg_n_0_[8]\,
      Q => \r_sample_reg_n_0_[8]\,
      R => '0'
    );
\r_sample_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => r_sample,
      D => \sample_reg_n_0_[9]\,
      Q => \r_sample_reg_n_0_[9]\,
      R => '0'
    );
r_sent_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FFF1000"
    )
        port map (
      I0 => lr_counter_reg(5),
      I1 => \offset[4]_i_4_n_0\,
      I2 => serial_counter(0),
      I3 => serial_counter(1),
      I4 => r_sent,
      O => r_sent_i_1_n_0
    );
r_sent_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => r_sent_i_1_n_0,
      Q => r_sent,
      R => '0'
    );
\sample[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => state(1),
      I1 => \axi_in_fwd[TValid]\,
      I2 => m_rst,
      I3 => state(0),
      O => sample
    );
\sample_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => sample,
      D => \axi_in_fwd[TData]\(0),
      Q => \sample_reg_n_0_[0]\,
      R => '0'
    );
\sample_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => sample,
      D => \axi_in_fwd[TData]\(10),
      Q => \sample_reg_n_0_[10]\,
      R => '0'
    );
\sample_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => sample,
      D => \axi_in_fwd[TData]\(11),
      Q => \sample_reg_n_0_[11]\,
      R => '0'
    );
\sample_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => sample,
      D => \axi_in_fwd[TData]\(12),
      Q => \sample_reg_n_0_[12]\,
      R => '0'
    );
\sample_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => sample,
      D => \axi_in_fwd[TData]\(13),
      Q => \sample_reg_n_0_[13]\,
      R => '0'
    );
\sample_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => sample,
      D => \axi_in_fwd[TData]\(14),
      Q => \sample_reg_n_0_[14]\,
      R => '0'
    );
\sample_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => sample,
      D => \axi_in_fwd[TData]\(15),
      Q => \sample_reg_n_0_[15]\,
      R => '0'
    );
\sample_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => sample,
      D => \axi_in_fwd[TData]\(16),
      Q => \sample_reg_n_0_[16]\,
      R => '0'
    );
\sample_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => sample,
      D => \axi_in_fwd[TData]\(17),
      Q => \sample_reg_n_0_[17]\,
      R => '0'
    );
\sample_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => sample,
      D => \axi_in_fwd[TData]\(18),
      Q => \sample_reg_n_0_[18]\,
      R => '0'
    );
\sample_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => sample,
      D => \axi_in_fwd[TData]\(19),
      Q => \sample_reg_n_0_[19]\,
      R => '0'
    );
\sample_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => sample,
      D => \axi_in_fwd[TData]\(1),
      Q => \sample_reg_n_0_[1]\,
      R => '0'
    );
\sample_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => sample,
      D => \axi_in_fwd[TData]\(20),
      Q => \sample_reg_n_0_[20]\,
      R => '0'
    );
\sample_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => sample,
      D => \axi_in_fwd[TData]\(21),
      Q => \sample_reg_n_0_[21]\,
      R => '0'
    );
\sample_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => sample,
      D => \axi_in_fwd[TData]\(22),
      Q => \sample_reg_n_0_[22]\,
      R => '0'
    );
\sample_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => sample,
      D => \axi_in_fwd[TData]\(23),
      Q => \sample_reg_n_0_[23]\,
      R => '0'
    );
\sample_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => sample,
      D => \axi_in_fwd[TData]\(2),
      Q => \sample_reg_n_0_[2]\,
      R => '0'
    );
\sample_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => sample,
      D => \axi_in_fwd[TData]\(3),
      Q => \sample_reg_n_0_[3]\,
      R => '0'
    );
\sample_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => sample,
      D => \axi_in_fwd[TData]\(4),
      Q => \sample_reg_n_0_[4]\,
      R => '0'
    );
\sample_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => sample,
      D => \axi_in_fwd[TData]\(5),
      Q => \sample_reg_n_0_[5]\,
      R => '0'
    );
\sample_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => sample,
      D => \axi_in_fwd[TData]\(6),
      Q => \sample_reg_n_0_[6]\,
      R => '0'
    );
\sample_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => sample,
      D => \axi_in_fwd[TData]\(7),
      Q => \sample_reg_n_0_[7]\,
      R => '0'
    );
\sample_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => sample,
      D => \axi_in_fwd[TData]\(8),
      Q => \sample_reg_n_0_[8]\,
      R => '0'
    );
\sample_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => sample,
      D => \axi_in_fwd[TData]\(9),
      Q => \sample_reg_n_0_[9]\,
      R => '0'
    );
\serial_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => serial_counter(0),
      O => \serial_counter[0]_i_1_n_0\
    );
\serial_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => serial_counter(1),
      I1 => serial_counter(0),
      O => \serial_counter[1]_i_1_n_0\
    );
\serial_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \serial_counter[0]_i_1_n_0\,
      Q => serial_counter(0),
      R => '0'
    );
\serial_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \serial_counter[1]_i_1_n_0\,
      Q => serial_counter(1),
      R => '0'
    );
start_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => lr_counter_reg(3),
      I1 => lr_counter_reg(0),
      I2 => lr_counter_reg(2),
      I3 => lr_counter_reg(4),
      I4 => lr_counter_reg(1),
      O => start_reg0
    );
start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => start_reg0,
      Q => start,
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => \axi_in_fwd[TValid]\,
      I1 => state(0),
      I2 => busy,
      I3 => state(1),
      I4 => \axi_in_bwd[TReady]_i_2_n_0\,
      I5 => m_rst,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4040404"
    )
        port map (
      I0 => busy,
      I1 => state(0),
      I2 => state(1),
      I3 => r_buffr_reg_n_0,
      I4 => l_buffr_reg_n_0,
      I5 => m_rst,
      O => \state[1]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => state(0),
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => state(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_I2S_wrapper_0_0_I2S_wrapper is
  port (
    m_clk : in STD_LOGIC;
    m_rst : in STD_LOGIC;
    mclk_r : out STD_LOGIC;
    lrclk_r : out STD_LOGIC;
    sclk_r : out STD_LOGIC;
    mclk_t : out STD_LOGIC;
    lrclk_t : out STD_LOGIC;
    sclk_t : out STD_LOGIC;
    data_in : in STD_LOGIC;
    data_out : out STD_LOGIC;
    s_TValid_in : in STD_LOGIC;
    s_TLast_in : in STD_LOGIC;
    s_TData_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_TID_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_TReady_in : out STD_LOGIC;
    s_TValid_out : out STD_LOGIC;
    s_TLast_out : out STD_LOGIC;
    s_TData_out : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_TID_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_TReady_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_I2S_wrapper_0_0_I2S_wrapper : entity is "I2S_wrapper";
  attribute g_chip_scope : string;
  attribute g_chip_scope of design_1_I2S_wrapper_0_0_I2S_wrapper : entity is "True";
  attribute g_clock_div_lrclk : integer;
  attribute g_clock_div_lrclk of design_1_I2S_wrapper_0_0_I2S_wrapper : entity is 64;
  attribute g_clock_div_sclk : integer;
  attribute g_clock_div_sclk of design_1_I2S_wrapper_0_0_I2S_wrapper : entity is 4;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_I2S_wrapper_0_0_I2S_wrapper : entity is "soft";
end design_1_I2S_wrapper_0_0_I2S_wrapper;

architecture STRUCTURE of design_1_I2S_wrapper_0_0_I2S_wrapper is
  signal \axi_bwd_in[TReady]\ : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of \axi_bwd_in[TReady]\ : signal is std.standard.true;
  attribute x_interface_info : string;
  attribute x_interface_info of \axi_bwd_in[TReady]\ : signal is "xilinx.com:interface:axis:1.0 audio_in TREADY";
  signal \axi_bwd_out[TReady]\ : STD_LOGIC;
  attribute MARK_DEBUG of \axi_bwd_out[TReady]\ : signal is std.standard.true;
  signal \axi_fwd_in[TData]\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  attribute MARK_DEBUG of \axi_fwd_in[TData]\ : signal is std.standard.true;
  signal \axi_fwd_in[TID]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute MARK_DEBUG of \axi_fwd_in[TID]\ : signal is std.standard.true;
  signal \axi_fwd_in[TLast]\ : STD_LOGIC;
  attribute MARK_DEBUG of \axi_fwd_in[TLast]\ : signal is std.standard.true;
  signal \axi_fwd_in[TValid]\ : STD_LOGIC;
  attribute MARK_DEBUG of \axi_fwd_in[TValid]\ : signal is std.standard.true;
  signal \axi_fwd_out[TData]\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  attribute MARK_DEBUG of \axi_fwd_out[TData]\ : signal is std.standard.true;
  attribute x_interface_info of \axi_fwd_out[TData]\ : signal is "xilinx.com:interface:axis:1.0 audio_out TDATA";
  signal \axi_fwd_out[TID]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute MARK_DEBUG of \axi_fwd_out[TID]\ : signal is std.standard.true;
  attribute x_interface_info of \axi_fwd_out[TID]\ : signal is "xilinx.com:interface:axis:1.0 audio_out TID";
  signal \axi_fwd_out[TLast]\ : STD_LOGIC;
  attribute MARK_DEBUG of \axi_fwd_out[TLast]\ : signal is std.standard.true;
  attribute x_interface_info of \axi_fwd_out[TLast]\ : signal is "xilinx.com:interface:axis:1.0 audio_out TLAST";
  signal \axi_fwd_out[TValid]\ : STD_LOGIC;
  attribute MARK_DEBUG of \axi_fwd_out[TValid]\ : signal is std.standard.true;
  attribute x_interface_info of \axi_fwd_out[TValid]\ : signal is "xilinx.com:interface:axis:1.0 audio_out TVALID";
  signal di_i : STD_LOGIC;
  attribute MARK_DEBUG of di_i : signal is std.standard.true;
  signal do_i : STD_LOGIC;
  attribute MARK_DEBUG of do_i : signal is std.standard.true;
  signal lrclk_r_i : STD_LOGIC;
  attribute MARK_DEBUG of lrclk_r_i : signal is std.standard.true;
  signal mclk_r_i : STD_LOGIC;
  attribute MARK_DEBUG of mclk_r_i : signal is std.standard.true;
  signal sclk_r_i : STD_LOGIC;
  attribute MARK_DEBUG of sclk_r_i : signal is std.standard.true;
  signal \NLW_I2S_rec_inst_axi_out_fwd[TLast]_UNCONNECTED\ : STD_LOGIC;
  signal NLW_I2S_rec_inst_lrclk_UNCONNECTED : STD_LOGIC;
  signal NLW_I2S_rec_inst_mclk_UNCONNECTED : STD_LOGIC;
  signal NLW_I2S_rec_inst_sclk_UNCONNECTED : STD_LOGIC;
  signal \NLW_I2S_rec_inst_axi_out_fwd[TID]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_I2S_trans_inst_lrclk_UNCONNECTED : STD_LOGIC;
  signal NLW_I2S_trans_inst_mclk_UNCONNECTED : STD_LOGIC;
  signal NLW_I2S_trans_inst_sclk_UNCONNECTED : STD_LOGIC;
  attribute KEEP_HIERARCHY of I2S_clock_gen_inst : label is "soft";
  attribute g_chip_scope of I2S_clock_gen_inst : label is "True";
  attribute g_clock_div_lrclk of I2S_clock_gen_inst : label is 64;
  attribute g_clock_div_sclk of I2S_clock_gen_inst : label is 4;
  attribute KEEP_HIERARCHY of I2S_rec_inst : label is "soft";
  attribute g_channel_offset : string;
  attribute g_channel_offset of I2S_rec_inst : label is "4'b0000";
  attribute g_clock_div_lrclk of I2S_rec_inst : label is 64;
  attribute g_clock_div_sclk of I2S_rec_inst : label is 4;
  attribute KEEP_HIERARCHY of I2S_trans_inst : label is "soft";
  attribute g_channel_offset of I2S_trans_inst : label is "4'b0000";
  attribute g_chip_scope of I2S_trans_inst : label is "True";
  attribute g_clock_div_lrclk of I2S_trans_inst : label is 64;
  attribute g_clock_div_sclk of I2S_trans_inst : label is 4;
  attribute x_interface_info of s_TLast_in : signal is "xilinx.com:interface:axis:1.0 audio_in TLAST";
  attribute x_interface_info of s_TLast_out : signal is "xilinx.com:interface:axis:1.0 audio_out TLAST";
  attribute x_interface_info of s_TReady_in : signal is "xilinx.com:interface:axis:1.0 audio_in TREADY";
  attribute x_interface_info of s_TReady_out : signal is "xilinx.com:interface:axis:1.0 audio_out TREADY";
  attribute x_interface_info of s_TValid_in : signal is "xilinx.com:interface:axis:1.0 audio_in TVALID";
  attribute x_interface_info of s_TValid_out : signal is "xilinx.com:interface:axis:1.0 audio_out TVALID";
  attribute x_interface_info of s_TData_in : signal is "xilinx.com:interface:axis:1.0 audio_in TDATA";
  attribute x_interface_info of s_TData_out : signal is "xilinx.com:interface:axis:1.0 audio_out TDATA";
  attribute x_interface_info of s_TID_in : signal is "xilinx.com:interface:axis:1.0 audio_in TID";
  attribute x_interface_info of s_TID_out : signal is "xilinx.com:interface:axis:1.0 audio_out TID";
begin
  \axi_bwd_out[TReady]\ <= s_TReady_out;
  \axi_fwd_in[TData]\(23 downto 0) <= s_TData_in(23 downto 0);
  \axi_fwd_in[TID]\(3 downto 0) <= s_TID_in(3 downto 0);
  \axi_fwd_in[TLast]\ <= s_TLast_in;
  \axi_fwd_in[TValid]\ <= s_TValid_in;
  data_out <= do_i;
  di_i <= data_in;
  lrclk_r <= lrclk_r_i;
  lrclk_t <= lrclk_r_i;
  mclk_r <= mclk_r_i;
  mclk_t <= mclk_r_i;
  s_TData_out(23 downto 0) <= \axi_fwd_out[TData]\(23 downto 0);
  s_TID_out(3 downto 0) <= \axi_fwd_out[TID]\(3 downto 0);
  s_TLast_out <= \axi_fwd_out[TLast]\;
  s_TReady_in <= \axi_bwd_in[TReady]\;
  s_TValid_out <= \axi_fwd_out[TValid]\;
  sclk_r <= sclk_r_i;
  sclk_t <= sclk_r_i;
I2S_clock_gen_inst: entity work.design_1_I2S_wrapper_0_0_I2S_clock_gen
     port map (
      lrclk => lrclk_r_i,
      m_clk => m_clk,
      mclk => mclk_r_i,
      sclk => sclk_r_i
    );
I2S_rec_inst: entity work.design_1_I2S_wrapper_0_0_I2S_rec
     port map (
      \axi_out_bwd[TReady]\ => \axi_bwd_out[TReady]\,
      \axi_out_fwd[TData]\(23 downto 0) => \axi_fwd_out[TData]\(23 downto 0),
      \axi_out_fwd[TID]\(3 downto 1) => \NLW_I2S_rec_inst_axi_out_fwd[TID]_UNCONNECTED\(3 downto 1),
      \axi_out_fwd[TID]\(0) => \axi_fwd_out[TID]\(0),
      \axi_out_fwd[TLast]\ => \NLW_I2S_rec_inst_axi_out_fwd[TLast]_UNCONNECTED\,
      \axi_out_fwd[TValid]\ => \axi_fwd_out[TValid]\,
      data_in => di_i,
      lrclk => NLW_I2S_rec_inst_lrclk_UNCONNECTED,
      m_clk => m_clk,
      m_rst => m_rst,
      mclk => NLW_I2S_rec_inst_mclk_UNCONNECTED,
      sclk => NLW_I2S_rec_inst_sclk_UNCONNECTED
    );
I2S_trans_inst: entity work.design_1_I2S_wrapper_0_0_I2S_trans
     port map (
      \axi_in_bwd[TReady]\ => \axi_bwd_in[TReady]\,
      \axi_in_fwd[TData]\(23 downto 0) => \axi_fwd_in[TData]\(23 downto 0),
      \axi_in_fwd[TID]\(3 downto 0) => \axi_fwd_in[TID]\(3 downto 0),
      \axi_in_fwd[TLast]\ => '0',
      \axi_in_fwd[TValid]\ => \axi_fwd_in[TValid]\,
      data_out => do_i,
      lrclk => NLW_I2S_trans_inst_lrclk_UNCONNECTED,
      m_clk => m_clk,
      m_rst => m_rst,
      mclk => NLW_I2S_trans_inst_mclk_UNCONNECTED,
      sclk => NLW_I2S_trans_inst_sclk_UNCONNECTED
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \axi_fwd_out[TLast]\
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \axi_fwd_out[TID]\(3)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \axi_fwd_out[TID]\(2)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \axi_fwd_out[TID]\(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_I2S_wrapper_0_0 is
  port (
    m_clk : in STD_LOGIC;
    m_rst : in STD_LOGIC;
    mclk_r : out STD_LOGIC;
    lrclk_r : out STD_LOGIC;
    sclk_r : out STD_LOGIC;
    mclk_t : out STD_LOGIC;
    lrclk_t : out STD_LOGIC;
    sclk_t : out STD_LOGIC;
    data_in : in STD_LOGIC;
    data_out : out STD_LOGIC;
    s_TValid_in : in STD_LOGIC;
    s_TLast_in : in STD_LOGIC;
    s_TData_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_TID_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_TReady_in : out STD_LOGIC;
    s_TValid_out : out STD_LOGIC;
    s_TLast_out : out STD_LOGIC;
    s_TData_out : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_TID_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_TReady_out : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_I2S_wrapper_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_I2S_wrapper_0_0 : entity is "design_1_I2S_wrapper_0_0,I2S_wrapper,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_I2S_wrapper_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_I2S_wrapper_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_I2S_wrapper_0_0 : entity is "I2S_wrapper,Vivado 2024.1";
end design_1_I2S_wrapper_0_0;

architecture STRUCTURE of design_1_I2S_wrapper_0_0 is
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of U0 : label is "soft";
  attribute g_chip_scope : string;
  attribute g_chip_scope of U0 : label is "True";
  attribute g_clock_div_lrclk : integer;
  attribute g_clock_div_lrclk of U0 : label is 64;
  attribute g_clock_div_sclk : integer;
  attribute g_clock_div_sclk of U0 : label is 4;
  attribute x_interface_info : string;
  attribute x_interface_info of m_clk : signal is "xilinx.com:signal:clock:1.0 m_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of m_clk : signal is "XIL_INTERFACENAME m_clk, ASSOCIATED_RESET m_rst, FREQ_HZ 12345679, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
  attribute x_interface_info of m_rst : signal is "xilinx.com:signal:reset:1.0 m_rst RST";
  attribute x_interface_parameter of m_rst : signal is "XIL_INTERFACENAME m_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_TLast_in : signal is "xilinx.com:interface:axis:1.0 s_in TLAST";
  attribute x_interface_info of s_TLast_out : signal is "xilinx.com:interface:axis:1.0 s_out TLAST";
  attribute x_interface_info of s_TReady_in : signal is "xilinx.com:interface:axis:1.0 s_in TREADY";
  attribute x_interface_info of s_TReady_out : signal is "xilinx.com:interface:axis:1.0 s_out TREADY";
  attribute x_interface_info of s_TValid_in : signal is "xilinx.com:interface:axis:1.0 s_in TVALID";
  attribute x_interface_parameter of s_TValid_in : signal is "XIL_INTERFACENAME s_in, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 4, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_TValid_out : signal is "xilinx.com:interface:axis:1.0 s_out TVALID";
  attribute x_interface_parameter of s_TValid_out : signal is "XIL_INTERFACENAME s_out, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 4, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_TData_in : signal is "xilinx.com:interface:axis:1.0 s_in TDATA";
  attribute x_interface_info of s_TData_out : signal is "xilinx.com:interface:axis:1.0 s_out TDATA";
  attribute x_interface_info of s_TID_in : signal is "xilinx.com:interface:axis:1.0 s_in TID";
  attribute x_interface_info of s_TID_out : signal is "xilinx.com:interface:axis:1.0 s_out TID";
begin
U0: entity work.design_1_I2S_wrapper_0_0_I2S_wrapper
     port map (
      data_in => data_in,
      data_out => data_out,
      lrclk_r => lrclk_r,
      lrclk_t => lrclk_t,
      m_clk => m_clk,
      m_rst => m_rst,
      mclk_r => mclk_r,
      mclk_t => mclk_t,
      s_TData_in(23 downto 0) => s_TData_in(23 downto 0),
      s_TData_out(23 downto 0) => s_TData_out(23 downto 0),
      s_TID_in(3 downto 0) => s_TID_in(3 downto 0),
      s_TID_out(3 downto 0) => s_TID_out(3 downto 0),
      s_TLast_in => s_TLast_in,
      s_TLast_out => s_TLast_out,
      s_TReady_in => s_TReady_in,
      s_TReady_out => s_TReady_out,
      s_TValid_in => s_TValid_in,
      s_TValid_out => s_TValid_out,
      sclk_r => sclk_r,
      sclk_t => sclk_t
    );
end STRUCTURE;
