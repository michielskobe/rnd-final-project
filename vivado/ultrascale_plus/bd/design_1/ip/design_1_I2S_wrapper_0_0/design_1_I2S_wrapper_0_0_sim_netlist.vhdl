-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Fri Nov 29 10:59:58 2024
-- Host        : fedora running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_I2S_wrapper_0_0 -prefix
--               design_1_I2S_wrapper_0_0_ design_1_I2S_wrapper_0_0_sim_netlist.vhdl
-- Design      : design_1_I2S_wrapper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sbva484-1-i
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
  signal i_lrclk_inferred_i_2_n_0 : STD_LOGIC;
  signal i_lrclk_inferred_i_3_n_0 : STD_LOGIC;
  signal i_lrclk_inferred_i_4_n_0 : STD_LOGIC;
  signal i_lrclk_inferred_i_5_n_0 : STD_LOGIC;
  signal i_lrclk_inferred_i_6_n_0 : STD_LOGIC;
  signal i_lrclk_inferred_i_7_n_0 : STD_LOGIC;
  signal i_lrclk_inferred_i_8_n_0 : STD_LOGIC;
  signal i_sclk : STD_LOGIC;
  attribute MARK_DEBUG of i_sclk : signal is std.standard.true;
  signal i_sclk_inferred_i_2_n_0 : STD_LOGIC;
  signal i_sclk_inferred_i_3_n_0 : STD_LOGIC;
  signal i_sclk_inferred_i_4_n_0 : STD_LOGIC;
  signal i_sclk_inferred_i_5_n_0 : STD_LOGIC;
  signal i_sclk_inferred_i_6_n_0 : STD_LOGIC;
  signal i_sclk_inferred_i_7_n_0 : STD_LOGIC;
  signal i_sclk_inferred_i_8_n_0 : STD_LOGIC;
  signal lr_counter : STD_LOGIC_VECTOR ( 30 downto 0 );
  attribute MARK_DEBUG of lr_counter : signal is std.standard.true;
  signal \lr_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \lr_counter[30]_i_1_n_0\ : STD_LOGIC;
  signal \lr_counter[30]_i_3_n_0\ : STD_LOGIC;
  signal \lr_counter[30]_i_4_n_0\ : STD_LOGIC;
  signal \lr_counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \lr_counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \lr_counter_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \lr_counter_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \lr_counter_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \lr_counter_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \lr_counter_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \lr_counter_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \lr_counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \lr_counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \lr_counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \lr_counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \lr_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \lr_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \lr_counter_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \lr_counter_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \lr_counter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \lr_counter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \lr_counter_reg[24]_i_1_n_10\ : STD_LOGIC;
  signal \lr_counter_reg[24]_i_1_n_11\ : STD_LOGIC;
  signal \lr_counter_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \lr_counter_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \lr_counter_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \lr_counter_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \lr_counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \lr_counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \lr_counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \lr_counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \lr_counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \lr_counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \lr_counter_reg[24]_i_1_n_8\ : STD_LOGIC;
  signal \lr_counter_reg[24]_i_1_n_9\ : STD_LOGIC;
  signal \lr_counter_reg[30]_i_2_n_10\ : STD_LOGIC;
  signal \lr_counter_reg[30]_i_2_n_11\ : STD_LOGIC;
  signal \lr_counter_reg[30]_i_2_n_12\ : STD_LOGIC;
  signal \lr_counter_reg[30]_i_2_n_13\ : STD_LOGIC;
  signal \lr_counter_reg[30]_i_2_n_14\ : STD_LOGIC;
  signal \lr_counter_reg[30]_i_2_n_15\ : STD_LOGIC;
  signal \lr_counter_reg[30]_i_2_n_3\ : STD_LOGIC;
  signal \lr_counter_reg[30]_i_2_n_4\ : STD_LOGIC;
  signal \lr_counter_reg[30]_i_2_n_5\ : STD_LOGIC;
  signal \lr_counter_reg[30]_i_2_n_6\ : STD_LOGIC;
  signal \lr_counter_reg[30]_i_2_n_7\ : STD_LOGIC;
  signal \lr_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \lr_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \lr_counter_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \lr_counter_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \lr_counter_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \lr_counter_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \lr_counter_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \lr_counter_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \lr_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \lr_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \lr_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \lr_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \lr_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \lr_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \lr_counter_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \lr_counter_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal \^m_clk\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal serial_counter : STD_LOGIC_VECTOR ( 30 downto 0 );
  attribute MARK_DEBUG of serial_counter : signal is std.standard.true;
  signal \serial_counter[30]_i_1_n_0\ : STD_LOGIC;
  signal \serial_counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \serial_counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \serial_counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \serial_counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \serial_counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \serial_counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \serial_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \serial_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \serial_counter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \serial_counter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \serial_counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \serial_counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \serial_counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \serial_counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \serial_counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \serial_counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \serial_counter_reg[30]_i_2_n_3\ : STD_LOGIC;
  signal \serial_counter_reg[30]_i_2_n_4\ : STD_LOGIC;
  signal \serial_counter_reg[30]_i_2_n_5\ : STD_LOGIC;
  signal \serial_counter_reg[30]_i_2_n_6\ : STD_LOGIC;
  signal \serial_counter_reg[30]_i_2_n_7\ : STD_LOGIC;
  signal \serial_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \serial_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \serial_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \serial_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \serial_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \serial_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \serial_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \serial_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_lr_counter_reg[30]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_lr_counter_reg[30]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_serial_counter_reg[30]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_serial_counter_reg[30]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  attribute KEEP : string;
  attribute KEEP of \lr_counter_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \lr_counter_reg[0]\ : label is "true";
  attribute KEEP of \lr_counter_reg[10]\ : label is "yes";
  attribute mark_debug_string of \lr_counter_reg[10]\ : label is "true";
  attribute KEEP of \lr_counter_reg[11]\ : label is "yes";
  attribute mark_debug_string of \lr_counter_reg[11]\ : label is "true";
  attribute KEEP of \lr_counter_reg[12]\ : label is "yes";
  attribute mark_debug_string of \lr_counter_reg[12]\ : label is "true";
  attribute KEEP of \lr_counter_reg[13]\ : label is "yes";
  attribute mark_debug_string of \lr_counter_reg[13]\ : label is "true";
  attribute KEEP of \lr_counter_reg[14]\ : label is "yes";
  attribute mark_debug_string of \lr_counter_reg[14]\ : label is "true";
  attribute KEEP of \lr_counter_reg[15]\ : label is "yes";
  attribute mark_debug_string of \lr_counter_reg[15]\ : label is "true";
  attribute KEEP of \lr_counter_reg[16]\ : label is "yes";
  attribute mark_debug_string of \lr_counter_reg[16]\ : label is "true";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \lr_counter_reg[16]_i_1\ : label is 35;
  attribute KEEP of \lr_counter_reg[17]\ : label is "yes";
  attribute mark_debug_string of \lr_counter_reg[17]\ : label is "true";
  attribute KEEP of \lr_counter_reg[18]\ : label is "yes";
  attribute mark_debug_string of \lr_counter_reg[18]\ : label is "true";
  attribute KEEP of \lr_counter_reg[19]\ : label is "yes";
  attribute mark_debug_string of \lr_counter_reg[19]\ : label is "true";
  attribute KEEP of \lr_counter_reg[1]\ : label is "yes";
  attribute mark_debug_string of \lr_counter_reg[1]\ : label is "true";
  attribute KEEP of \lr_counter_reg[20]\ : label is "yes";
  attribute mark_debug_string of \lr_counter_reg[20]\ : label is "true";
  attribute KEEP of \lr_counter_reg[21]\ : label is "yes";
  attribute mark_debug_string of \lr_counter_reg[21]\ : label is "true";
  attribute KEEP of \lr_counter_reg[22]\ : label is "yes";
  attribute mark_debug_string of \lr_counter_reg[22]\ : label is "true";
  attribute KEEP of \lr_counter_reg[23]\ : label is "yes";
  attribute mark_debug_string of \lr_counter_reg[23]\ : label is "true";
  attribute KEEP of \lr_counter_reg[24]\ : label is "yes";
  attribute mark_debug_string of \lr_counter_reg[24]\ : label is "true";
  attribute ADDER_THRESHOLD of \lr_counter_reg[24]_i_1\ : label is 35;
  attribute KEEP of \lr_counter_reg[25]\ : label is "yes";
  attribute mark_debug_string of \lr_counter_reg[25]\ : label is "true";
  attribute KEEP of \lr_counter_reg[26]\ : label is "yes";
  attribute mark_debug_string of \lr_counter_reg[26]\ : label is "true";
  attribute KEEP of \lr_counter_reg[27]\ : label is "yes";
  attribute mark_debug_string of \lr_counter_reg[27]\ : label is "true";
  attribute KEEP of \lr_counter_reg[28]\ : label is "yes";
  attribute mark_debug_string of \lr_counter_reg[28]\ : label is "true";
  attribute KEEP of \lr_counter_reg[29]\ : label is "yes";
  attribute mark_debug_string of \lr_counter_reg[29]\ : label is "true";
  attribute KEEP of \lr_counter_reg[2]\ : label is "yes";
  attribute mark_debug_string of \lr_counter_reg[2]\ : label is "true";
  attribute KEEP of \lr_counter_reg[30]\ : label is "yes";
  attribute mark_debug_string of \lr_counter_reg[30]\ : label is "true";
  attribute ADDER_THRESHOLD of \lr_counter_reg[30]_i_2\ : label is 35;
  attribute KEEP of \lr_counter_reg[3]\ : label is "yes";
  attribute mark_debug_string of \lr_counter_reg[3]\ : label is "true";
  attribute KEEP of \lr_counter_reg[4]\ : label is "yes";
  attribute mark_debug_string of \lr_counter_reg[4]\ : label is "true";
  attribute KEEP of \lr_counter_reg[5]\ : label is "yes";
  attribute mark_debug_string of \lr_counter_reg[5]\ : label is "true";
  attribute KEEP of \lr_counter_reg[6]\ : label is "yes";
  attribute mark_debug_string of \lr_counter_reg[6]\ : label is "true";
  attribute KEEP of \lr_counter_reg[7]\ : label is "yes";
  attribute mark_debug_string of \lr_counter_reg[7]\ : label is "true";
  attribute KEEP of \lr_counter_reg[8]\ : label is "yes";
  attribute mark_debug_string of \lr_counter_reg[8]\ : label is "true";
  attribute ADDER_THRESHOLD of \lr_counter_reg[8]_i_1\ : label is 35;
  attribute KEEP of \lr_counter_reg[9]\ : label is "yes";
  attribute mark_debug_string of \lr_counter_reg[9]\ : label is "true";
  attribute KEEP of \serial_counter_reg[0]\ : label is "yes";
  attribute KEEP of \serial_counter_reg[10]\ : label is "yes";
  attribute KEEP of \serial_counter_reg[11]\ : label is "yes";
  attribute KEEP of \serial_counter_reg[12]\ : label is "yes";
  attribute KEEP of \serial_counter_reg[13]\ : label is "yes";
  attribute KEEP of \serial_counter_reg[14]\ : label is "yes";
  attribute KEEP of \serial_counter_reg[15]\ : label is "yes";
  attribute KEEP of \serial_counter_reg[16]\ : label is "yes";
  attribute ADDER_THRESHOLD of \serial_counter_reg[16]_i_1\ : label is 35;
  attribute KEEP of \serial_counter_reg[17]\ : label is "yes";
  attribute KEEP of \serial_counter_reg[18]\ : label is "yes";
  attribute KEEP of \serial_counter_reg[19]\ : label is "yes";
  attribute KEEP of \serial_counter_reg[1]\ : label is "yes";
  attribute KEEP of \serial_counter_reg[20]\ : label is "yes";
  attribute KEEP of \serial_counter_reg[21]\ : label is "yes";
  attribute KEEP of \serial_counter_reg[22]\ : label is "yes";
  attribute KEEP of \serial_counter_reg[23]\ : label is "yes";
  attribute KEEP of \serial_counter_reg[24]\ : label is "yes";
  attribute ADDER_THRESHOLD of \serial_counter_reg[24]_i_1\ : label is 35;
  attribute KEEP of \serial_counter_reg[25]\ : label is "yes";
  attribute KEEP of \serial_counter_reg[26]\ : label is "yes";
  attribute KEEP of \serial_counter_reg[27]\ : label is "yes";
  attribute KEEP of \serial_counter_reg[28]\ : label is "yes";
  attribute KEEP of \serial_counter_reg[29]\ : label is "yes";
  attribute KEEP of \serial_counter_reg[2]\ : label is "yes";
  attribute KEEP of \serial_counter_reg[30]\ : label is "yes";
  attribute ADDER_THRESHOLD of \serial_counter_reg[30]_i_2\ : label is 35;
  attribute KEEP of \serial_counter_reg[3]\ : label is "yes";
  attribute KEEP of \serial_counter_reg[4]\ : label is "yes";
  attribute KEEP of \serial_counter_reg[5]\ : label is "yes";
  attribute KEEP of \serial_counter_reg[6]\ : label is "yes";
  attribute KEEP of \serial_counter_reg[7]\ : label is "yes";
  attribute KEEP of \serial_counter_reg[8]\ : label is "yes";
  attribute ADDER_THRESHOLD of \serial_counter_reg[8]_i_1\ : label is 35;
  attribute KEEP of \serial_counter_reg[9]\ : label is "yes";
begin
  \^m_clk\ <= m_clk;
  lrclk <= i_lrclk;
  mclk <= \^m_clk\;
  sclk <= i_sclk;
i_lrclk_inferred_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_lrclk_inferred_i_2_n_0,
      I1 => lr_counter(5),
      O => i_lrclk
    );
i_lrclk_inferred_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => i_lrclk_inferred_i_3_n_0,
      I1 => i_lrclk_inferred_i_4_n_0,
      I2 => i_lrclk_inferred_i_5_n_0,
      I3 => i_lrclk_inferred_i_6_n_0,
      I4 => i_lrclk_inferred_i_7_n_0,
      I5 => i_lrclk_inferred_i_8_n_0,
      O => i_lrclk_inferred_i_2_n_0
    );
i_lrclk_inferred_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => lr_counter(22),
      I1 => lr_counter(21),
      I2 => lr_counter(24),
      I3 => lr_counter(23),
      O => i_lrclk_inferred_i_3_n_0
    );
i_lrclk_inferred_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => lr_counter(26),
      I1 => lr_counter(25),
      I2 => lr_counter(28),
      I3 => lr_counter(27),
      O => i_lrclk_inferred_i_4_n_0
    );
i_lrclk_inferred_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => lr_counter(14),
      I1 => lr_counter(13),
      I2 => lr_counter(16),
      I3 => lr_counter(15),
      O => i_lrclk_inferred_i_5_n_0
    );
i_lrclk_inferred_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => lr_counter(18),
      I1 => lr_counter(17),
      I2 => lr_counter(20),
      I3 => lr_counter(19),
      O => i_lrclk_inferred_i_6_n_0
    );
i_lrclk_inferred_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => lr_counter(10),
      I1 => lr_counter(9),
      I2 => lr_counter(12),
      I3 => lr_counter(11),
      O => i_lrclk_inferred_i_7_n_0
    );
i_lrclk_inferred_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => lr_counter(6),
      I1 => lr_counter(29),
      I2 => lr_counter(30),
      I3 => lr_counter(8),
      I4 => lr_counter(7),
      O => i_lrclk_inferred_i_8_n_0
    );
i_sclk_inferred_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => serial_counter(30),
      I1 => serial_counter(1),
      I2 => i_sclk_inferred_i_2_n_0,
      I3 => i_sclk_inferred_i_3_n_0,
      I4 => i_sclk_inferred_i_4_n_0,
      O => i_sclk
    );
i_sclk_inferred_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => i_sclk_inferred_i_5_n_0,
      I1 => serial_counter(23),
      I2 => serial_counter(22),
      I3 => serial_counter(25),
      I4 => serial_counter(24),
      I5 => i_sclk_inferred_i_6_n_0,
      O => i_sclk_inferred_i_2_n_0
    );
i_sclk_inferred_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => serial_counter(8),
      I1 => serial_counter(9),
      I2 => serial_counter(6),
      I3 => serial_counter(7),
      I4 => i_sclk_inferred_i_7_n_0,
      O => i_sclk_inferred_i_3_n_0
    );
i_sclk_inferred_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => serial_counter(16),
      I1 => serial_counter(17),
      I2 => serial_counter(14),
      I3 => serial_counter(15),
      I4 => i_sclk_inferred_i_8_n_0,
      O => i_sclk_inferred_i_4_n_0
    );
i_sclk_inferred_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => serial_counter(27),
      I1 => serial_counter(26),
      I2 => serial_counter(29),
      I3 => serial_counter(28),
      O => i_sclk_inferred_i_5_n_0
    );
i_sclk_inferred_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => serial_counter(3),
      I1 => serial_counter(2),
      I2 => serial_counter(5),
      I3 => serial_counter(4),
      O => i_sclk_inferred_i_6_n_0
    );
i_sclk_inferred_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => serial_counter(11),
      I1 => serial_counter(10),
      I2 => serial_counter(13),
      I3 => serial_counter(12),
      O => i_sclk_inferred_i_7_n_0
    );
i_sclk_inferred_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => serial_counter(19),
      I1 => serial_counter(18),
      I2 => serial_counter(21),
      I3 => serial_counter(20),
      O => i_sclk_inferred_i_8_n_0
    );
\lr_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => lr_counter(0),
      O => \lr_counter[0]_i_1_n_0\
    );
\lr_counter[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFCAAAAAAA8"
    )
        port map (
      I0 => \lr_counter[30]_i_3_n_0\,
      I1 => i_sclk_inferred_i_2_n_0,
      I2 => i_sclk_inferred_i_3_n_0,
      I3 => i_sclk_inferred_i_4_n_0,
      I4 => \lr_counter[30]_i_4_n_0\,
      I5 => i_lrclk_inferred_i_2_n_0,
      O => \lr_counter[30]_i_1_n_0\
    );
\lr_counter[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => lr_counter(2),
      I1 => lr_counter(3),
      I2 => lr_counter(0),
      I3 => lr_counter(1),
      I4 => lr_counter(5),
      I5 => lr_counter(4),
      O => \lr_counter[30]_i_3_n_0\
    );
\lr_counter[30]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => serial_counter(1),
      I1 => serial_counter(0),
      I2 => serial_counter(30),
      O => \lr_counter[30]_i_4_n_0\
    );
\lr_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \serial_counter[30]_i_1_n_0\,
      D => \lr_counter[0]_i_1_n_0\,
      Q => lr_counter(0),
      R => \lr_counter[30]_i_1_n_0\
    );
\lr_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \serial_counter[30]_i_1_n_0\,
      D => \lr_counter_reg[16]_i_1_n_14\,
      Q => lr_counter(10),
      R => \lr_counter[30]_i_1_n_0\
    );
\lr_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \serial_counter[30]_i_1_n_0\,
      D => \lr_counter_reg[16]_i_1_n_13\,
      Q => lr_counter(11),
      R => \lr_counter[30]_i_1_n_0\
    );
\lr_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \serial_counter[30]_i_1_n_0\,
      D => \lr_counter_reg[16]_i_1_n_12\,
      Q => lr_counter(12),
      R => \lr_counter[30]_i_1_n_0\
    );
\lr_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \serial_counter[30]_i_1_n_0\,
      D => \lr_counter_reg[16]_i_1_n_11\,
      Q => lr_counter(13),
      R => \lr_counter[30]_i_1_n_0\
    );
\lr_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \serial_counter[30]_i_1_n_0\,
      D => \lr_counter_reg[16]_i_1_n_10\,
      Q => lr_counter(14),
      R => \lr_counter[30]_i_1_n_0\
    );
\lr_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \serial_counter[30]_i_1_n_0\,
      D => \lr_counter_reg[16]_i_1_n_9\,
      Q => lr_counter(15),
      R => \lr_counter[30]_i_1_n_0\
    );
\lr_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \serial_counter[30]_i_1_n_0\,
      D => \lr_counter_reg[16]_i_1_n_8\,
      Q => lr_counter(16),
      R => \lr_counter[30]_i_1_n_0\
    );
\lr_counter_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \lr_counter_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \lr_counter_reg[16]_i_1_n_0\,
      CO(6) => \lr_counter_reg[16]_i_1_n_1\,
      CO(5) => \lr_counter_reg[16]_i_1_n_2\,
      CO(4) => \lr_counter_reg[16]_i_1_n_3\,
      CO(3) => \lr_counter_reg[16]_i_1_n_4\,
      CO(2) => \lr_counter_reg[16]_i_1_n_5\,
      CO(1) => \lr_counter_reg[16]_i_1_n_6\,
      CO(0) => \lr_counter_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \lr_counter_reg[16]_i_1_n_8\,
      O(6) => \lr_counter_reg[16]_i_1_n_9\,
      O(5) => \lr_counter_reg[16]_i_1_n_10\,
      O(4) => \lr_counter_reg[16]_i_1_n_11\,
      O(3) => \lr_counter_reg[16]_i_1_n_12\,
      O(2) => \lr_counter_reg[16]_i_1_n_13\,
      O(1) => \lr_counter_reg[16]_i_1_n_14\,
      O(0) => \lr_counter_reg[16]_i_1_n_15\,
      S(7 downto 0) => lr_counter(16 downto 9)
    );
\lr_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \serial_counter[30]_i_1_n_0\,
      D => \lr_counter_reg[24]_i_1_n_15\,
      Q => lr_counter(17),
      R => \lr_counter[30]_i_1_n_0\
    );
\lr_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \serial_counter[30]_i_1_n_0\,
      D => \lr_counter_reg[24]_i_1_n_14\,
      Q => lr_counter(18),
      R => \lr_counter[30]_i_1_n_0\
    );
\lr_counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \serial_counter[30]_i_1_n_0\,
      D => \lr_counter_reg[24]_i_1_n_13\,
      Q => lr_counter(19),
      R => \lr_counter[30]_i_1_n_0\
    );
\lr_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \serial_counter[30]_i_1_n_0\,
      D => \lr_counter_reg[8]_i_1_n_15\,
      Q => lr_counter(1),
      R => \lr_counter[30]_i_1_n_0\
    );
\lr_counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \serial_counter[30]_i_1_n_0\,
      D => \lr_counter_reg[24]_i_1_n_12\,
      Q => lr_counter(20),
      R => \lr_counter[30]_i_1_n_0\
    );
\lr_counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \serial_counter[30]_i_1_n_0\,
      D => \lr_counter_reg[24]_i_1_n_11\,
      Q => lr_counter(21),
      R => \lr_counter[30]_i_1_n_0\
    );
\lr_counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \serial_counter[30]_i_1_n_0\,
      D => \lr_counter_reg[24]_i_1_n_10\,
      Q => lr_counter(22),
      R => \lr_counter[30]_i_1_n_0\
    );
\lr_counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \serial_counter[30]_i_1_n_0\,
      D => \lr_counter_reg[24]_i_1_n_9\,
      Q => lr_counter(23),
      R => \lr_counter[30]_i_1_n_0\
    );
\lr_counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \serial_counter[30]_i_1_n_0\,
      D => \lr_counter_reg[24]_i_1_n_8\,
      Q => lr_counter(24),
      R => \lr_counter[30]_i_1_n_0\
    );
\lr_counter_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \lr_counter_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \lr_counter_reg[24]_i_1_n_0\,
      CO(6) => \lr_counter_reg[24]_i_1_n_1\,
      CO(5) => \lr_counter_reg[24]_i_1_n_2\,
      CO(4) => \lr_counter_reg[24]_i_1_n_3\,
      CO(3) => \lr_counter_reg[24]_i_1_n_4\,
      CO(2) => \lr_counter_reg[24]_i_1_n_5\,
      CO(1) => \lr_counter_reg[24]_i_1_n_6\,
      CO(0) => \lr_counter_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \lr_counter_reg[24]_i_1_n_8\,
      O(6) => \lr_counter_reg[24]_i_1_n_9\,
      O(5) => \lr_counter_reg[24]_i_1_n_10\,
      O(4) => \lr_counter_reg[24]_i_1_n_11\,
      O(3) => \lr_counter_reg[24]_i_1_n_12\,
      O(2) => \lr_counter_reg[24]_i_1_n_13\,
      O(1) => \lr_counter_reg[24]_i_1_n_14\,
      O(0) => \lr_counter_reg[24]_i_1_n_15\,
      S(7 downto 0) => lr_counter(24 downto 17)
    );
\lr_counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \serial_counter[30]_i_1_n_0\,
      D => \lr_counter_reg[30]_i_2_n_15\,
      Q => lr_counter(25),
      R => \lr_counter[30]_i_1_n_0\
    );
\lr_counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \serial_counter[30]_i_1_n_0\,
      D => \lr_counter_reg[30]_i_2_n_14\,
      Q => lr_counter(26),
      R => \lr_counter[30]_i_1_n_0\
    );
\lr_counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \serial_counter[30]_i_1_n_0\,
      D => \lr_counter_reg[30]_i_2_n_13\,
      Q => lr_counter(27),
      R => \lr_counter[30]_i_1_n_0\
    );
\lr_counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \serial_counter[30]_i_1_n_0\,
      D => \lr_counter_reg[30]_i_2_n_12\,
      Q => lr_counter(28),
      R => \lr_counter[30]_i_1_n_0\
    );
\lr_counter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \serial_counter[30]_i_1_n_0\,
      D => \lr_counter_reg[30]_i_2_n_11\,
      Q => lr_counter(29),
      R => \lr_counter[30]_i_1_n_0\
    );
\lr_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \serial_counter[30]_i_1_n_0\,
      D => \lr_counter_reg[8]_i_1_n_14\,
      Q => lr_counter(2),
      R => \lr_counter[30]_i_1_n_0\
    );
\lr_counter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \serial_counter[30]_i_1_n_0\,
      D => \lr_counter_reg[30]_i_2_n_10\,
      Q => lr_counter(30),
      R => \lr_counter[30]_i_1_n_0\
    );
\lr_counter_reg[30]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \lr_counter_reg[24]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_lr_counter_reg[30]_i_2_CO_UNCONNECTED\(7 downto 5),
      CO(4) => \lr_counter_reg[30]_i_2_n_3\,
      CO(3) => \lr_counter_reg[30]_i_2_n_4\,
      CO(2) => \lr_counter_reg[30]_i_2_n_5\,
      CO(1) => \lr_counter_reg[30]_i_2_n_6\,
      CO(0) => \lr_counter_reg[30]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 6) => \NLW_lr_counter_reg[30]_i_2_O_UNCONNECTED\(7 downto 6),
      O(5) => \lr_counter_reg[30]_i_2_n_10\,
      O(4) => \lr_counter_reg[30]_i_2_n_11\,
      O(3) => \lr_counter_reg[30]_i_2_n_12\,
      O(2) => \lr_counter_reg[30]_i_2_n_13\,
      O(1) => \lr_counter_reg[30]_i_2_n_14\,
      O(0) => \lr_counter_reg[30]_i_2_n_15\,
      S(7 downto 6) => B"00",
      S(5 downto 0) => lr_counter(30 downto 25)
    );
\lr_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \serial_counter[30]_i_1_n_0\,
      D => \lr_counter_reg[8]_i_1_n_13\,
      Q => lr_counter(3),
      R => \lr_counter[30]_i_1_n_0\
    );
\lr_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \serial_counter[30]_i_1_n_0\,
      D => \lr_counter_reg[8]_i_1_n_12\,
      Q => lr_counter(4),
      R => \lr_counter[30]_i_1_n_0\
    );
\lr_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \serial_counter[30]_i_1_n_0\,
      D => \lr_counter_reg[8]_i_1_n_11\,
      Q => lr_counter(5),
      R => \lr_counter[30]_i_1_n_0\
    );
\lr_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \serial_counter[30]_i_1_n_0\,
      D => \lr_counter_reg[8]_i_1_n_10\,
      Q => lr_counter(6),
      R => \lr_counter[30]_i_1_n_0\
    );
\lr_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \serial_counter[30]_i_1_n_0\,
      D => \lr_counter_reg[8]_i_1_n_9\,
      Q => lr_counter(7),
      R => \lr_counter[30]_i_1_n_0\
    );
\lr_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \serial_counter[30]_i_1_n_0\,
      D => \lr_counter_reg[8]_i_1_n_8\,
      Q => lr_counter(8),
      R => \lr_counter[30]_i_1_n_0\
    );
\lr_counter_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => lr_counter(0),
      CI_TOP => '0',
      CO(7) => \lr_counter_reg[8]_i_1_n_0\,
      CO(6) => \lr_counter_reg[8]_i_1_n_1\,
      CO(5) => \lr_counter_reg[8]_i_1_n_2\,
      CO(4) => \lr_counter_reg[8]_i_1_n_3\,
      CO(3) => \lr_counter_reg[8]_i_1_n_4\,
      CO(2) => \lr_counter_reg[8]_i_1_n_5\,
      CO(1) => \lr_counter_reg[8]_i_1_n_6\,
      CO(0) => \lr_counter_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \lr_counter_reg[8]_i_1_n_8\,
      O(6) => \lr_counter_reg[8]_i_1_n_9\,
      O(5) => \lr_counter_reg[8]_i_1_n_10\,
      O(4) => \lr_counter_reg[8]_i_1_n_11\,
      O(3) => \lr_counter_reg[8]_i_1_n_12\,
      O(2) => \lr_counter_reg[8]_i_1_n_13\,
      O(1) => \lr_counter_reg[8]_i_1_n_14\,
      O(0) => \lr_counter_reg[8]_i_1_n_15\,
      S(7 downto 0) => lr_counter(8 downto 1)
    );
\lr_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => \serial_counter[30]_i_1_n_0\,
      D => \lr_counter_reg[16]_i_1_n_15\,
      Q => lr_counter(9),
      R => \lr_counter[30]_i_1_n_0\
    );
\serial_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => serial_counter(0),
      O => p_1_in(0)
    );
\serial_counter[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFFFE"
    )
        port map (
      I0 => i_sclk_inferred_i_2_n_0,
      I1 => i_sclk_inferred_i_3_n_0,
      I2 => i_sclk_inferred_i_4_n_0,
      I3 => serial_counter(30),
      I4 => serial_counter(0),
      I5 => serial_counter(1),
      O => \serial_counter[30]_i_1_n_0\
    );
\serial_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => p_1_in(0),
      Q => serial_counter(0),
      R => \serial_counter[30]_i_1_n_0\
    );
\serial_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => p_1_in(10),
      Q => serial_counter(10),
      R => \serial_counter[30]_i_1_n_0\
    );
\serial_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => p_1_in(11),
      Q => serial_counter(11),
      R => \serial_counter[30]_i_1_n_0\
    );
\serial_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => p_1_in(12),
      Q => serial_counter(12),
      R => \serial_counter[30]_i_1_n_0\
    );
\serial_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => p_1_in(13),
      Q => serial_counter(13),
      R => \serial_counter[30]_i_1_n_0\
    );
\serial_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => p_1_in(14),
      Q => serial_counter(14),
      R => \serial_counter[30]_i_1_n_0\
    );
\serial_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => p_1_in(15),
      Q => serial_counter(15),
      R => \serial_counter[30]_i_1_n_0\
    );
\serial_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => p_1_in(16),
      Q => serial_counter(16),
      R => \serial_counter[30]_i_1_n_0\
    );
\serial_counter_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \serial_counter_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \serial_counter_reg[16]_i_1_n_0\,
      CO(6) => \serial_counter_reg[16]_i_1_n_1\,
      CO(5) => \serial_counter_reg[16]_i_1_n_2\,
      CO(4) => \serial_counter_reg[16]_i_1_n_3\,
      CO(3) => \serial_counter_reg[16]_i_1_n_4\,
      CO(2) => \serial_counter_reg[16]_i_1_n_5\,
      CO(1) => \serial_counter_reg[16]_i_1_n_6\,
      CO(0) => \serial_counter_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => p_1_in(16 downto 9),
      S(7 downto 0) => serial_counter(16 downto 9)
    );
\serial_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => p_1_in(17),
      Q => serial_counter(17),
      R => \serial_counter[30]_i_1_n_0\
    );
\serial_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => p_1_in(18),
      Q => serial_counter(18),
      R => \serial_counter[30]_i_1_n_0\
    );
\serial_counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => p_1_in(19),
      Q => serial_counter(19),
      R => \serial_counter[30]_i_1_n_0\
    );
\serial_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => p_1_in(1),
      Q => serial_counter(1),
      R => \serial_counter[30]_i_1_n_0\
    );
\serial_counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => p_1_in(20),
      Q => serial_counter(20),
      R => \serial_counter[30]_i_1_n_0\
    );
\serial_counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => p_1_in(21),
      Q => serial_counter(21),
      R => \serial_counter[30]_i_1_n_0\
    );
\serial_counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => p_1_in(22),
      Q => serial_counter(22),
      R => \serial_counter[30]_i_1_n_0\
    );
\serial_counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => p_1_in(23),
      Q => serial_counter(23),
      R => \serial_counter[30]_i_1_n_0\
    );
\serial_counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => p_1_in(24),
      Q => serial_counter(24),
      R => \serial_counter[30]_i_1_n_0\
    );
\serial_counter_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \serial_counter_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \serial_counter_reg[24]_i_1_n_0\,
      CO(6) => \serial_counter_reg[24]_i_1_n_1\,
      CO(5) => \serial_counter_reg[24]_i_1_n_2\,
      CO(4) => \serial_counter_reg[24]_i_1_n_3\,
      CO(3) => \serial_counter_reg[24]_i_1_n_4\,
      CO(2) => \serial_counter_reg[24]_i_1_n_5\,
      CO(1) => \serial_counter_reg[24]_i_1_n_6\,
      CO(0) => \serial_counter_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => p_1_in(24 downto 17),
      S(7 downto 0) => serial_counter(24 downto 17)
    );
\serial_counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => p_1_in(25),
      Q => serial_counter(25),
      R => \serial_counter[30]_i_1_n_0\
    );
\serial_counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => p_1_in(26),
      Q => serial_counter(26),
      R => \serial_counter[30]_i_1_n_0\
    );
\serial_counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => p_1_in(27),
      Q => serial_counter(27),
      R => \serial_counter[30]_i_1_n_0\
    );
\serial_counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => p_1_in(28),
      Q => serial_counter(28),
      R => \serial_counter[30]_i_1_n_0\
    );
\serial_counter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => p_1_in(29),
      Q => serial_counter(29),
      R => \serial_counter[30]_i_1_n_0\
    );
\serial_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => p_1_in(2),
      Q => serial_counter(2),
      R => \serial_counter[30]_i_1_n_0\
    );
\serial_counter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => p_1_in(30),
      Q => serial_counter(30),
      R => \serial_counter[30]_i_1_n_0\
    );
\serial_counter_reg[30]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \serial_counter_reg[24]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_serial_counter_reg[30]_i_2_CO_UNCONNECTED\(7 downto 5),
      CO(4) => \serial_counter_reg[30]_i_2_n_3\,
      CO(3) => \serial_counter_reg[30]_i_2_n_4\,
      CO(2) => \serial_counter_reg[30]_i_2_n_5\,
      CO(1) => \serial_counter_reg[30]_i_2_n_6\,
      CO(0) => \serial_counter_reg[30]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 6) => \NLW_serial_counter_reg[30]_i_2_O_UNCONNECTED\(7 downto 6),
      O(5 downto 0) => p_1_in(30 downto 25),
      S(7 downto 6) => B"00",
      S(5 downto 0) => serial_counter(30 downto 25)
    );
\serial_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => p_1_in(3),
      Q => serial_counter(3),
      R => \serial_counter[30]_i_1_n_0\
    );
\serial_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => p_1_in(4),
      Q => serial_counter(4),
      R => \serial_counter[30]_i_1_n_0\
    );
\serial_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => p_1_in(5),
      Q => serial_counter(5),
      R => \serial_counter[30]_i_1_n_0\
    );
\serial_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => p_1_in(6),
      Q => serial_counter(6),
      R => \serial_counter[30]_i_1_n_0\
    );
\serial_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => p_1_in(7),
      Q => serial_counter(7),
      R => \serial_counter[30]_i_1_n_0\
    );
\serial_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => p_1_in(8),
      Q => serial_counter(8),
      R => \serial_counter[30]_i_1_n_0\
    );
\serial_counter_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => serial_counter(0),
      CI_TOP => '0',
      CO(7) => \serial_counter_reg[8]_i_1_n_0\,
      CO(6) => \serial_counter_reg[8]_i_1_n_1\,
      CO(5) => \serial_counter_reg[8]_i_1_n_2\,
      CO(4) => \serial_counter_reg[8]_i_1_n_3\,
      CO(3) => \serial_counter_reg[8]_i_1_n_4\,
      CO(2) => \serial_counter_reg[8]_i_1_n_5\,
      CO(1) => \serial_counter_reg[8]_i_1_n_6\,
      CO(0) => \serial_counter_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => p_1_in(8 downto 1),
      S(7 downto 0) => serial_counter(8 downto 1)
    );
\serial_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^m_clk\,
      CE => '1',
      D => p_1_in(9),
      Q => serial_counter(9),
      R => \serial_counter[30]_i_1_n_0\
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
  attribute g_channel_offset : string;
  attribute g_channel_offset of design_1_I2S_wrapper_0_0_I2S_rec : entity is "4'b0000";
  attribute g_chip_scope : string;
  attribute g_chip_scope of design_1_I2S_wrapper_0_0_I2S_rec : entity is "true";
  attribute g_clock_div_lrclk : integer;
  attribute g_clock_div_lrclk of design_1_I2S_wrapper_0_0_I2S_rec : entity is 64;
  attribute g_clock_div_sclk : integer;
  attribute g_clock_div_sclk of design_1_I2S_wrapper_0_0_I2S_rec : entity is 4;
end design_1_I2S_wrapper_0_0_I2S_rec;

architecture STRUCTURE of design_1_I2S_wrapper_0_0_I2S_rec is
  signal \<const0>\ : STD_LOGIC;
  signal \axi_out_fwd[TData][23]_i_1_n_0\ : STD_LOGIC;
  signal \^axi_out_fwd[tid]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \axi_out_fwd[TID][0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_out_fwd[TValid]_i_2_n_0\ : STD_LOGIC;
  signal busy : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of busy : signal is std.standard.true;
  signal busy_i_1_n_0 : STD_LOGIC;
  signal busy_i_2_n_0 : STD_LOGIC;
  signal busy_i_3_n_0 : STD_LOGIC;
  signal is_l_sample_reg_n_0 : STD_LOGIC;
  signal l_buffr : STD_LOGIC;
  signal l_buffr_i_1_n_0 : STD_LOGIC;
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
  attribute MARK_DEBUG of l_sent : signal is std.standard.true;
  signal l_sent_i_1_n_0 : STD_LOGIC;
  signal l_sent_prev : STD_LOGIC;
  signal lr_counter : STD_LOGIC;
  signal \lr_counter[5]_i_3_n_0\ : STD_LOGIC;
  signal lr_counter_reg : STD_LOGIC_VECTOR ( 5 to 5 );
  signal \lr_counter_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal offset : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute MARK_DEBUG of offset : signal is std.standard.true;
  signal \offset[0]_i_1_n_0\ : STD_LOGIC;
  signal \offset[1]_i_1_n_0\ : STD_LOGIC;
  signal \offset[2]_i_1_n_0\ : STD_LOGIC;
  signal \offset[3]_i_1_n_0\ : STD_LOGIC;
  signal \offset[4]_i_1_n_0\ : STD_LOGIC;
  signal \offset[4]_i_2_n_0\ : STD_LOGIC;
  signal \offset[4]_i_3_n_0\ : STD_LOGIC;
  signal \offset[4]_i_4_n_0\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_4_in : STD_LOGIC;
  signal r_sample : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \r_sample[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[10]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[11]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[12]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[13]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[13]_i_2_n_0\ : STD_LOGIC;
  signal \r_sample[14]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[14]_i_2_n_0\ : STD_LOGIC;
  signal \r_sample[15]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[16]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[17]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[18]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[19]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[20]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[21]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[21]_i_2_n_0\ : STD_LOGIC;
  signal \r_sample[22]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[22]_i_2_n_0\ : STD_LOGIC;
  signal \r_sample[23]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[23]_i_2_n_0\ : STD_LOGIC;
  signal \r_sample[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_sample[9]_i_1_n_0\ : STD_LOGIC;
  signal r_sent : STD_LOGIC;
  attribute MARK_DEBUG of r_sent : signal is std.standard.true;
  signal r_sent_i_1_n_0 : STD_LOGIC;
  signal serial_counter : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal serial_counter0 : STD_LOGIC;
  signal start : STD_LOGIC;
  attribute MARK_DEBUG of start : signal is std.standard.true;
  signal start_reg0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute MARK_DEBUG of state : signal is std.standard.true;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of busy_i_3 : label is "soft_lutpair21";
  attribute KEEP : string;
  attribute KEEP of busy_reg : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of busy_reg : label is "true";
  attribute KEEP of l_sent_reg : label is "yes";
  attribute mark_debug_string of l_sent_reg : label is "true";
  attribute SOFT_HLUTNM of \lr_counter[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \lr_counter[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \lr_counter[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \lr_counter[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \lr_counter[4]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \lr_counter[5]_i_3\ : label is "soft_lutpair18";
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
  attribute KEEP of r_sent_reg : label is "yes";
  attribute mark_debug_string of r_sent_reg : label is "true";
  attribute SOFT_HLUTNM of \serial_counter[1]_i_2\ : label is "soft_lutpair21";
  attribute KEEP of start_reg : label is "yes";
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair20";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \state_reg[0]\ : label is "e_idle:00,e_data:01,e_wait:10";
  attribute KEEP of \state_reg[0]\ : label is "yes";
  attribute mark_debug_string of \state_reg[0]\ : label is "true";
  attribute FSM_ENCODED_STATES of \state_reg[1]\ : label is "e_idle:00,e_data:01,e_wait:10";
  attribute KEEP of \state_reg[1]\ : label is "yes";
  attribute mark_debug_string of \state_reg[1]\ : label is "true";
begin
  \axi_out_fwd[TID]\(3) <= \<const0>\;
  \axi_out_fwd[TID]\(2) <= \<const0>\;
  \axi_out_fwd[TID]\(1) <= \<const0>\;
  \axi_out_fwd[TID]\(0) <= \^axi_out_fwd[tid]\(0);
  \axi_out_fwd[TLast]\ <= \<const0>\;
  lrclk <= \<const0>\;
  mclk <= \<const0>\;
  sclk <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\axi_out_fwd[TData][23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => l_buffr,
      I3 => m_rst,
      O => \axi_out_fwd[TData][23]_i_1_n_0\
    );
\axi_out_fwd[TID][0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_l_sample_reg_n_0,
      O => \axi_out_fwd[TID][0]_i_1_n_0\
    );
\axi_out_fwd[TValid]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_rst,
      O => p_4_in
    );
\axi_out_fwd[TValid]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"002E"
    )
        port map (
      I0 => l_buffr,
      I1 => state(0),
      I2 => \axi_out_bwd[TReady]\,
      I3 => state(1),
      O => \axi_out_fwd[TValid]_i_2_n_0\
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
      D => \axi_out_fwd[TID][0]_i_1_n_0\,
      Q => \^axi_out_fwd[tid]\(0),
      R => '0'
    );
\axi_out_fwd_reg[TValid]\: unisim.vcomponents.FDRE
     port map (
      C => m_clk,
      CE => p_4_in,
      D => \axi_out_fwd[TValid]_i_2_n_0\,
      Q => \axi_out_fwd[TValid]\,
      R => '0'
    );
busy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEE00000EEE0"
    )
        port map (
      I0 => offset(4),
      I1 => busy_i_2_n_0,
      I2 => busy,
      I3 => start,
      I4 => busy_i_3_n_0,
      I5 => busy,
      O => busy_i_1_n_0
    );
busy_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => offset(0),
      I1 => offset(3),
      I2 => offset(2),
      I3 => offset(1),
      O => busy_i_2_n_0
    );
busy_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => serial_counter(0),
      I1 => serial_counter(1),
      O => busy_i_3_n_0
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
is_l_sample_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => l_sample,
      D => lr_counter_reg(5),
      Q => is_l_sample_reg_n_0,
      R => '0'
    );
l_buffr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCC00008B88"
    )
        port map (
      I0 => state(1),
      I1 => l_buffr,
      I2 => l_sent_prev,
      I3 => l_sent,
      I4 => state(0),
      I5 => m_rst,
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
      Q => l_buffr,
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
l_sent_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => p_4_in,
      D => l_sent,
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
      I0 => \lr_counter_reg__0\(0),
      O => \p_0_in__2\(0)
    );
\lr_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lr_counter_reg__0\(0),
      I1 => \lr_counter_reg__0\(1),
      O => \p_0_in__2\(1)
    );
\lr_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \lr_counter_reg__0\(1),
      I1 => \lr_counter_reg__0\(0),
      I2 => \lr_counter_reg__0\(2),
      O => \p_0_in__2\(2)
    );
\lr_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \lr_counter_reg__0\(2),
      I1 => \lr_counter_reg__0\(0),
      I2 => \lr_counter_reg__0\(1),
      I3 => \lr_counter_reg__0\(3),
      O => \p_0_in__2\(3)
    );
\lr_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \lr_counter_reg__0\(3),
      I1 => \lr_counter_reg__0\(1),
      I2 => \lr_counter_reg__0\(0),
      I3 => \lr_counter_reg__0\(2),
      I4 => \lr_counter_reg__0\(4),
      O => \p_0_in__2\(4)
    );
\lr_counter[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => serial_counter(0),
      I1 => serial_counter(1),
      I2 => lr_counter_reg(5),
      I3 => \lr_counter[5]_i_3_n_0\,
      O => lr_counter
    );
\lr_counter[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \lr_counter_reg__0\(4),
      I1 => \lr_counter_reg__0\(2),
      I2 => \lr_counter_reg__0\(0),
      I3 => \lr_counter_reg__0\(1),
      I4 => \lr_counter_reg__0\(3),
      I5 => lr_counter_reg(5),
      O => \p_0_in__2\(5)
    );
\lr_counter[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \lr_counter_reg__0\(3),
      I1 => \lr_counter_reg__0\(1),
      I2 => \lr_counter_reg__0\(0),
      I3 => \lr_counter_reg__0\(2),
      I4 => \lr_counter_reg__0\(4),
      O => \lr_counter[5]_i_3_n_0\
    );
\lr_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => serial_counter0,
      D => \p_0_in__2\(0),
      Q => \lr_counter_reg__0\(0),
      R => lr_counter
    );
\lr_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => serial_counter0,
      D => \p_0_in__2\(1),
      Q => \lr_counter_reg__0\(1),
      R => lr_counter
    );
\lr_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => serial_counter0,
      D => \p_0_in__2\(2),
      Q => \lr_counter_reg__0\(2),
      R => lr_counter
    );
\lr_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => serial_counter0,
      D => \p_0_in__2\(3),
      Q => \lr_counter_reg__0\(3),
      R => lr_counter
    );
\lr_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => serial_counter0,
      D => \p_0_in__2\(4),
      Q => \lr_counter_reg__0\(4),
      R => lr_counter
    );
\lr_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => serial_counter0,
      D => \p_0_in__2\(5),
      Q => lr_counter_reg(5),
      R => lr_counter
    );
\offset[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => start,
      I1 => busy,
      I2 => offset(0),
      O => \offset[0]_i_1_n_0\
    );
\offset[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"999A"
    )
        port map (
      I0 => offset(1),
      I1 => offset(0),
      I2 => busy,
      I3 => start,
      O => \offset[1]_i_1_n_0\
    );
\offset[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C9C9C9CC"
    )
        port map (
      I0 => offset(1),
      I1 => offset(2),
      I2 => offset(0),
      I3 => busy,
      I4 => start,
      O => \offset[2]_i_1_n_0\
    );
\offset[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAA56"
    )
        port map (
      I0 => offset(3),
      I1 => start,
      I2 => busy,
      I3 => offset(0),
      I4 => offset(2),
      I5 => offset(1),
      O => \offset[3]_i_1_n_0\
    );
\offset[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \offset[4]_i_3_n_0\,
      I1 => offset(0),
      I2 => offset(3),
      I3 => offset(2),
      I4 => offset(1),
      O => \offset[4]_i_1_n_0\
    );
\offset[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFAB00000054"
    )
        port map (
      I0 => offset(3),
      I1 => start,
      I2 => busy,
      I3 => offset(0),
      I4 => \offset[4]_i_4_n_0\,
      I5 => offset(4),
      O => \offset[4]_i_2_n_0\
    );
\offset[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1FFF"
    )
        port map (
      I0 => start,
      I1 => busy,
      I2 => serial_counter(0),
      I3 => serial_counter(1),
      I4 => offset(4),
      O => \offset[4]_i_3_n_0\
    );
\offset[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => offset(1),
      I1 => offset(2),
      O => \offset[4]_i_4_n_0\
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
      D => \offset[4]_i_2_n_0\,
      Q => offset(4),
      S => \offset[4]_i_1_n_0\
    );
\r_sample[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => r_sample(0),
      I1 => offset(1),
      I2 => offset(2),
      I3 => \r_sample[22]_i_2_n_0\,
      I4 => \offset[4]_i_3_n_0\,
      I5 => data_in,
      O => \r_sample[0]_i_1_n_0\
    );
\r_sample[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => data_in,
      I1 => offset(2),
      I2 => offset(1),
      I3 => \offset[4]_i_3_n_0\,
      I4 => \r_sample[14]_i_2_n_0\,
      I5 => r_sample(10),
      O => \r_sample[10]_i_1_n_0\
    );
\r_sample[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => data_in,
      I1 => \offset[4]_i_3_n_0\,
      I2 => offset(2),
      I3 => offset(1),
      I4 => \r_sample[13]_i_2_n_0\,
      I5 => r_sample(11),
      O => \r_sample[11]_i_1_n_0\
    );
\r_sample[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => data_in,
      I1 => \offset[4]_i_3_n_0\,
      I2 => offset(2),
      I3 => offset(1),
      I4 => \r_sample[14]_i_2_n_0\,
      I5 => r_sample(12),
      O => \r_sample[12]_i_1_n_0\
    );
\r_sample[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => data_in,
      I1 => offset(2),
      I2 => offset(1),
      I3 => \offset[4]_i_3_n_0\,
      I4 => \r_sample[13]_i_2_n_0\,
      I5 => r_sample(13),
      O => \r_sample[13]_i_1_n_0\
    );
\r_sample[13]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => offset(3),
      I1 => offset(0),
      O => \r_sample[13]_i_2_n_0\
    );
\r_sample[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => data_in,
      I1 => offset(2),
      I2 => offset(1),
      I3 => \offset[4]_i_3_n_0\,
      I4 => \r_sample[14]_i_2_n_0\,
      I5 => r_sample(14),
      O => \r_sample[14]_i_1_n_0\
    );
\r_sample[14]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => offset(0),
      I1 => offset(3),
      O => \r_sample[14]_i_2_n_0\
    );
\r_sample[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => data_in,
      I1 => \r_sample[23]_i_2_n_0\,
      I2 => offset(0),
      I3 => offset(3),
      I4 => \offset[4]_i_4_n_0\,
      I5 => r_sample(15),
      O => \r_sample[15]_i_1_n_0\
    );
\r_sample[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => data_in,
      I1 => \r_sample[23]_i_2_n_0\,
      I2 => offset(1),
      I3 => offset(2),
      I4 => \r_sample[22]_i_2_n_0\,
      I5 => r_sample(16),
      O => \r_sample[16]_i_1_n_0\
    );
\r_sample[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => data_in,
      I1 => offset(2),
      I2 => offset(1),
      I3 => \r_sample[23]_i_2_n_0\,
      I4 => \r_sample[21]_i_2_n_0\,
      I5 => r_sample(17),
      O => \r_sample[17]_i_1_n_0\
    );
\r_sample[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => data_in,
      I1 => \r_sample[22]_i_2_n_0\,
      I2 => offset(1),
      I3 => offset(2),
      I4 => \r_sample[23]_i_2_n_0\,
      I5 => r_sample(18),
      O => \r_sample[18]_i_1_n_0\
    );
\r_sample[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => data_in,
      I1 => \r_sample[23]_i_2_n_0\,
      I2 => \r_sample[21]_i_2_n_0\,
      I3 => offset(1),
      I4 => offset(2),
      I5 => r_sample(19),
      O => \r_sample[19]_i_1_n_0\
    );
\r_sample[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => data_in,
      I1 => offset(2),
      I2 => offset(1),
      I3 => \offset[4]_i_3_n_0\,
      I4 => \r_sample[21]_i_2_n_0\,
      I5 => r_sample(1),
      O => \r_sample[1]_i_1_n_0\
    );
\r_sample[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => data_in,
      I1 => \r_sample[22]_i_2_n_0\,
      I2 => offset(2),
      I3 => offset(1),
      I4 => \r_sample[23]_i_2_n_0\,
      I5 => r_sample(20),
      O => \r_sample[20]_i_1_n_0\
    );
\r_sample[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => data_in,
      I1 => offset(2),
      I2 => offset(1),
      I3 => \r_sample[23]_i_2_n_0\,
      I4 => \r_sample[21]_i_2_n_0\,
      I5 => r_sample(21),
      O => \r_sample[21]_i_1_n_0\
    );
\r_sample[21]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => offset(0),
      I1 => offset(3),
      O => \r_sample[21]_i_2_n_0\
    );
\r_sample[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => data_in,
      I1 => \r_sample[22]_i_2_n_0\,
      I2 => offset(1),
      I3 => offset(2),
      I4 => \r_sample[23]_i_2_n_0\,
      I5 => r_sample(22),
      O => \r_sample[22]_i_1_n_0\
    );
\r_sample[22]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => offset(3),
      I1 => offset(0),
      O => \r_sample[22]_i_2_n_0\
    );
\r_sample[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => data_in,
      I1 => \offset[4]_i_4_n_0\,
      I2 => offset(3),
      I3 => offset(0),
      I4 => \r_sample[23]_i_2_n_0\,
      I5 => r_sample(23),
      O => \r_sample[23]_i_1_n_0\
    );
\r_sample[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8000000"
    )
        port map (
      I0 => offset(4),
      I1 => start,
      I2 => busy,
      I3 => serial_counter(0),
      I4 => serial_counter(1),
      O => \r_sample[23]_i_2_n_0\
    );
\r_sample[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => data_in,
      I1 => offset(2),
      I2 => offset(1),
      I3 => \offset[4]_i_3_n_0\,
      I4 => \r_sample[22]_i_2_n_0\,
      I5 => r_sample(2),
      O => \r_sample[2]_i_1_n_0\
    );
\r_sample[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => data_in,
      I1 => \offset[4]_i_3_n_0\,
      I2 => offset(2),
      I3 => offset(1),
      I4 => \r_sample[21]_i_2_n_0\,
      I5 => r_sample(3),
      O => \r_sample[3]_i_1_n_0\
    );
\r_sample[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => data_in,
      I1 => \offset[4]_i_3_n_0\,
      I2 => offset(2),
      I3 => offset(1),
      I4 => \r_sample[22]_i_2_n_0\,
      I5 => r_sample(4),
      O => \r_sample[4]_i_1_n_0\
    );
\r_sample[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => data_in,
      I1 => offset(2),
      I2 => offset(1),
      I3 => \offset[4]_i_3_n_0\,
      I4 => \r_sample[21]_i_2_n_0\,
      I5 => r_sample(5),
      O => \r_sample[5]_i_1_n_0\
    );
\r_sample[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => data_in,
      I1 => offset(2),
      I2 => offset(1),
      I3 => \offset[4]_i_3_n_0\,
      I4 => \r_sample[22]_i_2_n_0\,
      I5 => r_sample(6),
      O => \r_sample[6]_i_1_n_0\
    );
\r_sample[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => data_in,
      I1 => \offset[4]_i_4_n_0\,
      I2 => offset(3),
      I3 => offset(0),
      I4 => \offset[4]_i_3_n_0\,
      I5 => r_sample(7),
      O => \r_sample[7]_i_1_n_0\
    );
\r_sample[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => data_in,
      I1 => \offset[4]_i_4_n_0\,
      I2 => offset(0),
      I3 => offset(3),
      I4 => \offset[4]_i_3_n_0\,
      I5 => r_sample(8),
      O => \r_sample[8]_i_1_n_0\
    );
\r_sample[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => data_in,
      I1 => offset(2),
      I2 => offset(1),
      I3 => \offset[4]_i_3_n_0\,
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
      I1 => busy_i_3_n_0,
      I2 => busy_i_2_n_0,
      I3 => offset(4),
      I4 => start,
      I5 => busy,
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
\serial_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => serial_counter(0),
      O => \p_0_in__1\(0)
    );
\serial_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => serial_counter(1),
      I1 => serial_counter(0),
      O => serial_counter0
    );
\serial_counter[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => serial_counter(0),
      I1 => serial_counter(1),
      O => \p_0_in__1\(1)
    );
\serial_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \p_0_in__1\(0),
      Q => serial_counter(0),
      R => serial_counter0
    );
\serial_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \p_0_in__1\(1),
      Q => serial_counter(1),
      R => serial_counter0
    );
start_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \lr_counter_reg__0\(0),
      I1 => \lr_counter_reg__0\(1),
      I2 => \lr_counter_reg__0\(2),
      I3 => \lr_counter_reg__0\(4),
      I4 => \lr_counter_reg__0\(3),
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
\state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"002E"
    )
        port map (
      I0 => l_buffr,
      I1 => state(0),
      I2 => \axi_out_bwd[TReady]\,
      I3 => state(1),
      O => \p_0_in__0\(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => state(0),
      I1 => \axi_out_bwd[TReady]\,
      I2 => state(1),
      O => \p_0_in__0\(1)
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => state(0),
      R => m_rst
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => state(1),
      R => m_rst
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
  signal busy_i_2_n_0 : STD_LOGIC;
  signal busy_i_3_n_0 : STD_LOGIC;
  signal data_out0_out : STD_LOGIC;
  signal data_out_i_11_n_0 : STD_LOGIC;
  signal data_out_i_12_n_0 : STD_LOGIC;
  signal data_out_i_13_n_0 : STD_LOGIC;
  signal data_out_i_16_n_0 : STD_LOGIC;
  signal data_out_i_17_n_0 : STD_LOGIC;
  signal data_out_i_18_n_0 : STD_LOGIC;
  signal data_out_i_19_n_0 : STD_LOGIC;
  signal data_out_i_20_n_0 : STD_LOGIC;
  signal data_out_i_21_n_0 : STD_LOGIC;
  signal data_out_i_22_n_0 : STD_LOGIC;
  signal data_out_i_23_n_0 : STD_LOGIC;
  signal data_out_i_24_n_0 : STD_LOGIC;
  signal data_out_i_25_n_0 : STD_LOGIC;
  signal data_out_i_26_n_0 : STD_LOGIC;
  signal data_out_i_3_n_0 : STD_LOGIC;
  signal data_out_i_4_n_0 : STD_LOGIC;
  signal data_out_i_6_n_0 : STD_LOGIC;
  signal data_out_i_8_n_0 : STD_LOGIC;
  signal data_out_reg_i_10_n_0 : STD_LOGIC;
  signal data_out_reg_i_14_n_0 : STD_LOGIC;
  signal data_out_reg_i_15_n_0 : STD_LOGIC;
  signal data_out_reg_i_5_n_0 : STD_LOGIC;
  signal data_out_reg_i_7_n_0 : STD_LOGIC;
  signal data_out_reg_i_9_n_0 : STD_LOGIC;
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
  signal \offset[4]_i_2_n_0\ : STD_LOGIC;
  signal \offset[4]_i_3_n_0\ : STD_LOGIC;
  signal \offset[4]_i_4_n_0\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 5 downto 0 );
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
  signal start : STD_LOGIC;
  attribute MARK_DEBUG of start : signal is std.standard.true;
  signal start_reg0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute MARK_DEBUG of state : signal is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of busy_reg : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of busy_reg : label is "true";
  attribute KEEP of l_sent_reg : label is "yes";
  attribute mark_debug_string of l_sent_reg : label is "true";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \lr_counter[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \lr_counter[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \lr_counter[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \lr_counter[3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \lr_counter[4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \lr_counter[5]_i_3\ : label is "soft_lutpair23";
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
  attribute KEEP of r_sent_reg : label is "yes";
  attribute mark_debug_string of r_sent_reg : label is "true";
  attribute SOFT_HLUTNM of \serial_counter[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \serial_counter[1]_i_1\ : label is "soft_lutpair25";
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
  lrclk <= \<const0>\;
  mclk <= \<const0>\;
  sclk <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\axi_in_bwd[TReady]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888BB8B888B"
    )
        port map (
      I0 => \^axi_in_bwd[tready]\,
      I1 => m_rst,
      I2 => \axi_in_fwd[TValid]\,
      I3 => state(1),
      I4 => \axi_in_bwd[TReady]_i_2_n_0\,
      I5 => state(0),
      O => \axi_in_bwd[TReady]_i_1_n_0\
    );
\axi_in_bwd[TReady]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => r_buffr_reg_n_0,
      I1 => l_buffr_reg_n_0,
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
      INIT => X"A888A888A8880CCC"
    )
        port map (
      I0 => busy_i_2_n_0,
      I1 => busy,
      I2 => serial_counter(1),
      I3 => serial_counter(0),
      I4 => busy,
      I5 => start,
      O => busy_i_1_n_0
    );
busy_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => serial_counter(0),
      I1 => offset(3),
      I2 => busy_i_3_n_0,
      I3 => offset(2),
      I4 => offset(4),
      I5 => serial_counter(1),
      O => busy_i_2_n_0
    );
busy_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => offset(1),
      I1 => offset(0),
      O => busy_i_3_n_0
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
data_out_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => serial_counter(0),
      I1 => serial_counter(1),
      O => serial_counter0
    );
data_out_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_sample_reg_n_0_[18]\,
      I1 => \r_sample_reg_n_0_[16]\,
      I2 => offset(0),
      I3 => \r_sample_reg_n_0_[17]\,
      I4 => offset(1),
      I5 => \r_sample_reg_n_0_[23]\,
      O => data_out_i_11_n_0
    );
data_out_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_sample_reg_n_0_[22]\,
      I1 => \r_sample_reg_n_0_[20]\,
      I2 => offset(0),
      I3 => \r_sample_reg_n_0_[21]\,
      I4 => offset(1),
      I5 => \r_sample_reg_n_0_[19]\,
      O => data_out_i_12_n_0
    );
data_out_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_sample_reg_n_0_[18]\,
      I1 => \r_sample_reg_n_0_[16]\,
      I2 => offset(0),
      I3 => \r_sample_reg_n_0_[17]\,
      I4 => offset(1),
      I5 => \r_sample_reg_n_0_[15]\,
      O => data_out_i_13_n_0
    );
data_out_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \l_sample_reg_n_0_[18]\,
      I1 => \l_sample_reg_n_0_[16]\,
      I2 => offset(0),
      I3 => \l_sample_reg_n_0_[17]\,
      I4 => offset(1),
      I5 => \l_sample_reg_n_0_[23]\,
      O => data_out_i_16_n_0
    );
data_out_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \l_sample_reg_n_0_[22]\,
      I1 => \l_sample_reg_n_0_[20]\,
      I2 => offset(0),
      I3 => \l_sample_reg_n_0_[21]\,
      I4 => offset(1),
      I5 => \l_sample_reg_n_0_[19]\,
      O => data_out_i_17_n_0
    );
data_out_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \l_sample_reg_n_0_[18]\,
      I1 => \l_sample_reg_n_0_[16]\,
      I2 => offset(0),
      I3 => \l_sample_reg_n_0_[17]\,
      I4 => offset(1),
      I5 => \l_sample_reg_n_0_[15]\,
      O => data_out_i_18_n_0
    );
data_out_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_sample_reg_n_0_[2]\,
      I1 => \r_sample_reg_n_0_[0]\,
      I2 => offset(0),
      I3 => \r_sample_reg_n_0_[1]\,
      I4 => offset(1),
      I5 => \r_sample_reg_n_0_[23]\,
      O => data_out_i_19_n_0
    );
data_out_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_sample_reg_n_0_[6]\,
      I1 => \r_sample_reg_n_0_[4]\,
      I2 => offset(0),
      I3 => \r_sample_reg_n_0_[5]\,
      I4 => offset(1),
      I5 => \r_sample_reg_n_0_[3]\,
      O => data_out_i_20_n_0
    );
data_out_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_sample_reg_n_0_[10]\,
      I1 => \r_sample_reg_n_0_[8]\,
      I2 => offset(0),
      I3 => \r_sample_reg_n_0_[9]\,
      I4 => offset(1),
      I5 => \r_sample_reg_n_0_[7]\,
      O => data_out_i_21_n_0
    );
data_out_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_sample_reg_n_0_[14]\,
      I1 => \r_sample_reg_n_0_[12]\,
      I2 => offset(0),
      I3 => \r_sample_reg_n_0_[13]\,
      I4 => offset(1),
      I5 => \r_sample_reg_n_0_[11]\,
      O => data_out_i_22_n_0
    );
data_out_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \l_sample_reg_n_0_[2]\,
      I1 => \l_sample_reg_n_0_[0]\,
      I2 => offset(0),
      I3 => \l_sample_reg_n_0_[1]\,
      I4 => offset(1),
      I5 => \l_sample_reg_n_0_[23]\,
      O => data_out_i_23_n_0
    );
data_out_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \l_sample_reg_n_0_[6]\,
      I1 => \l_sample_reg_n_0_[4]\,
      I2 => offset(0),
      I3 => \l_sample_reg_n_0_[5]\,
      I4 => offset(1),
      I5 => \l_sample_reg_n_0_[3]\,
      O => data_out_i_24_n_0
    );
data_out_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \l_sample_reg_n_0_[10]\,
      I1 => \l_sample_reg_n_0_[8]\,
      I2 => offset(0),
      I3 => \l_sample_reg_n_0_[9]\,
      I4 => offset(1),
      I5 => \l_sample_reg_n_0_[7]\,
      O => data_out_i_25_n_0
    );
data_out_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \l_sample_reg_n_0_[14]\,
      I1 => \l_sample_reg_n_0_[12]\,
      I2 => offset(0),
      I3 => \l_sample_reg_n_0_[13]\,
      I4 => offset(1),
      I5 => \l_sample_reg_n_0_[11]\,
      O => data_out_i_26_n_0
    );
data_out_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC0CA808"
    )
        port map (
      I0 => busy,
      I1 => data_out_reg_i_5_n_0,
      I2 => offset(4),
      I3 => data_out_i_6_n_0,
      I4 => start,
      O => data_out_i_3_n_0
    );
data_out_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC0CA808"
    )
        port map (
      I0 => busy,
      I1 => data_out_reg_i_7_n_0,
      I2 => offset(4),
      I3 => data_out_i_8_n_0,
      I4 => start,
      O => data_out_i_4_n_0
    );
data_out_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => data_out_i_11_n_0,
      I1 => offset(3),
      I2 => data_out_i_12_n_0,
      I3 => offset(2),
      I4 => data_out_i_13_n_0,
      O => data_out_i_6_n_0
    );
data_out_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => data_out_i_16_n_0,
      I1 => offset(3),
      I2 => data_out_i_17_n_0,
      I3 => offset(2),
      I4 => data_out_i_18_n_0,
      O => data_out_i_8_n_0
    );
data_out_reg: unisim.vcomponents.FDRE
     port map (
      C => m_clk,
      CE => serial_counter0,
      D => data_out0_out,
      Q => data_out,
      R => '0'
    );
data_out_reg_i_10: unisim.vcomponents.MUXF7
     port map (
      I0 => data_out_i_21_n_0,
      I1 => data_out_i_22_n_0,
      O => data_out_reg_i_10_n_0,
      S => offset(2)
    );
data_out_reg_i_14: unisim.vcomponents.MUXF7
     port map (
      I0 => data_out_i_23_n_0,
      I1 => data_out_i_24_n_0,
      O => data_out_reg_i_14_n_0,
      S => offset(2)
    );
data_out_reg_i_15: unisim.vcomponents.MUXF7
     port map (
      I0 => data_out_i_25_n_0,
      I1 => data_out_i_26_n_0,
      O => data_out_reg_i_15_n_0,
      S => offset(2)
    );
data_out_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => data_out_i_3_n_0,
      I1 => data_out_i_4_n_0,
      O => data_out0_out,
      S => lr_counter_reg(5)
    );
data_out_reg_i_5: unisim.vcomponents.MUXF8
     port map (
      I0 => data_out_reg_i_9_n_0,
      I1 => data_out_reg_i_10_n_0,
      O => data_out_reg_i_5_n_0,
      S => offset(3)
    );
data_out_reg_i_7: unisim.vcomponents.MUXF8
     port map (
      I0 => data_out_reg_i_14_n_0,
      I1 => data_out_reg_i_15_n_0,
      O => data_out_reg_i_7_n_0,
      S => offset(3)
    );
data_out_reg_i_9: unisim.vcomponents.MUXF7
     port map (
      I0 => data_out_i_19_n_0,
      I1 => data_out_i_20_n_0,
      O => data_out_reg_i_9_n_0,
      S => offset(2)
    );
l_buffr_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD0C"
    )
        port map (
      I0 => l_sent,
      I1 => \l_sample[23]_i_2_n_0\,
      I2 => m_rst,
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
      INIT => X"0000000000000002"
    )
        port map (
      I0 => state(0),
      I1 => \axi_in_fwd[TID]\(2),
      I2 => \axi_in_fwd[TID]\(0),
      I3 => \axi_in_fwd[TID]\(1),
      I4 => \axi_in_fwd[TID]\(3),
      I5 => busy,
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
      INIT => X"88F8F8F8"
    )
        port map (
      I0 => \offset[4]_i_1_n_0\,
      I1 => lr_counter_reg(5),
      I2 => l_sent,
      I3 => serial_counter(1),
      I4 => serial_counter(0),
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
      O => \p_0_in__2\(0)
    );
\lr_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lr_counter_reg(1),
      I1 => lr_counter_reg(0),
      O => \p_0_in__2\(1)
    );
\lr_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => lr_counter_reg(2),
      I1 => lr_counter_reg(1),
      I2 => lr_counter_reg(0),
      O => \p_0_in__2\(2)
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
      O => \p_0_in__2\(3)
    );
\lr_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => lr_counter_reg(4),
      I1 => lr_counter_reg(2),
      I2 => lr_counter_reg(0),
      I3 => lr_counter_reg(1),
      I4 => lr_counter_reg(3),
      O => \p_0_in__2\(4)
    );
\lr_counter[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => serial_counter(1),
      I1 => \lr_counter[5]_i_3_n_0\,
      I2 => serial_counter(0),
      I3 => lr_counter_reg(5),
      O => lr_counter
    );
\lr_counter[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => lr_counter_reg(5),
      I1 => lr_counter_reg(3),
      I2 => lr_counter_reg(1),
      I3 => lr_counter_reg(0),
      I4 => lr_counter_reg(2),
      I5 => lr_counter_reg(4),
      O => \p_0_in__2\(5)
    );
\lr_counter[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => lr_counter_reg(3),
      I1 => lr_counter_reg(1),
      I2 => lr_counter_reg(0),
      I3 => lr_counter_reg(2),
      I4 => lr_counter_reg(4),
      O => \lr_counter[5]_i_3_n_0\
    );
\lr_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => serial_counter0,
      D => \p_0_in__2\(0),
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
      D => \p_0_in__2\(1),
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
      D => \p_0_in__2\(2),
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
      D => \p_0_in__2\(3),
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
      D => \p_0_in__2\(4),
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
      D => \p_0_in__2\(5),
      Q => lr_counter_reg(5),
      R => lr_counter
    );
\offset[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => busy,
      I1 => start,
      I2 => offset(0),
      O => \offset[0]_i_1_n_0\
    );
\offset[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CD32"
    )
        port map (
      I0 => busy,
      I1 => offset(0),
      I2 => start,
      I3 => offset(1),
      O => \offset[1]_i_1_n_0\
    );
\offset[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCFD0302"
    )
        port map (
      I0 => busy,
      I1 => offset(0),
      I2 => offset(1),
      I3 => start,
      I4 => offset(2),
      O => \offset[2]_i_1_n_0\
    );
\offset[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFD00030002"
    )
        port map (
      I0 => busy,
      I1 => offset(0),
      I2 => offset(1),
      I3 => offset(2),
      I4 => start,
      I5 => offset(3),
      O => \offset[3]_i_1_n_0\
    );
\offset[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0008000"
    )
        port map (
      I0 => busy,
      I1 => serial_counter(1),
      I2 => \offset[4]_i_3_n_0\,
      I3 => serial_counter(0),
      I4 => start,
      O => \offset[4]_i_1_n_0\
    );
\offset[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCFFFDF00300020"
    )
        port map (
      I0 => busy,
      I1 => offset(2),
      I2 => \offset[4]_i_4_n_0\,
      I3 => offset(3),
      I4 => start,
      I5 => offset(4),
      O => \offset[4]_i_2_n_0\
    );
\offset[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => offset(3),
      I1 => offset(1),
      I2 => offset(0),
      I3 => offset(2),
      I4 => offset(4),
      O => \offset[4]_i_3_n_0\
    );
\offset[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => offset(1),
      I1 => offset(0),
      O => \offset[4]_i_4_n_0\
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
      D => \offset[4]_i_2_n_0\,
      Q => offset(4),
      S => \offset[4]_i_1_n_0\
    );
r_buffr_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD0C"
    )
        port map (
      I0 => r_sent,
      I1 => \r_sample[23]_i_2_n_0\,
      I2 => m_rst,
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
      INIT => X"0000000000000020"
    )
        port map (
      I0 => state(0),
      I1 => \axi_in_fwd[TID]\(2),
      I2 => \axi_in_fwd[TID]\(0),
      I3 => \axi_in_fwd[TID]\(1),
      I4 => \axi_in_fwd[TID]\(3),
      I5 => busy,
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
r_sent_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00C8"
    )
        port map (
      I0 => start,
      I1 => \offset[4]_i_3_n_0\,
      I2 => busy,
      I3 => lr_counter_reg(5),
      O => r_sent_i_1_n_0
    );
r_sent_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => serial_counter0,
      D => r_sent_i_1_n_0,
      Q => r_sent,
      R => '0'
    );
\sample[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => state(0),
      I1 => \axi_in_fwd[TValid]\,
      I2 => state(1),
      I3 => m_rst,
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
      O => \p_0_in__1\(0)
    );
\serial_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => serial_counter(1),
      I1 => serial_counter(0),
      O => \p_0_in__1\(1)
    );
\serial_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \p_0_in__1\(0),
      Q => serial_counter(0),
      R => serial_counter0
    );
\serial_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \p_0_in__1\(1),
      Q => serial_counter(1),
      R => serial_counter0
    );
start_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => lr_counter_reg(3),
      I1 => lr_counter_reg(1),
      I2 => lr_counter_reg(0),
      I3 => lr_counter_reg(2),
      I4 => lr_counter_reg(4),
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
      INIT => X"8F808F800F0F0000"
    )
        port map (
      I0 => r_buffr_reg_n_0,
      I1 => l_buffr_reg_n_0,
      I2 => state(1),
      I3 => busy,
      I4 => \axi_in_fwd[TValid]\,
      I5 => state(0),
      O => \p_0_in__0\(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80808F80"
    )
        port map (
      I0 => l_buffr_reg_n_0,
      I1 => r_buffr_reg_n_0,
      I2 => state(1),
      I3 => state(0),
      I4 => busy,
      O => \p_0_in__0\(1)
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => state(0),
      R => m_rst
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_clk,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => state(1),
      R => m_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_I2S_wrapper_0_0_xpm_cdc_gray is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of design_1_I2S_wrapper_0_0_xpm_cdc_gray : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of design_1_I2S_wrapper_0_0_xpm_cdc_gray : entity is 1;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of design_1_I2S_wrapper_0_0_xpm_cdc_gray : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of design_1_I2S_wrapper_0_0_xpm_cdc_gray : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of design_1_I2S_wrapper_0_0_xpm_cdc_gray : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of design_1_I2S_wrapper_0_0_xpm_cdc_gray : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of design_1_I2S_wrapper_0_0_xpm_cdc_gray : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of design_1_I2S_wrapper_0_0_xpm_cdc_gray : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_I2S_wrapper_0_0_xpm_cdc_gray : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of design_1_I2S_wrapper_0_0_xpm_cdc_gray : entity is "GRAY";
end design_1_I2S_wrapper_0_0_xpm_cdc_gray;

architecture STRUCTURE of design_1_I2S_wrapper_0_0_xpm_cdc_gray is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair3";
begin
  dest_out_bin(3) <= \dest_graysync_ff[1]\(3);
  dest_out_bin(2 downto 0) <= \^dest_out_bin\(2 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \dest_graysync_ff[1]\(3),
      I3 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_I2S_wrapper_0_0_xpm_cdc_gray__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__2\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__2\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__2\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__2\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__2\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__2\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__2\ : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__2\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__2\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__2\ : entity is "GRAY";
end \design_1_I2S_wrapper_0_0_xpm_cdc_gray__2\;

architecture STRUCTURE of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__2\ is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair0";
begin
  dest_out_bin(3) <= \dest_graysync_ff[1]\(3);
  dest_out_bin(2 downto 0) <= \^dest_out_bin\(2 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \dest_graysync_ff[1]\(3),
      I3 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized0\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized0\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized0\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized0\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized0\ : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized0\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized0\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized0\ : entity is "GRAY";
end \design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized0\;

architecture STRUCTURE of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized0\ is
  signal async_path : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \dest_graysync_ff[2]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[2]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[2]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[2]\ : signal is "GRAY";
  signal \dest_graysync_ff[3]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[3]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[3]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[3]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][4]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair2";
begin
  dest_out_bin(4) <= \dest_graysync_ff[3]\(4);
  dest_out_bin(3 downto 0) <= \^dest_out_bin\(3 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(0),
      Q => \dest_graysync_ff[2]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(1),
      Q => \dest_graysync_ff[2]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(2),
      Q => \dest_graysync_ff[2]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => \dest_graysync_ff[2]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(4),
      Q => \dest_graysync_ff[2]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(0),
      Q => \dest_graysync_ff[3]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(1),
      Q => \dest_graysync_ff[3]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(2),
      Q => \dest_graysync_ff[3]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(3),
      Q => \dest_graysync_ff[3]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(4),
      Q => \dest_graysync_ff[3]\(4),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(0),
      I1 => \dest_graysync_ff[3]\(2),
      I2 => \dest_graysync_ff[3]\(4),
      I3 => \dest_graysync_ff[3]\(3),
      I4 => \dest_graysync_ff[3]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(1),
      I1 => \dest_graysync_ff[3]\(3),
      I2 => \dest_graysync_ff[3]\(4),
      I3 => \dest_graysync_ff[3]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(2),
      I1 => \dest_graysync_ff[3]\(4),
      I2 => \dest_graysync_ff[3]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(3),
      I1 => \dest_graysync_ff[3]\(4),
      O => \^dest_out_bin\(3)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(4),
      Q => async_path(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized1\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized1\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized1\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized1\ : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized1\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized1\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized1\ : entity is "GRAY";
end \design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized1\;

architecture STRUCTURE of \design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized1\ is
  signal async_path : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair5";
begin
  dest_out_bin(4) <= \dest_graysync_ff[1]\(4);
  dest_out_bin(3 downto 0) <= \^dest_out_bin\(3 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \dest_graysync_ff[1]\(4),
      I3 => \dest_graysync_ff[1]\(3),
      I4 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(4),
      I3 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(4),
      O => \^dest_out_bin\(3)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(4),
      Q => async_path(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst : entity is 2;
  attribute INIT : string;
  attribute INIT of design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst : entity is "SYNC_RST";
end design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst;

architecture STRUCTURE of design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst__3\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst__3\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst__3\ : entity is 2;
  attribute INIT : string;
  attribute INIT of \design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst__3\ : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst__3\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst__3\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst__3\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst__3\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst__3\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst__3\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst__3\ : entity is "SYNC_RST";
end \design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst__3\;

architecture STRUCTURE of \design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst__3\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst__4\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst__4\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst__4\ : entity is 2;
  attribute INIT : string;
  attribute INIT of \design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst__4\ : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst__4\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst__4\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst__4\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst__4\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst__4\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst__4\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst__4\ : entity is "SYNC_RST";
end \design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst__4\;

architecture STRUCTURE of \design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst__4\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_I2S_wrapper_0_0_xpm_counter_updn is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
end design_1_I2S_wrapper_0_0_xpm_counter_updn;

architecture STRUCTURE of design_1_I2S_wrapper_0_0_xpm_counter_updn is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \count_value_i[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_3_n_0\ : STD_LOGIC;
  signal \gen_fwft.count_en\ : STD_LOGIC;
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\count_value_i[0]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5AAAA655"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[1]_0\(1),
      I4 => ram_empty_i,
      O => \count_value_i[0]_i_1__4_n_0\
    );
\count_value_i[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C02F"
    )
        port map (
      I0 => \count_value_i_reg[1]_0\(0),
      I1 => rd_en,
      I2 => \count_value_i_reg[1]_0\(1),
      I3 => ram_empty_i,
      O => \gen_fwft.count_en\
    );
\count_value_i[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA6555AAAAAAA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[1]_0\(1),
      I4 => ram_empty_i,
      I5 => \^q\(0),
      O => \count_value_i[1]_i_3_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \gen_fwft.count_en\,
      D => \count_value_i[0]_i_1__4_n_0\,
      Q => \^q\(0),
      R => SR(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \gen_fwft.count_en\,
      D => \count_value_i[1]_i_3_n_0\,
      Q => \^q\(1),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized0\ is
  port (
    src_in_bin : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \src_gray_ff_reg[4]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized0\ : entity is "xpm_counter_updn";
end \design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized0\;

architecture STRUCTURE of \design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized0\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6\ : label is "soft_lutpair6";
begin
  E(0) <= \^e\(0);
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[0]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => \count_value_i_reg[0]_0\(1),
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__3_n_0\
    );
\count_value_i[1]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__4_n_0\
    );
\count_value_i[2]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__3_n_0\
    );
\count_value_i[3]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__3_n_0\
    );
\count_value_i[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \count_value_i_reg_n_0_[4]\,
      O => \count_value_i[4]_i_1__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[0]_i_1__3_n_0\,
      Q => \^q\(0),
      R => SR(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[1]_i_1__4_n_0\,
      Q => \^q\(1),
      R => SR(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[2]_i_1__3_n_0\,
      Q => \^q\(2),
      R => SR(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[3]_i_1__3_n_0\,
      Q => \^q\(3),
      R => SR(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[4]_i_1__0_n_0\,
      Q => \count_value_i_reg_n_0_[4]\,
      R => SR(0)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE71118"
    )
        port map (
      I0 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0\,
      I1 => \^q\(3),
      I2 => \src_gray_ff_reg[4]\(1),
      I3 => \src_gray_ff_reg[4]\(0),
      I4 => \count_value_i_reg_n_0_[4]\,
      O => src_in_bin(4)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FEFAFF07010500"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \src_gray_ff_reg[4]\(1),
      I4 => \src_gray_ff_reg[4]\(0),
      I5 => \^q\(3),
      O => src_in_bin(3)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8ECF7130"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \src_gray_ff_reg[4]\(1),
      I3 => \src_gray_ff_reg[4]\(0),
      I4 => \^q\(2),
      O => src_in_bin(2)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => \^q\(0),
      I1 => \src_gray_ff_reg[4]\(0),
      I2 => \src_gray_ff_reg[4]\(1),
      I3 => \^q\(1),
      O => src_in_bin(1)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \src_gray_ff_reg[4]\(0),
      O => src_in_bin(0)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE6E2E0"
    )
        port map (
      I0 => \src_gray_ff_reg[4]\(0),
      I1 => \src_gray_ff_reg[4]\(1),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0\
    );
\gen_sdpram.xpm_memory_base_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FD"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => ram_empty_i,
      O => \^e\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized0_1\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    wrst_busy : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized0_1\ : entity is "xpm_counter_updn";
end \design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized0_1\;

architecture STRUCTURE of \design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized0_1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \count_value_i[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1\ : label is "soft_lutpair11";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\count_value_i[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__1_n_0\
    );
\count_value_i[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__1_n_0\
    );
\count_value_i[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__1_n_0\
    );
\count_value_i[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__1_n_0\
    );
\count_value_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__1_n_0\,
      Q => \^q\(0),
      R => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__1_n_0\,
      Q => \^q\(1),
      R => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__1_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__1_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[4]_i_1_n_0\,
      Q => \^q\(4),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized1\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized1\ : entity is "xpm_counter_updn";
end \design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized1\;

architecture STRUCTURE of \design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__2\ : label is "soft_lutpair10";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => \count_value_i_reg[1]_0\(1),
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__2_n_0\
    );
\count_value_i[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[1]_0\(1),
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__3_n_0\
    );
\count_value_i[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__2_n_0\
    );
\count_value_i[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__2_n_0\,
      Q => \^q\(0),
      S => SR(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__3_n_0\,
      Q => \^q\(1),
      R => SR(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__2_n_0\,
      Q => \^q\(2),
      R => SR(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__2_n_0\,
      Q => \^q\(3),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized1_2\ is
  port (
    \count_value_i_reg[3]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wrst_busy : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized1_2\ : entity is "xpm_counter_updn";
end \design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized1_2\;

architecture STRUCTURE of \design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized1_2\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \count_value_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__0\ : label is "soft_lutpair13";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
\count_value_i[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__0_n_0\
    );
\count_value_i[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__0_n_0\
    );
\count_value_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__0_n_0\
    );
\count_value_i[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \count_value_i_reg_n_0_[3]\,
      O => \count_value_i[3]_i_1__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__0_n_0\,
      Q => \^q\(0),
      S => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__0_n_0\,
      Q => \^q\(1),
      R => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__0_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__0_n_0\,
      Q => \count_value_i_reg_n_0_[3]\,
      R => wrst_busy
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[3]\,
      I1 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\(0),
      O => \count_value_i_reg[3]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized2\ is
  port (
    \count_value_i_reg[3]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wrst_busy : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized2\ : entity is "xpm_counter_updn";
end \design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized2\;

architecture STRUCTURE of \design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized2\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1\ : label is "soft_lutpair14";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
\count_value_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1_n_0\
    );
\count_value_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \count_value_i_reg_n_0_[3]\,
      O => \count_value_i[3]_i_1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^q\(0),
      R => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^q\(1),
      S => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1_n_0\,
      Q => \count_value_i_reg_n_0_[3]\,
      R => wrst_busy
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[3]\,
      I1 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\(0),
      O => \count_value_i_reg[3]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_I2S_wrapper_0_0_xpm_fifo_reg_bit is
  port (
    rst_d1 : out STD_LOGIC;
    clr_full : out STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end design_1_I2S_wrapper_0_0_xpm_fifo_reg_bit;

architecture STRUCTURE of design_1_I2S_wrapper_0_0_xpm_fifo_reg_bit is
  signal \^rst_d1\ : STD_LOGIC;
begin
  rst_d1 <= \^rst_d1\;
d_out_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => wrst_busy,
      Q => \^rst_d1\,
      R => '0'
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rst,
      I1 => \^rst_d1\,
      I2 => wrst_busy,
      O => clr_full
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_I2S_wrapper_0_0_xpm_fifo_reg_vec is
  port (
    s_TValid_in : out STD_LOGIC;
    \syncstages_ff_reg[1]\ : out STD_LOGIC;
    \reg_out_i_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\ : in STD_LOGIC;
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0\ : in STD_LOGIC;
    clr_full : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_clk : in STD_LOGIC
  );
end design_1_I2S_wrapper_0_0_xpm_fifo_reg_vec;

architecture STRUCTURE of design_1_I2S_wrapper_0_0_xpm_fifo_reg_vec is
  signal \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5_n_0\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[0]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[1]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[2]\ : STD_LOGIC;
begin
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF808080"
    )
        port map (
      I0 => E(0),
      I1 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\,
      I2 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5_n_0\,
      I3 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_4_n_0\,
      I4 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0\,
      I5 => clr_full,
      O => s_TValid_in
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABFBFBFBFBFBFBF"
    )
        port map (
      I0 => clr_full,
      I1 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0\,
      I2 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_4_n_0\,
      I3 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5_n_0\,
      I4 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\,
      I5 => E(0),
      O => \syncstages_ff_reg[1]\
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reg_out_i_reg_n_0_[0]\,
      I1 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg\(0),
      I2 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg\(2),
      I3 => \reg_out_i_reg_n_0_[2]\,
      I4 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg\(1),
      I5 => \reg_out_i_reg_n_0_[1]\,
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_4_n_0\
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reg_out_i_reg_n_0_[0]\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => \reg_out_i_reg_n_0_[2]\,
      I4 => Q(1),
      I5 => \reg_out_i_reg_n_0_[1]\,
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5_n_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(0),
      Q => \reg_out_i_reg_n_0_[0]\,
      R => wrst_busy
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(1),
      Q => \reg_out_i_reg_n_0_[1]\,
      R => wrst_busy
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(2),
      Q => \reg_out_i_reg_n_0_[2]\,
      R => wrst_busy
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(3),
      Q => \reg_out_i_reg[3]_0\(0),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_I2S_wrapper_0_0_xpm_fifo_reg_vec_0 is
  port (
    ram_empty_i0 : out STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_pf_ic_rc.ram_empty_i_reg\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_I2S_wrapper_0_0_xpm_fifo_reg_vec_0 : entity is "xpm_fifo_reg_vec";
end design_1_I2S_wrapper_0_0_xpm_fifo_reg_vec_0;

architecture STRUCTURE of design_1_I2S_wrapper_0_0_xpm_fifo_reg_vec_0 is
  signal \gen_pf_ic_rc.ram_empty_i_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_3_n_0\ : STD_LOGIC;
  signal reg_out_i : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
\gen_pf_ic_rc.ram_empty_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8080802020FF20"
    )
        port map (
      I0 => E(0),
      I1 => Q(3),
      I2 => \gen_pf_ic_rc.ram_empty_i_i_2_n_0\,
      I3 => \gen_pf_ic_rc.ram_empty_i_i_3_n_0\,
      I4 => \gen_pf_ic_rc.ram_empty_i_reg\(3),
      I5 => reg_out_i(3),
      O => ram_empty_i0
    );
\gen_pf_ic_rc.ram_empty_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => reg_out_i(0),
      I1 => Q(0),
      I2 => Q(2),
      I3 => reg_out_i(2),
      I4 => Q(1),
      I5 => reg_out_i(1),
      O => \gen_pf_ic_rc.ram_empty_i_i_2_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => reg_out_i(0),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg\(0),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg\(2),
      I3 => reg_out_i(2),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg\(1),
      I5 => reg_out_i(1),
      O => \gen_pf_ic_rc.ram_empty_i_i_3_n_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(0),
      Q => reg_out_i(0),
      R => SR(0)
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(1),
      Q => reg_out_i(1),
      R => SR(0)
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(2),
      Q => reg_out_i(2),
      R => SR(0)
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(3),
      Q => reg_out_i(3),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_I2S_wrapper_0_0_xpm_memory_base is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 36 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 36 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 36 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 36 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 4;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 4;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 37;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 37;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 1;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is "[7:0]";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 592;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 16;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is "auto";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 37;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 37;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 37;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 37;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 37;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 4;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 4;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 4;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 4;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 37;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 37;
  attribute RAM_DECOMP : string;
  attribute RAM_DECOMP of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is "auto";
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 37;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 37;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is "";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 37;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 37;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 40;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of design_1_I2S_wrapper_0_0_xpm_memory_base : entity is 40;
end design_1_I2S_wrapper_0_0_xpm_memory_base;

architecture STRUCTURE of design_1_I2S_wrapper_0_0_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\ : STD_LOGIC_VECTOR ( 36 downto 0 );
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\ : STD_LOGIC_VECTOR ( 36 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13_DOH_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27_DOH_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_36_DOE_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_36_DOF_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_36_DOG_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_36_DOH_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute dram_emb_xdc : string;
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[0]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[10]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[11]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[12]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[13]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[14]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[15]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[16]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[17]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[18]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[19]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[1]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[20]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[21]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[22]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[23]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[24]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[26]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[27]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[28]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[29]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[2]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[30]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[31]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[32]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[33]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[34]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[35]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[36]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[3]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[4]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[5]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[6]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[7]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[8]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[9]\ : label is "no";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13\ : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13\ : label is 592;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13\ : label is "gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13\ : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13\ : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13\ : label is 13;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27\ : label is 592;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27\ : label is "gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27\ : label is 15;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27\ : label is 14;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27\ : label is 27;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_36\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_36\ : label is 592;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_36\ : label is "gen_wr_a.gen_word_narrow.mem_reg_0_15_28_36";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_36\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_36\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_36\ : label is 15;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_36\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_36\ : label is 28;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_36\ : label is 36;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  douta(36) <= \<const0>\;
  douta(35) <= \<const0>\;
  douta(34) <= \<const0>\;
  douta(33) <= \<const0>\;
  douta(32) <= \<const0>\;
  douta(31) <= \<const0>\;
  douta(30) <= \<const0>\;
  douta(29) <= \<const0>\;
  douta(28) <= \<const0>\;
  douta(27) <= \<const0>\;
  douta(26) <= \<const0>\;
  douta(25) <= \<const0>\;
  douta(24) <= \<const0>\;
  douta(23) <= \<const0>\;
  douta(22) <= \<const0>\;
  douta(21) <= \<const0>\;
  douta(20) <= \<const0>\;
  douta(19) <= \<const0>\;
  douta(18) <= \<const0>\;
  douta(17) <= \<const0>\;
  douta(16) <= \<const0>\;
  douta(15) <= \<const0>\;
  douta(14) <= \<const0>\;
  douta(13) <= \<const0>\;
  douta(12) <= \<const0>\;
  douta(11) <= \<const0>\;
  douta(10) <= \<const0>\;
  douta(9) <= \<const0>\;
  douta(8) <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(0),
      Q => doutb(0),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(10),
      Q => doutb(10),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(11),
      Q => doutb(11),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(12),
      Q => doutb(12),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(13),
      Q => doutb(13),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(14),
      Q => doutb(14),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(15),
      Q => doutb(15),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(16),
      Q => doutb(16),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(17),
      Q => doutb(17),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(18),
      Q => doutb(18),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(19),
      Q => doutb(19),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(1),
      Q => doutb(1),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(20),
      Q => doutb(20),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(21),
      Q => doutb(21),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(22),
      Q => doutb(22),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(23),
      Q => doutb(23),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(24),
      Q => doutb(24),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(25),
      Q => doutb(25),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(26),
      Q => doutb(26),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(27),
      Q => doutb(27),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(28),
      Q => doutb(28),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(29),
      Q => doutb(29),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(2),
      Q => doutb(2),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(30),
      Q => doutb(30),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(31),
      Q => doutb(31),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(32),
      Q => doutb(32),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(33),
      Q => doutb(33),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(34),
      Q => doutb(34),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(35),
      Q => doutb(35),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(36),
      Q => doutb(36),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(3),
      Q => doutb(3),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(4),
      Q => doutb(4),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(5),
      Q => doutb(5),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(6),
      Q => doutb(6),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(7),
      Q => doutb(7),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(8),
      Q => doutb(8),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(9),
      Q => doutb(9),
      R => rstb
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(0),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(0),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(10),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(10),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(11),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(11),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(12),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(12),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(13),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(13),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(14),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(14),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(15),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(15),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(16),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(16),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(17),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(17),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(18),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(18),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(19),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(19),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(1),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(1),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(20),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(20),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(21),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(21),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(22),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(22),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(23),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(23),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(24),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(24),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(25),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(25),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(26),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(26),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(27),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(27),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(28),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(28),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(29),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(29),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(2),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(2),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(30),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(30),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(31),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(31),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(32),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(32),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(33),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(33),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(34),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(34),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(35),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(35),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(36),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(36),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(3),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(3),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(4),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(4),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(5),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(5),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(6),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(6),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(7),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(7),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(8),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(8),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(9),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(9),
      R => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13\: unisim.vcomponents.RAM32M16
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addrb(3 downto 0),
      ADDRE(4) => '0',
      ADDRE(3 downto 0) => addrb(3 downto 0),
      ADDRF(4) => '0',
      ADDRF(3 downto 0) => addrb(3 downto 0),
      ADDRG(4) => '0',
      ADDRG(3 downto 0) => addrb(3 downto 0),
      ADDRH(4) => '0',
      ADDRH(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(1 downto 0),
      DIB(1 downto 0) => dina(3 downto 2),
      DIC(1 downto 0) => dina(5 downto 4),
      DID(1 downto 0) => dina(7 downto 6),
      DIE(1 downto 0) => dina(9 downto 8),
      DIF(1 downto 0) => dina(11 downto 10),
      DIG(1 downto 0) => dina(13 downto 12),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(1 downto 0),
      DOB(1 downto 0) => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(3 downto 2),
      DOC(1 downto 0) => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(5 downto 4),
      DOD(1 downto 0) => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(7 downto 6),
      DOE(1 downto 0) => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(9 downto 8),
      DOF(1 downto 0) => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(11 downto 10),
      DOG(1 downto 0) => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(13 downto 12),
      DOH(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13_DOH_UNCONNECTED\(1 downto 0),
      WCLK => clkb,
      WE => wea(0)
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27\: unisim.vcomponents.RAM32M16
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addrb(3 downto 0),
      ADDRE(4) => '0',
      ADDRE(3 downto 0) => addrb(3 downto 0),
      ADDRF(4) => '0',
      ADDRF(3 downto 0) => addrb(3 downto 0),
      ADDRG(4) => '0',
      ADDRG(3 downto 0) => addrb(3 downto 0),
      ADDRH(4) => '0',
      ADDRH(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(15 downto 14),
      DIB(1 downto 0) => dina(17 downto 16),
      DIC(1 downto 0) => dina(19 downto 18),
      DID(1 downto 0) => dina(21 downto 20),
      DIE(1 downto 0) => dina(23 downto 22),
      DIF(1 downto 0) => dina(25 downto 24),
      DIG(1 downto 0) => dina(27 downto 26),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(15 downto 14),
      DOB(1 downto 0) => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(17 downto 16),
      DOC(1 downto 0) => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(19 downto 18),
      DOD(1 downto 0) => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(21 downto 20),
      DOE(1 downto 0) => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(23 downto 22),
      DOF(1 downto 0) => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(25 downto 24),
      DOG(1 downto 0) => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(27 downto 26),
      DOH(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27_DOH_UNCONNECTED\(1 downto 0),
      WCLK => clkb,
      WE => wea(0)
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_28_36\: unisim.vcomponents.RAM32M16
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addrb(3 downto 0),
      ADDRE(4) => '0',
      ADDRE(3 downto 0) => addrb(3 downto 0),
      ADDRF(4) => '0',
      ADDRF(3 downto 0) => addrb(3 downto 0),
      ADDRG(4) => '0',
      ADDRG(3 downto 0) => addrb(3 downto 0),
      ADDRH(4) => '0',
      ADDRH(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(29 downto 28),
      DIB(1 downto 0) => dina(31 downto 30),
      DIC(1 downto 0) => dina(33 downto 32),
      DID(1 downto 0) => dina(35 downto 34),
      DIE(1) => '0',
      DIE(0) => dina(36),
      DIF(1 downto 0) => B"00",
      DIG(1 downto 0) => B"00",
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(29 downto 28),
      DOB(1 downto 0) => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(31 downto 30),
      DOC(1 downto 0) => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(33 downto 32),
      DOD(1 downto 0) => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(35 downto 34),
      DOE(1) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_36_DOE_UNCONNECTED\(1),
      DOE(0) => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(36),
      DOF(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_36_DOF_UNCONNECTED\(1 downto 0),
      DOG(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_36_DOG_UNCONNECTED\(1 downto 0),
      DOH(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_36_DOH_UNCONNECTED\(1 downto 0),
      WCLK => clkb,
      WE => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_I2S_wrapper_0_0_xpm_fifo_rst is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrst_busy : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_rst_ic.fifo_rd_rst_ic_reg_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[3]\ : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC
  );
end design_1_I2S_wrapper_0_0_xpm_fifo_rst;

architecture STRUCTURE of design_1_I2S_wrapper_0_0_xpm_fifo_rst is
  signal \/i__n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\ : signal is "yes";
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_rst_ic.curr_rrst_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP of \gen_rst_ic.curr_rrst_state\ : signal is "yes";
  signal \gen_rst_ic.fifo_rd_rst_i\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_rd_rst_wr_i\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_rd\ : STD_LOGIC;
  signal \gen_rst_ic.next_rrst_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_rst_ic.rst_seq_reentered_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.rst_seq_reentered_i_2_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.rst_seq_reentered_reg_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \power_on_rst_reg_n_0_[0]\ : STD_LOGIC;
  signal \rst_i__0\ : STD_LOGIC;
  signal \^wrst_busy\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\ : label is "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11";
  attribute KEEP of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\ : label is "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11";
  attribute KEEP of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_rst_ic.fifo_wr_rst_ic_i_2\ : label is "soft_lutpair15";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \gen_rst_ic.rrst_wr_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_rst_ic.rrst_wr_inst\ : label is 2;
  attribute INIT : string;
  attribute INIT of \gen_rst_ic.rrst_wr_inst\ : label is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gen_rst_ic.rrst_wr_inst\ : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \gen_rst_ic.rrst_wr_inst\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \gen_rst_ic.rrst_wr_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_rst_ic.rrst_wr_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \gen_rst_ic.rrst_wr_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \gen_rst_ic.rst_seq_reentered_i_1\ : label is "soft_lutpair15";
  attribute DEF_VAL of \gen_rst_ic.wrst_rd_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF of \gen_rst_ic.wrst_rd_inst\ : label is 2;
  attribute INIT of \gen_rst_ic.wrst_rd_inst\ : label is "0";
  attribute INIT_SYNC_FF of \gen_rst_ic.wrst_rd_inst\ : label is 1;
  attribute SIM_ASSERT_CHK of \gen_rst_ic.wrst_rd_inst\ : label is 0;
  attribute VERSION of \gen_rst_ic.wrst_rd_inst\ : label is 0;
  attribute XPM_CDC of \gen_rst_ic.wrst_rd_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \gen_rst_ic.wrst_rd_inst\ : label is "TRUE";
begin
  SR(0) <= \^sr\(0);
  wrst_busy <= \^wrst_busy\;
\/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \/i__n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03030200FFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => p_0_in,
      I2 => rst,
      I3 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I5 => \/i__n_0\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFEEE"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I3 => rst,
      I4 => p_0_in,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0EEE0FFFFEEE0"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => rst,
      I3 => p_0_in,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I5 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000C0008"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I1 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      I2 => rst,
      I3 => p_0_in,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004400000044"
    )
        port map (
      I0 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      I3 => rst,
      I4 => p_0_in,
      I5 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \/i__n_0\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => p_0_in,
      I2 => rst,
      I3 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gen_rst_ic.curr_rrst_state\(0),
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      O => \gen_rst_ic.next_rrst_state\(1)
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.next_rrst_state\(0),
      Q => \gen_rst_ic.curr_rrst_state\(0),
      R => '0'
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.next_rrst_state\(1),
      Q => \gen_rst_ic.curr_rrst_state\(1),
      R => '0'
    );
\__0/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \gen_rst_ic.fifo_wr_rst_rd\,
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      I2 => \gen_rst_ic.curr_rrst_state\(0),
      O => \gen_rst_ic.next_rrst_state\(0)
    );
\count_value_i[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAEAE"
    )
        port map (
      I0 => \^sr\(0),
      I1 => ram_empty_i,
      I2 => Q(1),
      I3 => rd_en,
      I4 => Q(0),
      O => \gen_rst_ic.fifo_rd_rst_ic_reg_0\(0)
    );
\gen_rst_ic.fifo_rd_rst_ic_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => \gen_rst_ic.fifo_wr_rst_rd\,
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      I2 => \gen_rst_ic.curr_rrst_state\(0),
      O => \gen_rst_ic.fifo_rd_rst_i\
    );
\gen_rst_ic.fifo_rd_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.fifo_rd_rst_i\,
      Q => \^sr\(0),
      R => '0'
    );
\gen_rst_ic.fifo_wr_rst_ic_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAFFFFFFEA0000"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I2 => \rst_i__0\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I4 => \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\,
      I5 => \gen_rst_ic.fifo_wr_rst_ic\,
      O => \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\
    );
\gen_rst_ic.fifo_wr_rst_ic_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in,
      I1 => rst,
      O => \rst_i__0\
    );
\gen_rst_ic.fifo_wr_rst_ic_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\
    );
\gen_rst_ic.fifo_wr_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\,
      Q => \gen_rst_ic.fifo_wr_rst_ic\,
      R => '0'
    );
\gen_rst_ic.rrst_wr_inst\: entity work.design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst
     port map (
      dest_clk => wr_clk,
      dest_rst => \gen_rst_ic.fifo_rd_rst_wr_i\,
      src_rst => \^sr\(0)
    );
\gen_rst_ic.rst_seq_reentered_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \gen_rst_ic.rst_seq_reentered_i_2_n_0\,
      I1 => rst,
      I2 => p_0_in,
      O => \gen_rst_ic.rst_seq_reentered_i_1_n_0\
    );
\gen_rst_ic.rst_seq_reentered_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010000"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I5 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      O => \gen_rst_ic.rst_seq_reentered_i_2_n_0\
    );
\gen_rst_ic.rst_seq_reentered_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.rst_seq_reentered_i_1_n_0\,
      Q => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      R => '0'
    );
\gen_rst_ic.wr_rst_busy_ic_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFEF00"
    )
        port map (
      I0 => rst,
      I1 => p_0_in,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I3 => \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\,
      I4 => \^wrst_busy\,
      O => \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\
    );
\gen_rst_ic.wr_rst_busy_ic_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\
    );
\gen_rst_ic.wr_rst_busy_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\,
      Q => \^wrst_busy\,
      R => '0'
    );
\gen_rst_ic.wrst_rd_inst\: entity work.\design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst__4\
     port map (
      dest_clk => rd_clk,
      dest_rst => \gen_rst_ic.fifo_wr_rst_rd\,
      src_rst => \gen_rst_ic.fifo_wr_rst_ic\
    );
\gen_sdpram.xpm_memory_base_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => wr_en,
      I1 => \count_value_i_reg[3]\,
      I2 => \^wrst_busy\,
      I3 => rst_d1,
      O => E(0)
    );
\power_on_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \power_on_rst_reg_n_0_[0]\,
      R => '0'
    );
\power_on_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \power_on_rst_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_I2S_wrapper_0_0_xpm_fifo_base is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 36 downto 0 );
    full : out STD_LOGIC;
    full_n : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 36 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 0;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is "";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is "16'b0001000000000000";
  attribute EN_AE : string;
  attribute EN_AE of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_PE : string;
  attribute EN_PE of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_PF : string;
  attribute EN_PF of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_RDC : string;
  attribute EN_RDC of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_UF : string;
  attribute EN_UF of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_WACK : string;
  attribute EN_WACK of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is "1'b0";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 0;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 0;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 16;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 592;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 16;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is "1'b1";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 3;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 11;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 9;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 11;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 7;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 5;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 11;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 5;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 5;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 4;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 37;
  attribute READ_MODE : integer;
  attribute READ_MODE of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 1;
  attribute USE_ADV_FEATURES : integer;
  attribute USE_ADV_FEATURES of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 825241648;
  attribute VERSION : integer;
  attribute VERSION of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 37;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 5;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 5;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 4;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 4;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 6;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 3;
  attribute invalid : integer;
  attribute invalid of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 0;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is "soft";
  attribute stage1_valid : integer;
  attribute stage1_valid of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of design_1_I2S_wrapper_0_0_xpm_fifo_base : entity is 1;
end design_1_I2S_wrapper_0_0_xpm_fifo_base;

architecture STRUCTURE of design_1_I2S_wrapper_0_0_xpm_fifo_base is
  signal \<const0>\ : STD_LOGIC;
  signal clr_full : STD_LOGIC;
  signal count_value_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data_valid_fwft1 : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_2\ : STD_LOGIC;
  signal \gen_fwft.count_rst\ : STD_LOGIC;
  signal \gen_fwft.empty_fwft_i_reg_n_0\ : STD_LOGIC;
  signal \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\ : STD_LOGIC;
  signal \gen_fwft.ram_regout_en\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_n_0\ : STD_LOGIC;
  signal \next_fwft_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ram_empty_i : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal ram_wr_en_i : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_pntr_wr_cdc : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rdp_inst_n_0 : STD_LOGIC;
  signal rdp_inst_n_1 : STD_LOGIC;
  signal rdp_inst_n_2 : STD_LOGIC;
  signal rdp_inst_n_3 : STD_LOGIC;
  signal rdp_inst_n_4 : STD_LOGIC;
  signal rdp_inst_n_9 : STD_LOGIC;
  signal rdpp1_inst_n_0 : STD_LOGIC;
  signal rdpp1_inst_n_1 : STD_LOGIC;
  signal rdpp1_inst_n_2 : STD_LOGIC;
  signal rdpp1_inst_n_3 : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal wr_pntr_rd_cdc : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal wrpp1_inst_n_0 : STD_LOGIC;
  signal wrpp1_inst_n_1 : STD_LOGIC;
  signal wrpp1_inst_n_2 : STD_LOGIC;
  signal wrpp1_inst_n_3 : STD_LOGIC;
  signal wrpp2_inst_n_0 : STD_LOGIC;
  signal wrpp2_inst_n_1 : STD_LOGIC;
  signal wrpp2_inst_n_2 : STD_LOGIC;
  signal wrpp2_inst_n_3 : STD_LOGIC;
  signal wrst_busy : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_0 : STD_LOGIC;
  signal \NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_dest_out_bin_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_cdc_pntr.wr_pntr_cdc_dc_inst_dest_out_bin_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 36 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\ : label is "soft_lutpair16";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 1;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 5;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 2;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 4;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 4;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 5;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 2;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 4;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \gen_fwft.gdvld_fwft.data_valid_fwft_i_1\ : label is "soft_lutpair17";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 37;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 37;
  attribute CASCADE_HEIGHT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of \gen_sdpram.xpm_memory_base_inst\ : label is "[7:0]";
  attribute ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute KEEP_HIERARCHY of \gen_sdpram.xpm_memory_base_inst\ : label is "soft";
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 592;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 16;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "auto";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 37;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 37;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 37;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 37;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 37;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 37;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 37;
  attribute RAM_DECOMP : string;
  attribute RAM_DECOMP of \gen_sdpram.xpm_memory_base_inst\ : label is "auto";
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 37;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 37;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute SIM_ASSERT_CHK of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute VERSION of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 37;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 37;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 40;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 40;
  attribute SOFT_HLUTNM of \gen_sdpram.xpm_memory_base_inst_i_3\ : label is "soft_lutpair17";
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  dbiterr <= \<const0>\;
  empty <= \<const0>\;
  full <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(4) <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(4) <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
  wr_rst_busy <= \<const0>\;
\FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A85"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => ram_empty_i,
      O => \next_fwft_state__0\(0)
    );
\FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3FF0"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => curr_fwft_state(0),
      O => \next_fwft_state__0\(1)
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \next_fwft_state__0\(0),
      Q => curr_fwft_state(0),
      R => xpm_fifo_rst_inst_n_0
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \next_fwft_state__0\(1),
      Q => curr_fwft_state(1),
      R => xpm_fifo_rst_inst_n_0
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst\: entity work.\design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized1\
     port map (
      dest_clk => wr_clk,
      dest_out_bin(4 downto 0) => \NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_dest_out_bin_UNCONNECTED\(4 downto 0),
      src_clk => rd_clk,
      src_in_bin(4) => rdp_inst_n_0,
      src_in_bin(3) => rdp_inst_n_1,
      src_in_bin(2) => rdp_inst_n_2,
      src_in_bin(1) => rdp_inst_n_3,
      src_in_bin(0) => rdp_inst_n_4
    );
\gen_cdc_pntr.rd_pntr_cdc_inst\: entity work.design_1_I2S_wrapper_0_0_xpm_cdc_gray
     port map (
      dest_clk => wr_clk,
      dest_out_bin(3 downto 0) => rd_pntr_wr_cdc(3 downto 0),
      src_clk => rd_clk,
      src_in_bin(3 downto 0) => rd_pntr_ext(3 downto 0)
    );
\gen_cdc_pntr.rpw_gray_reg\: entity work.design_1_I2S_wrapper_0_0_xpm_fifo_reg_vec
     port map (
      D(3 downto 0) => rd_pntr_wr_cdc(3 downto 0),
      E(0) => ram_wr_en_i,
      Q(2) => wrpp2_inst_n_1,
      Q(1) => wrpp2_inst_n_2,
      Q(0) => wrpp2_inst_n_3,
      clr_full => clr_full,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\ => wrpp2_inst_n_0,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0\ => wrpp1_inst_n_0,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg\(2) => wrpp1_inst_n_1,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg\(1) => wrpp1_inst_n_2,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg\(0) => wrpp1_inst_n_3,
      \reg_out_i_reg[3]_0\(0) => \gen_cdc_pntr.rpw_gray_reg_n_2\,
      s_TValid_in => \gen_cdc_pntr.rpw_gray_reg_n_0\,
      \syncstages_ff_reg[1]\ => \gen_cdc_pntr.rpw_gray_reg_n_1\,
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.wpr_gray_reg\: entity work.design_1_I2S_wrapper_0_0_xpm_fifo_reg_vec_0
     port map (
      D(3 downto 0) => wr_pntr_rd_cdc(3 downto 0),
      E(0) => rdp_inst_n_9,
      Q(3) => rdpp1_inst_n_0,
      Q(2) => rdpp1_inst_n_1,
      Q(1) => rdpp1_inst_n_2,
      Q(0) => rdpp1_inst_n_3,
      SR(0) => xpm_fifo_rst_inst_n_0,
      \gen_pf_ic_rc.ram_empty_i_reg\(3 downto 0) => rd_pntr_ext(3 downto 0),
      ram_empty_i0 => ram_empty_i0,
      rd_clk => rd_clk
    );
\gen_cdc_pntr.wr_pntr_cdc_dc_inst\: entity work.\design_1_I2S_wrapper_0_0_xpm_cdc_gray__parameterized0\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(4 downto 0) => \NLW_gen_cdc_pntr.wr_pntr_cdc_dc_inst_dest_out_bin_UNCONNECTED\(4 downto 0),
      src_clk => wr_clk,
      src_in_bin(4 downto 0) => wr_pntr_ext(4 downto 0)
    );
\gen_cdc_pntr.wr_pntr_cdc_inst\: entity work.\design_1_I2S_wrapper_0_0_xpm_cdc_gray__2\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(3 downto 0) => wr_pntr_rd_cdc(3 downto 0),
      src_clk => wr_clk,
      src_in_bin(3 downto 0) => wr_pntr_ext(3 downto 0)
    );
\gen_fwft.empty_fwft_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F380"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => \gen_fwft.empty_fwft_i_reg_n_0\,
      O => data_valid_fwft1
    );
\gen_fwft.empty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => data_valid_fwft1,
      Q => \gen_fwft.empty_fwft_i_reg_n_0\,
      S => xpm_fifo_rst_inst_n_0
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3575"
    )
        port map (
      I0 => \gen_fwft.empty_fwft_i_reg_n_0\,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => rd_en,
      O => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\,
      Q => data_valid,
      R => xpm_fifo_rst_inst_n_0
    );
\gen_fwft.rdpp1_inst\: entity work.design_1_I2S_wrapper_0_0_xpm_counter_updn
     port map (
      Q(1 downto 0) => count_value_i(1 downto 0),
      SR(0) => \gen_fwft.count_rst\,
      \count_value_i_reg[1]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_cdc_pntr.rpw_gray_reg_n_0\,
      Q => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_n_0\,
      S => wrst_busy
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_cdc_pntr.rpw_gray_reg_n_1\,
      Q => full_n,
      R => wrst_busy
    );
\gen_pf_ic_rc.ram_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_i,
      S => xpm_fifo_rst_inst_n_0
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.design_1_I2S_wrapper_0_0_xpm_memory_base
     port map (
      addra(3 downto 0) => wr_pntr_ext(3 downto 0),
      addrb(3 downto 0) => rd_pntr_ext(3 downto 0),
      clka => '0',
      clkb => rd_clk,
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\,
      dina(36 downto 0) => din(36 downto 0),
      dinb(36 downto 0) => B"0000000000000000000000000000000000000",
      douta(36 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(36 downto 0),
      doutb(36 downto 0) => dout(36 downto 0),
      ena => '0',
      enb => rdp_inst_n_9,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => \gen_fwft.ram_regout_en\,
      rsta => '0',
      rstb => xpm_fifo_rst_inst_n_0,
      sbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\,
      sleep => sleep,
      wea(0) => ram_wr_en_i,
      web(0) => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => curr_fwft_state(1),
      I2 => rd_en,
      O => \gen_fwft.ram_regout_en\
    );
rdp_inst: entity work.\design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized0\
     port map (
      E(0) => rdp_inst_n_9,
      Q(3 downto 0) => rd_pntr_ext(3 downto 0),
      SR(0) => xpm_fifo_rst_inst_n_0,
      \count_value_i_reg[0]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en,
      \src_gray_ff_reg[4]\(1 downto 0) => count_value_i(1 downto 0),
      src_in_bin(4) => rdp_inst_n_0,
      src_in_bin(3) => rdp_inst_n_1,
      src_in_bin(2) => rdp_inst_n_2,
      src_in_bin(1) => rdp_inst_n_3,
      src_in_bin(0) => rdp_inst_n_4
    );
rdpp1_inst: entity work.\design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized1\
     port map (
      E(0) => rdp_inst_n_9,
      Q(3) => rdpp1_inst_n_0,
      Q(2) => rdpp1_inst_n_1,
      Q(1) => rdpp1_inst_n_2,
      Q(0) => rdpp1_inst_n_3,
      SR(0) => xpm_fifo_rst_inst_n_0,
      \count_value_i_reg[1]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      rd_clk => rd_clk,
      rd_en => rd_en
    );
rst_d1_inst: entity work.design_1_I2S_wrapper_0_0_xpm_fifo_reg_bit
     port map (
      clr_full => clr_full,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
wrp_inst: entity work.\design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized0_1\
     port map (
      E(0) => ram_wr_en_i,
      Q(4 downto 0) => wr_pntr_ext(4 downto 0),
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
wrpp1_inst: entity work.\design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized1_2\
     port map (
      E(0) => ram_wr_en_i,
      Q(2) => wrpp1_inst_n_1,
      Q(1) => wrpp1_inst_n_2,
      Q(0) => wrpp1_inst_n_3,
      \count_value_i_reg[3]_0\ => wrpp1_inst_n_0,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\(0) => \gen_cdc_pntr.rpw_gray_reg_n_2\,
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
wrpp2_inst: entity work.\design_1_I2S_wrapper_0_0_xpm_counter_updn__parameterized2\
     port map (
      E(0) => ram_wr_en_i,
      Q(2) => wrpp2_inst_n_1,
      Q(1) => wrpp2_inst_n_2,
      Q(0) => wrpp2_inst_n_3,
      \count_value_i_reg[3]_0\ => wrpp2_inst_n_0,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\(0) => \gen_cdc_pntr.rpw_gray_reg_n_2\,
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
xpm_fifo_rst_inst: entity work.design_1_I2S_wrapper_0_0_xpm_fifo_rst
     port map (
      E(0) => ram_wr_en_i,
      Q(1 downto 0) => curr_fwft_state(1 downto 0),
      SR(0) => xpm_fifo_rst_inst_n_0,
      \count_value_i_reg[3]\ => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_n_0\,
      \gen_rst_ic.fifo_rd_rst_ic_reg_0\(0) => \gen_fwft.count_rst\,
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wrst_busy => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_I2S_wrapper_0_0_xpm_fifo_axis is
  port (
    s_aresetn : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    prog_full_axis : out STD_LOGIC;
    wr_data_count_axis : out STD_LOGIC_VECTOR ( 4 downto 0 );
    almost_full_axis : out STD_LOGIC;
    prog_empty_axis : out STD_LOGIC;
    rd_data_count_axis : out STD_LOGIC_VECTOR ( 4 downto 0 );
    almost_empty_axis : out STD_LOGIC;
    injectsbiterr_axis : in STD_LOGIC;
    injectdbiterr_axis : in STD_LOGIC;
    sbiterr_axis : out STD_LOGIC;
    dbiterr_axis : out STD_LOGIC
  );
  attribute AXIS_DATA_WIDTH : integer;
  attribute AXIS_DATA_WIDTH of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is 37;
  attribute AXIS_FINAL_DATA_WIDTH : integer;
  attribute AXIS_FINAL_DATA_WIDTH of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is 37;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is 2;
  attribute CLOCKING_MODE : string;
  attribute CLOCKING_MODE of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is "independent_clock";
  attribute ECC_MODE : string;
  attribute ECC_MODE of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is "no_ecc";
  attribute EN_ADV_FEATURE_AXIS : string;
  attribute EN_ADV_FEATURE_AXIS of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is "16'b0001000000000000";
  attribute EN_ADV_FEATURE_AXIS_INT : string;
  attribute EN_ADV_FEATURE_AXIS_INT of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is "16'b0001000000000000";
  attribute EN_ALMOST_EMPTY_INT : string;
  attribute EN_ALMOST_EMPTY_INT of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is "1'b0";
  attribute EN_ALMOST_FULL_INT : string;
  attribute EN_ALMOST_FULL_INT of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is "1'b0";
  attribute EN_DATA_VALID_INT : string;
  attribute EN_DATA_VALID_INT of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is "1'b1";
  attribute FIFO_DEPTH : integer;
  attribute FIFO_DEPTH of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is 16;
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is "auto";
  attribute LOG_DEPTH_AXIS : integer;
  attribute LOG_DEPTH_AXIS of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is 4;
  attribute PACKET_FIFO : string;
  attribute PACKET_FIFO of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is "false";
  attribute PKT_SIZE_LT8 : string;
  attribute PKT_SIZE_LT8 of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is "1'b0";
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is 5;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is 11;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is 0;
  attribute P_PKT_MODE : integer;
  attribute P_PKT_MODE of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is 0;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is 5;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is 1;
  attribute TDATA_OFFSET : integer;
  attribute TDATA_OFFSET of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is 24;
  attribute TDATA_WIDTH : integer;
  attribute TDATA_WIDTH of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is 24;
  attribute TDEST_OFFSET : integer;
  attribute TDEST_OFFSET of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is 35;
  attribute TDEST_WIDTH : integer;
  attribute TDEST_WIDTH of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is 1;
  attribute TID_OFFSET : integer;
  attribute TID_OFFSET of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is 34;
  attribute TID_WIDTH : integer;
  attribute TID_WIDTH of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is 4;
  attribute TKEEP_OFFSET : integer;
  attribute TKEEP_OFFSET of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is 30;
  attribute TSTRB_OFFSET : integer;
  attribute TSTRB_OFFSET of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is 27;
  attribute TUSER_MAX_WIDTH : integer;
  attribute TUSER_MAX_WIDTH of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is 4060;
  attribute TUSER_OFFSET : integer;
  attribute TUSER_OFFSET of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is 36;
  attribute TUSER_WIDTH : integer;
  attribute TUSER_WIDTH of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is 1;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is "1000";
  attribute USE_ADV_FEATURES_INT : integer;
  attribute USE_ADV_FEATURES_INT of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is 825241648;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is "TRUE";
  attribute dont_touch : string;
  attribute dont_touch of design_1_I2S_wrapper_0_0_xpm_fifo_axis : entity is "true";
end design_1_I2S_wrapper_0_0_xpm_fifo_axis;

architecture STRUCTURE of design_1_I2S_wrapper_0_0_xpm_fifo_axis is
  signal \<const0>\ : STD_LOGIC;
  signal \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal rst_axis : STD_LOGIC;
  signal xpm_fifo_base_inst_i_1_n_0 : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 2;
  attribute INIT : string;
  attribute INIT of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 1;
  attribute SIM_ASSERT_CHK of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "TRUE";
  attribute CASCADE_HEIGHT of xpm_fifo_base_inst : label is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of xpm_fifo_base_inst : label is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of xpm_fifo_base_inst : label is 0;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of xpm_fifo_base_inst : label is "";
  attribute ECC_MODE_integer : integer;
  attribute ECC_MODE_integer of xpm_fifo_base_inst : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of xpm_fifo_base_inst : label is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of xpm_fifo_base_inst : label is "16'b0001000000000000";
  attribute EN_AE : string;
  attribute EN_AE of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_PE : string;
  attribute EN_PE of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_PF : string;
  attribute EN_PF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_RDC : string;
  attribute EN_RDC of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_UF : string;
  attribute EN_UF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_WACK : string;
  attribute EN_WACK of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of xpm_fifo_base_inst : label is "1'b0";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of xpm_fifo_base_inst : label is "1'b0";
  attribute FIFO_MEMORY_TYPE_integer : integer;
  attribute FIFO_MEMORY_TYPE_integer of xpm_fifo_base_inst : label is 0;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of xpm_fifo_base_inst : label is 0;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of xpm_fifo_base_inst : label is 16;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of xpm_fifo_base_inst : label is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of xpm_fifo_base_inst : label is 592;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of xpm_fifo_base_inst : label is 16;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of xpm_fifo_base_inst : label is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of xpm_fifo_base_inst : label is "1'b1";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of xpm_fifo_base_inst : label is "soft";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of xpm_fifo_base_inst : label is 3;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of xpm_fifo_base_inst : label is 11;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of xpm_fifo_base_inst : label is 9;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of xpm_fifo_base_inst : label is 11;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of xpm_fifo_base_inst : label is 7;
  attribute PROG_EMPTY_THRESH of xpm_fifo_base_inst : label is 5;
  attribute PROG_FULL_THRESH of xpm_fifo_base_inst : label is 11;
  attribute RD_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 5;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 5;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of xpm_fifo_base_inst : label is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of xpm_fifo_base_inst : label is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of xpm_fifo_base_inst : label is 4;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of xpm_fifo_base_inst : label is 37;
  attribute READ_MODE : integer;
  attribute READ_MODE of xpm_fifo_base_inst : label is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of xpm_fifo_base_inst : label is 1;
  attribute RELATED_CLOCKS of xpm_fifo_base_inst : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of xpm_fifo_base_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_fifo_base_inst : label is 1;
  attribute USE_ADV_FEATURES_integer : integer;
  attribute USE_ADV_FEATURES_integer of xpm_fifo_base_inst : label is 825241648;
  attribute VERSION of xpm_fifo_base_inst : label is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of xpm_fifo_base_inst : label is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of xpm_fifo_base_inst : label is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of xpm_fifo_base_inst : label is 37;
  attribute WR_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 5;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 5;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of xpm_fifo_base_inst : label is 4;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of xpm_fifo_base_inst : label is 4;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of xpm_fifo_base_inst : label is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of xpm_fifo_base_inst : label is 6;
  attribute XPM_MODULE of xpm_fifo_base_inst : label is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of xpm_fifo_base_inst : label is 3;
  attribute invalid : integer;
  attribute invalid of xpm_fifo_base_inst : label is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of xpm_fifo_base_inst : label is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of xpm_fifo_base_inst : label is 1;
begin
  almost_empty_axis <= \<const0>\;
  almost_full_axis <= \<const0>\;
  dbiterr_axis <= \<const0>\;
  m_axis_tvalid <= \^m_axis_tvalid\;
  prog_empty_axis <= \<const0>\;
  prog_full_axis <= \<const0>\;
  rd_data_count_axis(4) <= \<const0>\;
  rd_data_count_axis(3) <= \<const0>\;
  rd_data_count_axis(2) <= \<const0>\;
  rd_data_count_axis(1) <= \<const0>\;
  rd_data_count_axis(0) <= \<const0>\;
  sbiterr_axis <= \<const0>\;
  wr_data_count_axis(4) <= \<const0>\;
  wr_data_count_axis(3) <= \<const0>\;
  wr_data_count_axis(2) <= \<const0>\;
  wr_data_count_axis(1) <= \<const0>\;
  wr_data_count_axis(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gaxis_rst_sync.xpm_cdc_sync_rst_inst\: entity work.\design_1_I2S_wrapper_0_0_xpm_cdc_sync_rst__3\
     port map (
      dest_clk => s_aclk,
      dest_rst => rst_axis,
      src_rst => \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0\
    );
\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_aresetn,
      O => \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0\
    );
xpm_fifo_base_inst: entity work.design_1_I2S_wrapper_0_0_xpm_fifo_base
     port map (
      almost_empty => NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED,
      almost_full => NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED,
      data_valid => \^m_axis_tvalid\,
      dbiterr => NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED,
      din(36) => s_axis_tlast,
      din(35) => s_axis_tuser(0),
      din(34) => s_axis_tdest(0),
      din(33 downto 30) => s_axis_tid(3 downto 0),
      din(29 downto 27) => s_axis_tkeep(2 downto 0),
      din(26 downto 24) => s_axis_tstrb(2 downto 0),
      din(23 downto 0) => s_axis_tdata(23 downto 0),
      dout(36) => m_axis_tlast,
      dout(35) => m_axis_tuser(0),
      dout(34) => m_axis_tdest(0),
      dout(33 downto 30) => m_axis_tid(3 downto 0),
      dout(29 downto 27) => m_axis_tkeep(2 downto 0),
      dout(26 downto 24) => m_axis_tstrb(2 downto 0),
      dout(23 downto 0) => m_axis_tdata(23 downto 0),
      empty => NLW_xpm_fifo_base_inst_empty_UNCONNECTED,
      full => NLW_xpm_fifo_base_inst_full_UNCONNECTED,
      full_n => s_axis_tready,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => NLW_xpm_fifo_base_inst_overflow_UNCONNECTED,
      prog_empty => NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED,
      prog_full => NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED,
      rd_clk => m_aclk,
      rd_data_count(4 downto 0) => NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED(4 downto 0),
      rd_en => xpm_fifo_base_inst_i_1_n_0,
      rd_rst_busy => NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED,
      rst => rst_axis,
      sbiterr => NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED,
      sleep => '0',
      underflow => NLW_xpm_fifo_base_inst_underflow_UNCONNECTED,
      wr_ack => NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED,
      wr_clk => s_aclk,
      wr_data_count(4 downto 0) => NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED(4 downto 0),
      wr_en => s_axis_tvalid,
      wr_rst_busy => NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED
    );
xpm_fifo_base_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axis_tvalid\,
      I1 => m_axis_tready,
      O => xpm_fifo_base_inst_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_I2S_wrapper_0_0_audio_fifo is
  port (
    clk_in : in STD_LOGIC;
    clk_out : in STD_LOGIC;
    \axi_in_fwd[TValid]\ : in STD_LOGIC;
    \axi_in_fwd[TLast]\ : in STD_LOGIC;
    \axi_in_fwd[TData]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \axi_in_fwd[TID]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axi_in_bwd[TReady]\ : out STD_LOGIC;
    \axi_out_fwd[TValid]\ : out STD_LOGIC;
    \axi_out_fwd[TLast]\ : out STD_LOGIC;
    \axi_out_fwd[TData]\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \axi_out_fwd[TID]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \axi_out_bwd[TReady]\ : in STD_LOGIC
  );
  attribute g_fifo_depth : integer;
  attribute g_fifo_depth of design_1_I2S_wrapper_0_0_audio_fifo : entity is 16;
end design_1_I2S_wrapper_0_0_audio_fifo;

architecture STRUCTURE of design_1_I2S_wrapper_0_0_audio_fifo is
  signal \<const0>\ : STD_LOGIC;
  signal xpm_fifo_axis_inst_n_32 : STD_LOGIC;
  signal NLW_xpm_fifo_axis_inst_almost_empty_axis_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_axis_inst_almost_full_axis_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_axis_inst_dbiterr_axis_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_axis_inst_prog_empty_axis_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_axis_inst_prog_full_axis_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_axis_inst_sbiterr_axis_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_axis_inst_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xpm_fifo_axis_inst_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_xpm_fifo_axis_inst_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_xpm_fifo_axis_inst_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xpm_fifo_axis_inst_rd_data_count_axis_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_xpm_fifo_axis_inst_wr_data_count_axis_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute AXIS_DATA_WIDTH : integer;
  attribute AXIS_DATA_WIDTH of xpm_fifo_axis_inst : label is 37;
  attribute AXIS_FINAL_DATA_WIDTH : integer;
  attribute AXIS_FINAL_DATA_WIDTH of xpm_fifo_axis_inst : label is 37;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of xpm_fifo_axis_inst : label is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of xpm_fifo_axis_inst : label is 2;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of xpm_fifo_axis_inst : label is 0;
  attribute ECC_MODE : integer;
  attribute ECC_MODE of xpm_fifo_axis_inst : label is 0;
  attribute EN_ADV_FEATURE_AXIS : string;
  attribute EN_ADV_FEATURE_AXIS of xpm_fifo_axis_inst : label is "16'b0001000000000000";
  attribute EN_ADV_FEATURE_AXIS_INT : string;
  attribute EN_ADV_FEATURE_AXIS_INT of xpm_fifo_axis_inst : label is "16'b0001000000000000";
  attribute EN_ALMOST_EMPTY_INT : string;
  attribute EN_ALMOST_EMPTY_INT of xpm_fifo_axis_inst : label is "1'b0";
  attribute EN_ALMOST_FULL_INT : string;
  attribute EN_ALMOST_FULL_INT of xpm_fifo_axis_inst : label is "1'b0";
  attribute EN_DATA_VALID_INT : string;
  attribute EN_DATA_VALID_INT of xpm_fifo_axis_inst : label is "1'b1";
  attribute FIFO_DEPTH : integer;
  attribute FIFO_DEPTH of xpm_fifo_axis_inst : label is 16;
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of xpm_fifo_axis_inst : label is 0;
  attribute LOG_DEPTH_AXIS : integer;
  attribute LOG_DEPTH_AXIS of xpm_fifo_axis_inst : label is 4;
  attribute PACKET_FIFO : string;
  attribute PACKET_FIFO of xpm_fifo_axis_inst : label is "false";
  attribute PKT_SIZE_LT8 : string;
  attribute PKT_SIZE_LT8 of xpm_fifo_axis_inst : label is "1'b0";
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of xpm_fifo_axis_inst : label is 5;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of xpm_fifo_axis_inst : label is 11;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of xpm_fifo_axis_inst : label is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of xpm_fifo_axis_inst : label is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of xpm_fifo_axis_inst : label is 0;
  attribute P_PKT_MODE : integer;
  attribute P_PKT_MODE of xpm_fifo_axis_inst : label is 0;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of xpm_fifo_axis_inst : label is 5;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of xpm_fifo_axis_inst : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of xpm_fifo_axis_inst : label is 1;
  attribute TDATA_OFFSET : integer;
  attribute TDATA_OFFSET of xpm_fifo_axis_inst : label is 24;
  attribute TDATA_WIDTH : integer;
  attribute TDATA_WIDTH of xpm_fifo_axis_inst : label is 24;
  attribute TDEST_OFFSET : integer;
  attribute TDEST_OFFSET of xpm_fifo_axis_inst : label is 35;
  attribute TDEST_WIDTH : integer;
  attribute TDEST_WIDTH of xpm_fifo_axis_inst : label is 1;
  attribute TID_OFFSET : integer;
  attribute TID_OFFSET of xpm_fifo_axis_inst : label is 34;
  attribute TID_WIDTH : integer;
  attribute TID_WIDTH of xpm_fifo_axis_inst : label is 4;
  attribute TKEEP_OFFSET : integer;
  attribute TKEEP_OFFSET of xpm_fifo_axis_inst : label is 30;
  attribute TSTRB_OFFSET : integer;
  attribute TSTRB_OFFSET of xpm_fifo_axis_inst : label is 27;
  attribute TUSER_MAX_WIDTH : integer;
  attribute TUSER_MAX_WIDTH of xpm_fifo_axis_inst : label is 4060;
  attribute TUSER_OFFSET : integer;
  attribute TUSER_OFFSET of xpm_fifo_axis_inst : label is 36;
  attribute TUSER_WIDTH : integer;
  attribute TUSER_WIDTH of xpm_fifo_axis_inst : label is 1;
  attribute USE_ADV_FEATURES : integer;
  attribute USE_ADV_FEATURES of xpm_fifo_axis_inst : label is 1000;
  attribute USE_ADV_FEATURES_INT : integer;
  attribute USE_ADV_FEATURES_INT of xpm_fifo_axis_inst : label is 825241648;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of xpm_fifo_axis_inst : label is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xpm_fifo_axis_inst : label is "TRUE";
begin
  \axi_out_fwd[TLast]\ <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
xpm_fifo_axis_inst: entity work.design_1_I2S_wrapper_0_0_xpm_fifo_axis
     port map (
      almost_empty_axis => NLW_xpm_fifo_axis_inst_almost_empty_axis_UNCONNECTED,
      almost_full_axis => NLW_xpm_fifo_axis_inst_almost_full_axis_UNCONNECTED,
      dbiterr_axis => NLW_xpm_fifo_axis_inst_dbiterr_axis_UNCONNECTED,
      injectdbiterr_axis => '0',
      injectsbiterr_axis => '0',
      m_aclk => clk_in,
      m_axis_tdata(23 downto 0) => \axi_out_fwd[TData]\(23 downto 0),
      m_axis_tdest(0) => NLW_xpm_fifo_axis_inst_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(3 downto 0) => \axi_out_fwd[TID]\(3 downto 0),
      m_axis_tkeep(2 downto 0) => NLW_xpm_fifo_axis_inst_m_axis_tkeep_UNCONNECTED(2 downto 0),
      m_axis_tlast => xpm_fifo_axis_inst_n_32,
      m_axis_tready => \axi_out_bwd[TReady]\,
      m_axis_tstrb(2 downto 0) => NLW_xpm_fifo_axis_inst_m_axis_tstrb_UNCONNECTED(2 downto 0),
      m_axis_tuser(0) => NLW_xpm_fifo_axis_inst_m_axis_tuser_UNCONNECTED(0),
      m_axis_tvalid => \axi_out_fwd[TValid]\,
      prog_empty_axis => NLW_xpm_fifo_axis_inst_prog_empty_axis_UNCONNECTED,
      prog_full_axis => NLW_xpm_fifo_axis_inst_prog_full_axis_UNCONNECTED,
      rd_data_count_axis(4 downto 0) => NLW_xpm_fifo_axis_inst_rd_data_count_axis_UNCONNECTED(4 downto 0),
      s_aclk => clk_in,
      s_aresetn => '1',
      s_axis_tdata(23 downto 0) => \axi_in_fwd[TData]\(23 downto 0),
      s_axis_tdest(0) => '0',
      s_axis_tid(3 downto 0) => \axi_in_fwd[TID]\(3 downto 0),
      s_axis_tkeep(2 downto 0) => B"111",
      s_axis_tlast => \axi_in_fwd[TLast]\,
      s_axis_tready => \axi_in_bwd[TReady]\,
      s_axis_tstrb(2 downto 0) => B"000",
      s_axis_tuser(0) => '0',
      s_axis_tvalid => \axi_in_fwd[TValid]\,
      sbiterr_axis => NLW_xpm_fifo_axis_inst_sbiterr_axis_UNCONNECTED,
      wr_data_count_axis(4 downto 0) => NLW_xpm_fifo_axis_inst_wr_data_count_axis_UNCONNECTED(4 downto 0)
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
  signal \trans_bwd_in[TReady]\ : STD_LOGIC;
  signal \trans_fwd_in[TData]\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \trans_fwd_in[TID]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \trans_fwd_in[TValid]\ : STD_LOGIC;
  signal \NLW_I2S_rec_inst_axi_out_fwd[TLast]_UNCONNECTED\ : STD_LOGIC;
  signal NLW_I2S_rec_inst_lrclk_UNCONNECTED : STD_LOGIC;
  signal NLW_I2S_rec_inst_mclk_UNCONNECTED : STD_LOGIC;
  signal NLW_I2S_rec_inst_sclk_UNCONNECTED : STD_LOGIC;
  signal \NLW_I2S_rec_inst_axi_out_fwd[TID]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_I2S_trans_inst_lrclk_UNCONNECTED : STD_LOGIC;
  signal NLW_I2S_trans_inst_mclk_UNCONNECTED : STD_LOGIC;
  signal NLW_I2S_trans_inst_sclk_UNCONNECTED : STD_LOGIC;
  signal \NLW_audio_fifo_inst_axi_out_fwd[TLast]_UNCONNECTED\ : STD_LOGIC;
  attribute KEEP_HIERARCHY of I2S_clock_gen_inst : label is "soft";
  attribute g_chip_scope of I2S_clock_gen_inst : label is "True";
  attribute g_clock_div_lrclk of I2S_clock_gen_inst : label is 64;
  attribute g_clock_div_sclk of I2S_clock_gen_inst : label is 4;
  attribute KEEP_HIERARCHY of I2S_rec_inst : label is "soft";
  attribute g_channel_offset : string;
  attribute g_channel_offset of I2S_rec_inst : label is "4'b0000";
  attribute g_chip_scope of I2S_rec_inst : label is "true";
  attribute g_clock_div_lrclk of I2S_rec_inst : label is 64;
  attribute g_clock_div_sclk of I2S_rec_inst : label is 4;
  attribute KEEP_HIERARCHY of I2S_trans_inst : label is "soft";
  attribute g_channel_offset of I2S_trans_inst : label is "4'b0000";
  attribute g_chip_scope of I2S_trans_inst : label is "True";
  attribute g_clock_div_lrclk of I2S_trans_inst : label is 64;
  attribute g_clock_div_sclk of I2S_trans_inst : label is 4;
  attribute KEEP_HIERARCHY of audio_fifo_inst : label is "soft";
  attribute g_fifo_depth : integer;
  attribute g_fifo_depth of audio_fifo_inst : label is 16;
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
      \axi_in_bwd[TReady]\ => \trans_bwd_in[TReady]\,
      \axi_in_fwd[TData]\(23 downto 0) => \trans_fwd_in[TData]\(23 downto 0),
      \axi_in_fwd[TID]\(3 downto 0) => \trans_fwd_in[TID]\(3 downto 0),
      \axi_in_fwd[TLast]\ => '0',
      \axi_in_fwd[TValid]\ => \trans_fwd_in[TValid]\,
      data_out => do_i,
      lrclk => NLW_I2S_trans_inst_lrclk_UNCONNECTED,
      m_clk => m_clk,
      m_rst => m_rst,
      mclk => NLW_I2S_trans_inst_mclk_UNCONNECTED,
      sclk => NLW_I2S_trans_inst_sclk_UNCONNECTED
    );
audio_fifo_inst: entity work.design_1_I2S_wrapper_0_0_audio_fifo
     port map (
      \axi_in_bwd[TReady]\ => \axi_bwd_in[TReady]\,
      \axi_in_fwd[TData]\(23 downto 0) => \axi_fwd_in[TData]\(23 downto 0),
      \axi_in_fwd[TID]\(3 downto 0) => \axi_fwd_in[TID]\(3 downto 0),
      \axi_in_fwd[TLast]\ => \axi_fwd_in[TLast]\,
      \axi_in_fwd[TValid]\ => \axi_fwd_in[TValid]\,
      \axi_out_bwd[TReady]\ => \trans_bwd_in[TReady]\,
      \axi_out_fwd[TData]\(23 downto 0) => \trans_fwd_in[TData]\(23 downto 0),
      \axi_out_fwd[TID]\(3 downto 0) => \trans_fwd_in[TID]\(3 downto 0),
      \axi_out_fwd[TLast]\ => \NLW_audio_fifo_inst_axi_out_fwd[TLast]_UNCONNECTED\,
      \axi_out_fwd[TValid]\ => \trans_fwd_in[TValid]\,
      clk_in => m_clk,
      clk_out => '0'
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
  attribute x_core_info of design_1_I2S_wrapper_0_0 : entity is "I2S_wrapper,Vivado 2023.2";
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
  attribute x_interface_parameter of m_clk : signal is "XIL_INTERFACENAME m_clk, ASSOCIATED_RESET m_rst, FREQ_HZ 12287988, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
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
