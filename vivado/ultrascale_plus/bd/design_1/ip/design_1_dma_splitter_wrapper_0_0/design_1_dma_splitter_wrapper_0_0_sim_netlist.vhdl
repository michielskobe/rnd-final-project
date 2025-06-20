-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Mon Dec  9 19:37:44 2024
-- Host        : fedora running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/debber/Documents/__KuLeuven/GroepT/Fase4/semester1/rnd/team-e/vivado/ultrascale_plus/bd/design_1/ip/design_1_dma_splitter_wrapper_0_0/design_1_dma_splitter_wrapper_0_0_sim_netlist.vhdl
-- Design      : design_1_dma_splitter_wrapper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray : entity is 8;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray : entity is "GRAY";
end design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray;

architecture STRUCTURE of design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray is
  signal async_path : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 6 downto 0 );
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
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
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
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair9";
begin
  dest_out_bin(7) <= \dest_graysync_ff[1]\(7);
  dest_out_bin(6 downto 0) <= \^dest_out_bin\(6 downto 0);
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
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
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
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \^dest_out_bin\(2),
      I2 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \^dest_out_bin\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(6),
      I3 => \dest_graysync_ff[1]\(7),
      I4 => \dest_graysync_ff[1]\(5),
      I5 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(7),
      I3 => \dest_graysync_ff[1]\(6),
      I4 => \dest_graysync_ff[1]\(4),
      O => \^dest_out_bin\(3)
    );
\dest_out_bin[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \dest_graysync_ff[1]\(7),
      I3 => \dest_graysync_ff[1]\(5),
      O => \^dest_out_bin\(4)
    );
\dest_out_bin[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(6),
      O => \^dest_out_bin\(5)
    );
\dest_out_bin[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(7),
      O => \^dest_out_bin\(6)
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
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
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
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(7),
      Q => async_path(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__2\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__2\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__2\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__2\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__2\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__2\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__2\ : entity is 8;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__2\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__2\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__2\ : entity is "GRAY";
end \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__2\;

architecture STRUCTURE of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__2\ is
  signal async_path : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 6 downto 0 );
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
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
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
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair2";
begin
  dest_out_bin(7) <= \dest_graysync_ff[1]\(7);
  dest_out_bin(6 downto 0) <= \^dest_out_bin\(6 downto 0);
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
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
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
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \^dest_out_bin\(2),
      I2 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \^dest_out_bin\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(6),
      I3 => \dest_graysync_ff[1]\(7),
      I4 => \dest_graysync_ff[1]\(5),
      I5 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(7),
      I3 => \dest_graysync_ff[1]\(6),
      I4 => \dest_graysync_ff[1]\(4),
      O => \^dest_out_bin\(3)
    );
\dest_out_bin[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \dest_graysync_ff[1]\(7),
      I3 => \dest_graysync_ff[1]\(5),
      O => \^dest_out_bin\(4)
    );
\dest_out_bin[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(6),
      O => \^dest_out_bin\(5)
    );
\dest_out_bin[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(7),
      O => \^dest_out_bin\(6)
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
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
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
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(7),
      Q => async_path(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__parameterized0\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__parameterized0\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__parameterized0\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__parameterized0\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__parameterized0\ : entity is 9;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__parameterized0\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__parameterized0\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__parameterized0\ : entity is "GRAY";
end \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__parameterized0\;

architecture STRUCTURE of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__parameterized0\ is
  signal async_path : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \dest_graysync_ff[2]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[2]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[2]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[2]\ : signal is "GRAY";
  signal \dest_graysync_ff[3]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[3]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[3]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[3]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 7 downto 0 );
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
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
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
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
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
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][8]\ : label is "GRAY";
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
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][8]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair6";
begin
  dest_out_bin(8) <= \dest_graysync_ff[3]\(8);
  dest_out_bin(7 downto 0) <= \^dest_out_bin\(7 downto 0);
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
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
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
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
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
\dest_graysync_ff_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(5),
      Q => \dest_graysync_ff[2]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(6),
      Q => \dest_graysync_ff[2]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(7),
      Q => \dest_graysync_ff[2]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(8),
      Q => \dest_graysync_ff[2]\(8),
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
\dest_graysync_ff_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(5),
      Q => \dest_graysync_ff[3]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(6),
      Q => \dest_graysync_ff[3]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(7),
      Q => \dest_graysync_ff[3]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(8),
      Q => \dest_graysync_ff[3]\(8),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(0),
      I1 => \dest_graysync_ff[3]\(2),
      I2 => \^dest_out_bin\(3),
      I3 => \dest_graysync_ff[3]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(1),
      I1 => \^dest_out_bin\(3),
      I2 => \dest_graysync_ff[3]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(2),
      I1 => \^dest_out_bin\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(3),
      I1 => \dest_graysync_ff[3]\(5),
      I2 => \dest_graysync_ff[3]\(7),
      I3 => \dest_graysync_ff[3]\(8),
      I4 => \dest_graysync_ff[3]\(6),
      I5 => \dest_graysync_ff[3]\(4),
      O => \^dest_out_bin\(3)
    );
\dest_out_bin[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(4),
      I1 => \dest_graysync_ff[3]\(6),
      I2 => \dest_graysync_ff[3]\(8),
      I3 => \dest_graysync_ff[3]\(7),
      I4 => \dest_graysync_ff[3]\(5),
      O => \^dest_out_bin\(4)
    );
\dest_out_bin[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(5),
      I1 => \dest_graysync_ff[3]\(7),
      I2 => \dest_graysync_ff[3]\(8),
      I3 => \dest_graysync_ff[3]\(6),
      O => \^dest_out_bin\(5)
    );
\dest_out_bin[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(6),
      I1 => \dest_graysync_ff[3]\(8),
      I2 => \dest_graysync_ff[3]\(7),
      O => \^dest_out_bin\(6)
    );
\dest_out_bin[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(7),
      I1 => \dest_graysync_ff[3]\(8),
      O => \^dest_out_bin\(7)
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
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(7),
      O => gray_enc(7)
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
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(8),
      Q => async_path(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__parameterized1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__parameterized1\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__parameterized1\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__parameterized1\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__parameterized1\ : entity is 9;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__parameterized1\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__parameterized1\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__parameterized1\ : entity is "GRAY";
end \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__parameterized1\;

architecture STRUCTURE of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__parameterized1\ is
  signal async_path : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 7 downto 0 );
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
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
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
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair13";
begin
  dest_out_bin(8) <= \dest_graysync_ff[1]\(8);
  dest_out_bin(7 downto 0) <= \^dest_out_bin\(7 downto 0);
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
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
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
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \^dest_out_bin\(3),
      I3 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \^dest_out_bin\(3),
      I2 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \^dest_out_bin\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(7),
      I3 => \dest_graysync_ff[1]\(8),
      I4 => \dest_graysync_ff[1]\(6),
      I5 => \dest_graysync_ff[1]\(4),
      O => \^dest_out_bin\(3)
    );
\dest_out_bin[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \dest_graysync_ff[1]\(8),
      I3 => \dest_graysync_ff[1]\(7),
      I4 => \dest_graysync_ff[1]\(5),
      O => \^dest_out_bin\(4)
    );
\dest_out_bin[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(8),
      I3 => \dest_graysync_ff[1]\(6),
      O => \^dest_out_bin\(5)
    );
\dest_out_bin[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(8),
      I2 => \dest_graysync_ff[1]\(7),
      O => \^dest_out_bin\(6)
    );
\dest_out_bin[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(8),
      O => \^dest_out_bin\(7)
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
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(7),
      O => gray_enc(7)
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
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(8),
      Q => async_path(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dma_splitter_wrapper_0_0_xpm_cdc_sync_rst is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of design_1_dma_splitter_wrapper_0_0_xpm_cdc_sync_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of design_1_dma_splitter_wrapper_0_0_xpm_cdc_sync_rst : entity is 2;
  attribute INIT : string;
  attribute INIT of design_1_dma_splitter_wrapper_0_0_xpm_cdc_sync_rst : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of design_1_dma_splitter_wrapper_0_0_xpm_cdc_sync_rst : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dma_splitter_wrapper_0_0_xpm_cdc_sync_rst : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of design_1_dma_splitter_wrapper_0_0_xpm_cdc_sync_rst : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of design_1_dma_splitter_wrapper_0_0_xpm_cdc_sync_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of design_1_dma_splitter_wrapper_0_0_xpm_cdc_sync_rst : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_dma_splitter_wrapper_0_0_xpm_cdc_sync_rst : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of design_1_dma_splitter_wrapper_0_0_xpm_cdc_sync_rst : entity is "SYNC_RST";
end design_1_dma_splitter_wrapper_0_0_xpm_cdc_sync_rst;

architecture STRUCTURE of design_1_dma_splitter_wrapper_0_0_xpm_cdc_sync_rst is
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
entity \design_1_dma_splitter_wrapper_0_0_xpm_cdc_sync_rst__2\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_sync_rst__2\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_sync_rst__2\ : entity is 2;
  attribute INIT : string;
  attribute INIT of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_sync_rst__2\ : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_sync_rst__2\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_sync_rst__2\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_sync_rst__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_sync_rst__2\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_sync_rst__2\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_sync_rst__2\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_sync_rst__2\ : entity is "SYNC_RST";
end \design_1_dma_splitter_wrapper_0_0_xpm_cdc_sync_rst__2\;

architecture STRUCTURE of \design_1_dma_splitter_wrapper_0_0_xpm_cdc_sync_rst__2\ is
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
entity design_1_dma_splitter_wrapper_0_0_xpm_counter_updn is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    src_in_bin : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[7]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \grdc.rd_data_count_i_reg[7]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dma_splitter_wrapper_0_0_xpm_counter_updn : entity is "xpm_counter_updn";
end design_1_dma_splitter_wrapper_0_0_xpm_counter_updn;

architecture STRUCTURE of design_1_dma_splitter_wrapper_0_0_xpm_counter_updn is
  signal \^di\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \count_value_i[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_3_n_0\ : STD_LOGIC;
  signal \gen_fwft.count_en\ : STD_LOGIC;
  attribute HLUTNM : string;
  attribute HLUTNM of \grdc.rd_data_count_i[7]_i_16\ : label is "lutpair0";
  attribute HLUTNM of \grdc.rd_data_count_i[7]_i_8\ : label is "lutpair0";
begin
  DI(0) <= \^di\(0);
  Q(1 downto 0) <= \^q\(1 downto 0);
\count_value_i[0]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5AAAA655"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[0]_0\(1),
      I4 => ram_empty_i,
      O => \count_value_i[0]_i_1__3_n_0\
    );
\count_value_i[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C02F"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(0),
      I1 => rd_en,
      I2 => \count_value_i_reg[0]_0\(1),
      I3 => ram_empty_i,
      O => \gen_fwft.count_en\
    );
\count_value_i[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A999A9A96AAA6AAA"
    )
        port map (
      I0 => \^q\(1),
      I1 => ram_empty_i,
      I2 => \count_value_i_reg[0]_0\(1),
      I3 => rd_en,
      I4 => \count_value_i_reg[0]_0\(0),
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
      CE => \gen_fwft.count_en\,
      D => \count_value_i[1]_i_3_n_0\,
      Q => \^q\(1),
      R => SR(0)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \grdc.rd_data_count_i_reg[7]\(0),
      I2 => \^q\(1),
      I3 => \grdc.rd_data_count_i_reg[7]\(1),
      O => src_in_bin(0)
    );
\grdc.rd_data_count_i[7]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^di\(0),
      I1 => \^q\(1),
      I2 => \grdc.rd_data_count_i_reg[7]\(1),
      I3 => \grdc.rd_data_count_i_reg[7]_0\(1),
      O => S(1)
    );
\grdc.rd_data_count_i[7]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q\(0),
      I1 => \grdc.rd_data_count_i_reg[7]\(0),
      I2 => \grdc.rd_data_count_i_reg[7]_0\(0),
      O => S(0)
    );
\grdc.rd_data_count_i[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(0),
      I1 => \grdc.rd_data_count_i_reg[7]\(0),
      O => \^di\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_dma_splitter_wrapper_0_0_xpm_counter_updn__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    enb : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[7]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S : out STD_LOGIC_VECTOR ( 4 downto 0 );
    src_in_bin : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[7]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \grdc.rd_data_count_i_reg[8]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \count_value_i_reg[8]_0\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_dma_splitter_wrapper_0_0_xpm_counter_updn__parameterized0\ : entity is "xpm_counter_updn";
end \design_1_dma_splitter_wrapper_0_0_xpm_counter_updn__parameterized0\;

architecture STRUCTURE of \design_1_dma_splitter_wrapper_0_0_xpm_counter_updn__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \count_value_i[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__2_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[8]\ : STD_LOGIC;
  signal \^enb\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_10_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_11_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_12_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_13_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_14_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_15_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_16_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_6_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_7_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_8_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_9_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_7\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9\ : label is "soft_lutpair18";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  enb <= \^enb\;
\count_value_i[0]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAA5455"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => \count_value_i_reg[0]_0\(0),
      I3 => \count_value_i_reg[0]_0\(1),
      I4 => \^q\(0),
      O => \count_value_i[0]_i_1__4_n_0\
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
\count_value_i[4]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__3_n_0\
    );
\count_value_i[5]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__2_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__2_n_0\
    );
\count_value_i[6]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__2_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__2_n_0\
    );
\count_value_i[6]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA200000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg[0]_0\(1),
      I2 => \count_value_i_reg[0]_0\(0),
      I3 => rd_en,
      I4 => ram_empty_i,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__2_n_0\
    );
\count_value_i[7]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[8]_i_2__0_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__2_n_0\
    );
\count_value_i[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[8]_i_2__0_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \count_value_i_reg_n_0_[8]\,
      O => \count_value_i[8]_i_1__0_n_0\
    );
\count_value_i[8]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^enb\,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[8]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^enb\,
      D => \count_value_i[0]_i_1__4_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[8]_0\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^enb\,
      D => \count_value_i[1]_i_1__4_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[8]_0\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^enb\,
      D => \count_value_i[2]_i_1__3_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[8]_0\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^enb\,
      D => \count_value_i[3]_i_1__3_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[8]_0\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^enb\,
      D => \count_value_i[4]_i_1__3_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[8]_0\
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^enb\,
      D => \count_value_i[5]_i_1__2_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[8]_0\
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^enb\,
      D => \count_value_i[6]_i_1__2_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[8]_0\
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^enb\,
      D => \count_value_i[7]_i_1__2_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[8]_0\
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^enb\,
      D => \count_value_i[8]_i_1__0_n_0\,
      Q => \count_value_i_reg_n_0_[8]\,
      R => \count_value_i_reg[8]_0\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0\,
      I3 => \^q\(4),
      I4 => \^q\(6),
      I5 => \count_value_i_reg_n_0_[8]\,
      O => src_in_bin(7)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBFBBAFB"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[7]\(1),
      I2 => \^q\(1),
      I3 => \grdc.rd_data_count_i_reg[7]\(0),
      I4 => \^q\(0),
      I5 => \^q\(3),
      O => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(0),
      I1 => \grdc.rd_data_count_i_reg[7]\(0),
      O => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11_n_0\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0\,
      I3 => \^q\(5),
      I4 => \^q\(7),
      O => src_in_bin(6)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0\,
      I2 => \^q\(4),
      I3 => \^q\(6),
      O => src_in_bin(5)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0\,
      I2 => \^q\(5),
      O => src_in_bin(4)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAFE00001501"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11_n_0\,
      I2 => \^q\(1),
      I3 => \grdc.rd_data_count_i_reg[7]\(1),
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => src_in_bin(3)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBBAFB04044504"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[7]\(1),
      I2 => \^q\(1),
      I3 => \grdc.rd_data_count_i_reg[7]\(0),
      I4 => \^q\(0),
      I5 => \^q\(3),
      O => src_in_bin(2)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0FB4F04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \grdc.rd_data_count_i_reg[7]\(0),
      I2 => \^q\(1),
      I3 => \grdc.rd_data_count_i_reg[7]\(1),
      I4 => \^q\(2),
      O => src_in_bin(1)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \grdc.rd_data_count_i_reg[7]\(0),
      O => src_in_bin(0)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\(6),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_10_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\(5),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_11_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\(4),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_12_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\(3),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_13_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\(2),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_14_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\(1),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_15_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAA5455"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => \count_value_i_reg[0]_0\(0),
      I3 => \count_value_i_reg[0]_0\(1),
      I4 => \^q\(0),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_16_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(6),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_2_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(5),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_3_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_4_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(3),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_5_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_6_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_7_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_8_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\(7),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_9_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\(0),
      CI_TOP => '0',
      CO(7) => \NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_1\,
      CO(5) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_2\,
      CO(4) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_3\,
      CO(3) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_4\,
      CO(2) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_5\,
      CO(1) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_6\,
      CO(0) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_7\,
      DI(7) => '0',
      DI(6) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_2_n_0\,
      DI(5) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_3_n_0\,
      DI(4) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_4_n_0\,
      DI(3) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_5_n_0\,
      DI(2) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_6_n_0\,
      DI(1) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_7_n_0\,
      DI(0) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_8_n_0\,
      O(7 downto 0) => D(7 downto 0),
      S(7) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_9_n_0\,
      S(6) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_10_n_0\,
      S(5) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_11_n_0\,
      S(4) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_12_n_0\,
      S(3) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_13_n_0\,
      S(2) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_14_n_0\,
      S(1) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_15_n_0\,
      S(0) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_16_n_0\
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
      O => \^enb\
    );
\grdc.rd_data_count_i[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(5),
      I1 => \grdc.rd_data_count_i_reg[8]\(4),
      I2 => \^q\(6),
      I3 => \grdc.rd_data_count_i_reg[8]\(5),
      O => S(3)
    );
\grdc.rd_data_count_i[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(4),
      I1 => \grdc.rd_data_count_i_reg[8]\(3),
      I2 => \^q\(5),
      I3 => \grdc.rd_data_count_i_reg[8]\(4),
      O => S(2)
    );
\grdc.rd_data_count_i[7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(3),
      I1 => \grdc.rd_data_count_i_reg[8]\(2),
      I2 => \^q\(4),
      I3 => \grdc.rd_data_count_i_reg[8]\(3),
      O => S(1)
    );
\grdc.rd_data_count_i[7]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[8]\(1),
      I2 => \^q\(3),
      I3 => \grdc.rd_data_count_i_reg[8]\(2),
      O => S(0)
    );
\grdc.rd_data_count_i[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \^q\(1),
      I1 => \grdc.rd_data_count_i_reg[7]\(1),
      I2 => \grdc.rd_data_count_i_reg[8]\(0),
      O => DI(0)
    );
\grdc.rd_data_count_i[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(6),
      I1 => \grdc.rd_data_count_i_reg[8]\(5),
      I2 => \^q\(7),
      I3 => \grdc.rd_data_count_i_reg[8]\(6),
      O => S(4)
    );
\grdc.rd_data_count_i[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(7),
      I1 => \grdc.rd_data_count_i_reg[8]\(6),
      I2 => \count_value_i_reg_n_0_[8]\,
      I3 => \grdc.rd_data_count_i_reg[8]\(7),
      O => \count_value_i_reg[7]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_dma_splitter_wrapper_0_0_xpm_counter_updn__parameterized0_2\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    wr_pntr_plus1_pf_carry : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[6]_0\ : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    \gwdc.wr_data_count_i_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_dma_splitter_wrapper_0_0_xpm_counter_updn__parameterized0_2\ : entity is "xpm_counter_updn";
end \design_1_dma_splitter_wrapper_0_0_xpm_counter_updn__parameterized0_2\;

architecture STRUCTURE of \design_1_dma_splitter_wrapper_0_0_xpm_counter_updn__parameterized0_2\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \count_value_i[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_3_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_4_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_5_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_6_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_7_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_8_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_9_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[8]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_gwdc.wr_data_count_i_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gwdc.wr_data_count_i_reg[8]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1\ : label is "soft_lutpair20";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \gwdc.wr_data_count_i_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \gwdc.wr_data_count_i_reg[8]_i_1\ : label is 35;
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
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
\count_value_i[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__1_n_0\
    );
\count_value_i[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__1_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__1_n_0\
    );
\count_value_i[6]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__1_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__1_n_0\
    );
\count_value_i[6]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[6]_0\,
      I3 => wrst_busy,
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__1_n_0\
    );
\count_value_i[7]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[8]_i_2_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__1_n_0\
    );
\count_value_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[8]_i_2_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1_n_0\
    );
\count_value_i[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => wr_pntr_plus1_pf_carry,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[8]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
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
      CE => wr_pntr_plus1_pf_carry,
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
      CE => wr_pntr_plus1_pf_carry,
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
      CE => wr_pntr_plus1_pf_carry,
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
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[4]_i_1__1_n_0\,
      Q => \^q\(4),
      R => wrst_busy
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[5]_i_1__1_n_0\,
      Q => \^q\(5),
      R => wrst_busy
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[6]_i_1__1_n_0\,
      Q => \^q\(6),
      R => wrst_busy
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[7]_i_1__1_n_0\,
      Q => \^q\(7),
      R => wrst_busy
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[8]_i_1_n_0\,
      Q => \^q\(8),
      R => wrst_busy
    );
\gwdc.wr_data_count_i[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \gwdc.wr_data_count_i_reg[8]\(7),
      O => \gwdc.wr_data_count_i[7]_i_2_n_0\
    );
\gwdc.wr_data_count_i[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gwdc.wr_data_count_i_reg[8]\(6),
      O => \gwdc.wr_data_count_i[7]_i_3_n_0\
    );
\gwdc.wr_data_count_i[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gwdc.wr_data_count_i_reg[8]\(5),
      O => \gwdc.wr_data_count_i[7]_i_4_n_0\
    );
\gwdc.wr_data_count_i[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gwdc.wr_data_count_i_reg[8]\(4),
      O => \gwdc.wr_data_count_i[7]_i_5_n_0\
    );
\gwdc.wr_data_count_i[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gwdc.wr_data_count_i_reg[8]\(3),
      O => \gwdc.wr_data_count_i[7]_i_6_n_0\
    );
\gwdc.wr_data_count_i[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gwdc.wr_data_count_i_reg[8]\(2),
      O => \gwdc.wr_data_count_i[7]_i_7_n_0\
    );
\gwdc.wr_data_count_i[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gwdc.wr_data_count_i_reg[8]\(1),
      O => \gwdc.wr_data_count_i[7]_i_8_n_0\
    );
\gwdc.wr_data_count_i[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gwdc.wr_data_count_i_reg[8]\(0),
      O => \gwdc.wr_data_count_i[7]_i_9_n_0\
    );
\gwdc.wr_data_count_i[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \gwdc.wr_data_count_i_reg[8]\(8),
      O => \gwdc.wr_data_count_i[8]_i_2_n_0\
    );
\gwdc.wr_data_count_i_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \gwdc.wr_data_count_i_reg[7]_i_1_n_0\,
      CO(6) => \gwdc.wr_data_count_i_reg[7]_i_1_n_1\,
      CO(5) => \gwdc.wr_data_count_i_reg[7]_i_1_n_2\,
      CO(4) => \gwdc.wr_data_count_i_reg[7]_i_1_n_3\,
      CO(3) => \gwdc.wr_data_count_i_reg[7]_i_1_n_4\,
      CO(2) => \gwdc.wr_data_count_i_reg[7]_i_1_n_5\,
      CO(1) => \gwdc.wr_data_count_i_reg[7]_i_1_n_6\,
      CO(0) => \gwdc.wr_data_count_i_reg[7]_i_1_n_7\,
      DI(7 downto 0) => \^q\(7 downto 0),
      O(7 downto 0) => D(7 downto 0),
      S(7) => \gwdc.wr_data_count_i[7]_i_2_n_0\,
      S(6) => \gwdc.wr_data_count_i[7]_i_3_n_0\,
      S(5) => \gwdc.wr_data_count_i[7]_i_4_n_0\,
      S(4) => \gwdc.wr_data_count_i[7]_i_5_n_0\,
      S(3) => \gwdc.wr_data_count_i[7]_i_6_n_0\,
      S(2) => \gwdc.wr_data_count_i[7]_i_7_n_0\,
      S(1) => \gwdc.wr_data_count_i[7]_i_8_n_0\,
      S(0) => \gwdc.wr_data_count_i[7]_i_9_n_0\
    );
\gwdc.wr_data_count_i_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \gwdc.wr_data_count_i_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 0) => \NLW_gwdc.wr_data_count_i_reg[8]_i_1_CO_UNCONNECTED\(7 downto 0),
      DI(7 downto 0) => B"00000000",
      O(7 downto 1) => \NLW_gwdc.wr_data_count_i_reg[8]_i_1_O_UNCONNECTED\(7 downto 1),
      O(0) => D(8),
      S(7 downto 1) => B"0000000",
      S(0) => \gwdc.wr_data_count_i[8]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_dma_splitter_wrapper_0_0_xpm_counter_updn__parameterized1\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_dma_splitter_wrapper_0_0_xpm_counter_updn__parameterized1\ : entity is "xpm_counter_updn";
end \design_1_dma_splitter_wrapper_0_0_xpm_counter_updn__parameterized1\;

architecture STRUCTURE of \design_1_dma_splitter_wrapper_0_0_xpm_counter_updn__parameterized1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \count_value_i[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__3_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_2__1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__2\ : label is "soft_lutpair19";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
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
\count_value_i[4]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__2_n_0\
    );
\count_value_i[5]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__3_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__3_n_0\
    );
\count_value_i[6]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__3_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__3_n_0\
    );
\count_value_i[6]_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA200000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg[1]_0\(1),
      I2 => \count_value_i_reg[1]_0\(0),
      I3 => rd_en,
      I4 => ram_empty_i,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__3_n_0\
    );
\count_value_i[7]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[7]_i_2__1_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__3_n_0\
    );
\count_value_i[7]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => E(0),
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[7]_i_2__1_n_0\
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
      S => \count_value_i_reg[0]_0\
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
      R => \count_value_i_reg[0]_0\
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
      R => \count_value_i_reg[0]_0\
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
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[4]_i_1__2_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[5]_i_1__3_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[6]_i_1__3_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[7]_i_1__3_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_dma_splitter_wrapper_0_0_xpm_counter_updn__parameterized1_3\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_pntr_plus1_pf_carry : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[6]_0\ : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_dma_splitter_wrapper_0_0_xpm_counter_updn__parameterized1_3\ : entity is "xpm_counter_updn";
end \design_1_dma_splitter_wrapper_0_0_xpm_counter_updn__parameterized1_3\;

architecture STRUCTURE of \design_1_dma_splitter_wrapper_0_0_xpm_counter_updn__parameterized1_3\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \count_value_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_6_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_7_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_8_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_9_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__0\ : label is "soft_lutpair23";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1\ : label is 35;
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
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
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__0_n_0\
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
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__0_n_0\
    );
\count_value_i[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__0_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__0_n_0\
    );
\count_value_i[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__0_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__0_n_0\
    );
\count_value_i[6]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[6]_0\,
      I3 => wrst_busy,
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__0_n_0\
    );
\count_value_i[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[7]_i_2__0_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__0_n_0\
    );
\count_value_i[7]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => wr_pntr_plus1_pf_carry,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[7]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
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
      CE => wr_pntr_plus1_pf_carry,
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
      CE => wr_pntr_plus1_pf_carry,
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
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[3]_i_1__0_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[4]_i_1__0_n_0\,
      Q => \^q\(4),
      R => wrst_busy
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[5]_i_1__0_n_0\,
      Q => \^q\(5),
      R => wrst_busy
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[6]_i_1__0_n_0\,
      Q => \^q\(6),
      R => wrst_busy
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[7]_i_1__0_n_0\,
      Q => \^q\(7),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\(7),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\(6),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\(5),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\(4),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\(3),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_6_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\(2),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_7_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\(1),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_8_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\(0),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_9_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => wr_pntr_plus1_pf_carry,
      CI_TOP => '0',
      CO(7) => \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_1\,
      CO(5) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_2\,
      CO(4) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_3\,
      CO(3) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_4\,
      CO(2) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_5\,
      CO(1) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_6\,
      CO(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_7\,
      DI(7) => '0',
      DI(6 downto 0) => \^q\(6 downto 0),
      O(7 downto 3) => D(4 downto 0),
      O(2 downto 0) => \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_O_UNCONNECTED\(2 downto 0),
      S(7) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2_n_0\,
      S(6) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3_n_0\,
      S(5) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4_n_0\,
      S(4) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5_n_0\,
      S(3) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_6_n_0\,
      S(2) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_7_n_0\,
      S(1) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_8_n_0\,
      S(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_dma_splitter_wrapper_0_0_xpm_counter_updn__parameterized2\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_pntr_plus1_pf_carry : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[6]_0\ : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_dma_splitter_wrapper_0_0_xpm_counter_updn__parameterized2\ : entity is "xpm_counter_updn";
end \design_1_dma_splitter_wrapper_0_0_xpm_counter_updn__parameterized2\;

architecture STRUCTURE of \design_1_dma_splitter_wrapper_0_0_xpm_counter_updn__parameterized2\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1\ : label is "soft_lutpair25";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
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
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1_n_0\
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
\count_value_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1_n_0\
    );
\count_value_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1_n_0\
    );
\count_value_i[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[6]_0\,
      I3 => wrst_busy,
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2_n_0\
    );
\count_value_i[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[7]_i_2_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1_n_0\
    );
\count_value_i[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => wr_pntr_plus1_pf_carry,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[7]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
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
      CE => wr_pntr_plus1_pf_carry,
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
      CE => wr_pntr_plus1_pf_carry,
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
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[3]_i_1_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[4]_i_1_n_0\,
      Q => \^q\(4),
      R => wrst_busy
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[5]_i_1_n_0\,
      Q => \^q\(5),
      R => wrst_busy
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[6]_i_1_n_0\,
      Q => \^q\(6),
      R => wrst_busy
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[7]_i_1_n_0\,
      Q => \^q\(7),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dma_splitter_wrapper_0_0_xpm_fifo_reg_bit is
  port (
    rst_d1 : out STD_LOGIC;
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ : out STD_LOGIC;
    overflow_i0 : out STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\ : in STD_LOGIC;
    prog_full : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dma_splitter_wrapper_0_0_xpm_fifo_reg_bit : entity is "xpm_fifo_reg_bit";
end design_1_dma_splitter_wrapper_0_0_xpm_fifo_reg_bit;

architecture STRUCTURE of design_1_dma_splitter_wrapper_0_0_xpm_fifo_reg_bit is
  signal \p_1_in__0\ : STD_LOGIC;
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
\gen_pf_ic_rc.gpf_ic.prog_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E200E2E2"
    )
        port map (
      I0 => \p_1_in__0\,
      I1 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\,
      I2 => prog_full,
      I3 => rst,
      I4 => \^rst_d1\,
      I5 => wrst_busy,
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => Q(1),
      I1 => Q(4),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(3),
      O => \p_1_in__0\
    );
\gof.overflow_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => wrst_busy,
      I2 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\,
      I3 => wr_en,
      O => overflow_i0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dma_splitter_wrapper_0_0_xpm_fifo_reg_vec is
  port (
    \reg_out_i_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ram_full_i0 : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\ : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dma_splitter_wrapper_0_0_xpm_fifo_reg_vec : entity is "xpm_fifo_reg_vec";
end design_1_dma_splitter_wrapper_0_0_xpm_fifo_reg_vec;

architecture STRUCTURE of design_1_dma_splitter_wrapper_0_0_xpm_fifo_reg_vec is
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_6_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_7_n_0\ : STD_LOGIC;
  signal going_full0 : STD_LOGIC;
  signal leaving_full : STD_LOGIC;
  signal \^reg_out_i_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  \reg_out_i_reg[7]_0\(7 downto 0) <= \^reg_out_i_reg[7]_0\(7 downto 0);
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0200"
    )
        port map (
      I0 => wr_en,
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\,
      I2 => rst_d1,
      I3 => going_full0,
      I4 => leaving_full,
      O => ram_full_i0
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(7),
      I1 => \^reg_out_i_reg[7]_0\(7),
      I2 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(6),
      I3 => \^reg_out_i_reg[7]_0\(6),
      I4 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_4_n_0\,
      I5 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_5_n_0\,
      O => going_full0
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => Q(7),
      I1 => \^reg_out_i_reg[7]_0\(7),
      I2 => Q(6),
      I3 => \^reg_out_i_reg[7]_0\(6),
      I4 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_6_n_0\,
      I5 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_7_n_0\,
      O => leaving_full
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_out_i_reg[7]_0\(3),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(3),
      I2 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(5),
      I3 => \^reg_out_i_reg[7]_0\(5),
      I4 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(4),
      I5 => \^reg_out_i_reg[7]_0\(4),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_4_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_out_i_reg[7]_0\(0),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(0),
      I2 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(2),
      I3 => \^reg_out_i_reg[7]_0\(2),
      I4 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(1),
      I5 => \^reg_out_i_reg[7]_0\(1),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_5_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_out_i_reg[7]_0\(3),
      I1 => Q(3),
      I2 => Q(5),
      I3 => \^reg_out_i_reg[7]_0\(5),
      I4 => Q(4),
      I5 => \^reg_out_i_reg[7]_0\(4),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_6_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_out_i_reg[7]_0\(0),
      I1 => Q(0),
      I2 => Q(2),
      I3 => \^reg_out_i_reg[7]_0\(2),
      I4 => Q(1),
      I5 => \^reg_out_i_reg[7]_0\(1),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_7_n_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(0),
      Q => \^reg_out_i_reg[7]_0\(0),
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
      Q => \^reg_out_i_reg[7]_0\(1),
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
      Q => \^reg_out_i_reg[7]_0\(2),
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
      Q => \^reg_out_i_reg[7]_0\(3),
      R => wrst_busy
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(4),
      Q => \^reg_out_i_reg[7]_0\(4),
      R => wrst_busy
    );
\reg_out_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(5),
      Q => \^reg_out_i_reg[7]_0\(5),
      R => wrst_busy
    );
\reg_out_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(6),
      Q => \^reg_out_i_reg[7]_0\(6),
      R => wrst_busy
    );
\reg_out_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(7),
      Q => \^reg_out_i_reg[7]_0\(7),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dma_splitter_wrapper_0_0_xpm_fifo_reg_vec_0 is
  port (
    ram_empty_i0 : out STD_LOGIC;
    \reg_out_i_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \gen_pf_ic_rc.ram_empty_i_reg\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gen_pf_ic_rc.ram_empty_i_reg_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \reg_out_i_reg[0]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dma_splitter_wrapper_0_0_xpm_fifo_reg_vec_0 : entity is "xpm_fifo_reg_vec";
end design_1_dma_splitter_wrapper_0_0_xpm_fifo_reg_vec_0;

architecture STRUCTURE of design_1_dma_splitter_wrapper_0_0_xpm_fifo_reg_vec_0 is
  signal \gen_pf_ic_rc.ram_empty_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_6_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_7_n_0\ : STD_LOGIC;
  signal going_empty0 : STD_LOGIC;
  signal leaving_empty : STD_LOGIC;
  signal \^reg_out_i_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  \reg_out_i_reg[7]_0\(7 downto 0) <= \^reg_out_i_reg[7]_0\(7 downto 0);
\gen_pf_ic_rc.ram_empty_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00FD0000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => rd_en,
      I3 => ram_empty_i,
      I4 => going_empty0,
      I5 => leaving_empty,
      O => ram_empty_i0
    );
\gen_pf_ic_rc.ram_empty_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \gen_pf_ic_rc.ram_empty_i_reg_0\(7),
      I1 => \^reg_out_i_reg[7]_0\(7),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg_0\(6),
      I3 => \^reg_out_i_reg[7]_0\(6),
      I4 => \gen_pf_ic_rc.ram_empty_i_i_4_n_0\,
      I5 => \gen_pf_ic_rc.ram_empty_i_i_5_n_0\,
      O => going_empty0
    );
\gen_pf_ic_rc.ram_empty_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \gen_pf_ic_rc.ram_empty_i_reg\(7),
      I1 => \^reg_out_i_reg[7]_0\(7),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg\(6),
      I3 => \^reg_out_i_reg[7]_0\(6),
      I4 => \gen_pf_ic_rc.ram_empty_i_i_6_n_0\,
      I5 => \gen_pf_ic_rc.ram_empty_i_i_7_n_0\,
      O => leaving_empty
    );
\gen_pf_ic_rc.ram_empty_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_out_i_reg[7]_0\(3),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_0\(3),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg_0\(5),
      I3 => \^reg_out_i_reg[7]_0\(5),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg_0\(4),
      I5 => \^reg_out_i_reg[7]_0\(4),
      O => \gen_pf_ic_rc.ram_empty_i_i_4_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_out_i_reg[7]_0\(0),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_0\(0),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg_0\(2),
      I3 => \^reg_out_i_reg[7]_0\(2),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg_0\(1),
      I5 => \^reg_out_i_reg[7]_0\(1),
      O => \gen_pf_ic_rc.ram_empty_i_i_5_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_out_i_reg[7]_0\(3),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg\(3),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg\(5),
      I3 => \^reg_out_i_reg[7]_0\(5),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg\(4),
      I5 => \^reg_out_i_reg[7]_0\(4),
      O => \gen_pf_ic_rc.ram_empty_i_i_6_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_out_i_reg[7]_0\(0),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg\(0),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg\(2),
      I3 => \^reg_out_i_reg[7]_0\(2),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg\(1),
      I5 => \^reg_out_i_reg[7]_0\(1),
      O => \gen_pf_ic_rc.ram_empty_i_i_7_n_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(0),
      Q => \^reg_out_i_reg[7]_0\(0),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(1),
      Q => \^reg_out_i_reg[7]_0\(1),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(2),
      Q => \^reg_out_i_reg[7]_0\(2),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(3),
      Q => \^reg_out_i_reg[7]_0\(3),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(4),
      Q => \^reg_out_i_reg[7]_0\(4),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(5),
      Q => \^reg_out_i_reg[7]_0\(5),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(6),
      Q => \^reg_out_i_reg[7]_0\(6),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(7),
      Q => \^reg_out_i_reg[7]_0\(7),
      R => \reg_out_i_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_dma_splitter_wrapper_0_0_xpm_fifo_reg_vec__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    wrst_busy : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_dma_splitter_wrapper_0_0_xpm_fifo_reg_vec__parameterized0\ : entity is "xpm_fifo_reg_vec";
end \design_1_dma_splitter_wrapper_0_0_xpm_fifo_reg_vec__parameterized0\;

architecture STRUCTURE of \design_1_dma_splitter_wrapper_0_0_xpm_fifo_reg_vec__parameterized0\ is
begin
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(0),
      Q => Q(0),
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
      Q => Q(1),
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
      Q => Q(2),
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
      Q => Q(3),
      R => wrst_busy
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(4),
      Q => Q(4),
      R => wrst_busy
    );
\reg_out_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(5),
      Q => Q(5),
      R => wrst_busy
    );
\reg_out_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(6),
      Q => Q(6),
      R => wrst_busy
    );
\reg_out_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(7),
      Q => Q(7),
      R => wrst_busy
    );
\reg_out_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(8),
      Q => Q(8),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_dma_splitter_wrapper_0_0_xpm_fifo_reg_vec__parameterized0_1\ is
  port (
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \grdc.rd_data_count_i_reg[8]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \grdc.rd_data_count_i_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \grdc.rd_data_count_i_reg[7]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \reg_out_i_reg[8]_0\ : in STD_LOGIC;
    \reg_out_i_reg[8]_1\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_dma_splitter_wrapper_0_0_xpm_fifo_reg_vec__parameterized0_1\ : entity is "xpm_fifo_reg_vec";
end \design_1_dma_splitter_wrapper_0_0_xpm_fifo_reg_vec__parameterized0_1\;

architecture STRUCTURE of \design_1_dma_splitter_wrapper_0_0_xpm_fifo_reg_vec__parameterized0_1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \grdc.rd_data_count_i[7]_i_14_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[7]_i_3_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[7]_i_4_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[7]_i_5_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[7]_i_6_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_grdc.rd_data_count_i_reg[8]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_grdc.rd_data_count_i_reg[8]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \grdc.rd_data_count_i_reg[7]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \grdc.rd_data_count_i_reg[7]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \grdc.rd_data_count_i_reg[8]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \grdc.rd_data_count_i_reg[8]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\grdc.rd_data_count_i[7]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \^q\(1),
      I1 => \grdc.rd_data_count_i_reg[7]\(0),
      I2 => \grdc.rd_data_count_i_reg[7]_0\(0),
      I3 => \grdc.rd_data_count_i_reg[7]_0\(1),
      I4 => \^q\(2),
      O => \grdc.rd_data_count_i[7]_i_14_n_0\
    );
\grdc.rd_data_count_i[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(6),
      I1 => \grdc.rd_data_count_i_reg[7]_0\(5),
      O => \grdc.rd_data_count_i[7]_i_2_n_0\
    );
\grdc.rd_data_count_i[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(5),
      I1 => \grdc.rd_data_count_i_reg[7]_0\(4),
      O => \grdc.rd_data_count_i[7]_i_3_n_0\
    );
\grdc.rd_data_count_i[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \grdc.rd_data_count_i_reg[7]_0\(3),
      O => \grdc.rd_data_count_i[7]_i_4_n_0\
    );
\grdc.rd_data_count_i[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \grdc.rd_data_count_i_reg[7]_0\(2),
      O => \grdc.rd_data_count_i[7]_i_5_n_0\
    );
\grdc.rd_data_count_i[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[7]_0\(1),
      O => \grdc.rd_data_count_i[7]_i_6_n_0\
    );
\grdc.rd_data_count_i_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \grdc.rd_data_count_i_reg[7]_i_1_n_0\,
      CO(6) => \grdc.rd_data_count_i_reg[7]_i_1_n_1\,
      CO(5) => \grdc.rd_data_count_i_reg[7]_i_1_n_2\,
      CO(4) => \grdc.rd_data_count_i_reg[7]_i_1_n_3\,
      CO(3) => \grdc.rd_data_count_i_reg[7]_i_1_n_4\,
      CO(2) => \grdc.rd_data_count_i_reg[7]_i_1_n_5\,
      CO(1) => \grdc.rd_data_count_i_reg[7]_i_1_n_6\,
      CO(0) => \grdc.rd_data_count_i_reg[7]_i_1_n_7\,
      DI(7) => \grdc.rd_data_count_i[7]_i_2_n_0\,
      DI(6) => \grdc.rd_data_count_i[7]_i_3_n_0\,
      DI(5) => \grdc.rd_data_count_i[7]_i_4_n_0\,
      DI(4) => \grdc.rd_data_count_i[7]_i_5_n_0\,
      DI(3) => \grdc.rd_data_count_i[7]_i_6_n_0\,
      DI(2 downto 1) => DI(1 downto 0),
      DI(0) => \^q\(0),
      O(7 downto 0) => D(7 downto 0),
      S(7 downto 3) => S(6 downto 2),
      S(2) => \grdc.rd_data_count_i[7]_i_14_n_0\,
      S(1 downto 0) => S(1 downto 0)
    );
\grdc.rd_data_count_i_reg[8]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \grdc.rd_data_count_i_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 0) => \NLW_grdc.rd_data_count_i_reg[8]_i_2_CO_UNCONNECTED\(7 downto 0),
      DI(7 downto 0) => B"00000000",
      O(7 downto 1) => \NLW_grdc.rd_data_count_i_reg[8]_i_2_O_UNCONNECTED\(7 downto 1),
      O(0) => D(8),
      S(7 downto 1) => B"0000000",
      S(0) => \grdc.rd_data_count_i_reg[8]\(0)
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[8]_1\(0),
      Q => \^q\(0),
      R => \reg_out_i_reg[8]_0\
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[8]_1\(1),
      Q => \^q\(1),
      R => \reg_out_i_reg[8]_0\
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[8]_1\(2),
      Q => \^q\(2),
      R => \reg_out_i_reg[8]_0\
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[8]_1\(3),
      Q => \^q\(3),
      R => \reg_out_i_reg[8]_0\
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[8]_1\(4),
      Q => \^q\(4),
      R => \reg_out_i_reg[8]_0\
    );
\reg_out_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[8]_1\(5),
      Q => \^q\(5),
      R => \reg_out_i_reg[8]_0\
    );
\reg_out_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[8]_1\(6),
      Q => \^q\(6),
      R => \reg_out_i_reg[8]_0\
    );
\reg_out_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[8]_1\(7),
      Q => \^q\(7),
      R => \reg_out_i_reg[8]_0\
    );
\reg_out_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[8]_1\(8),
      Q => \^q\(8),
      R => \reg_out_i_reg[8]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dma_splitter_wrapper_0_0_xpm_memory_base is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 25 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 25 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 25 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 25 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 8;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 8;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 26;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 26;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 1;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is "[7:0]";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 6656;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is "xpm_memory_base";
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 256;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is "auto";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 26;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 26;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 26;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 26;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 26;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 8;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 8;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 8;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 8;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 26;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 26;
  attribute RAM_DECOMP : string;
  attribute RAM_DECOMP of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is "auto";
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 26;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 26;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 26;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 26;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 28;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of design_1_dma_splitter_wrapper_0_0_xpm_memory_base : entity is 28;
end design_1_dma_splitter_wrapper_0_0_xpm_memory_base;

architecture STRUCTURE of design_1_dma_splitter_wrapper_0_0_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDINA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDINB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDINPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDINPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 10 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 511;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "p0_d26";
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 25;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ : integer;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 511;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "p0_d26";
  attribute \MEM.PORTB.DATA_LSB\ : integer;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ : integer;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 25;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "";
  attribute RDADDR_COLLISION_HWCONFIG : string;
  attribute RDADDR_COLLISION_HWCONFIG of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 6656;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "U0/dma_splitter_inst/generic_fifo_inst/xpm_fifo_async_inst/gnuram_async_fifo.xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 511;
  attribute ram_offset : integer;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 25;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
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
\gen_wr_a.gen_word_narrow.mem_reg\: unisim.vcomponents.RAMB18E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 1,
      DOB_REG => 1,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => B"00" & X"0000",
      INIT_B => B"00" & X"0000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "TRUE",
      SRVAL_A => B"00" & X"0000",
      SRVAL_B => B"00" & X"0000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13) => '0',
      ADDRARDADDR(12 downto 5) => addrb(7 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(13) => '0',
      ADDRBWRADDR(12 downto 5) => addra(7 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(15 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDINA_UNCONNECTED\(15 downto 0),
      CASDINB(15 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDINB_UNCONNECTED\(15 downto 0),
      CASDINPA(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDINPA_UNCONNECTED\(1 downto 0),
      CASDINPB(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDINPB_UNCONNECTED\(1 downto 0),
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(15 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTA_UNCONNECTED\(15 downto 0),
      CASDOUTB(15 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTB_UNCONNECTED\(15 downto 0),
      CASDOUTPA(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTPA_UNCONNECTED\(1 downto 0),
      CASDOUTPB(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTPB_UNCONNECTED\(1 downto 0),
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CLKARDCLK => clkb,
      CLKBWRCLK => clkb,
      DINADIN(15 downto 0) => dina(15 downto 0),
      DINBDIN(15 downto 10) => B"111111",
      DINBDIN(9 downto 0) => dina(25 downto 16),
      DINPADINP(1 downto 0) => B"11",
      DINPBDINP(1 downto 0) => B"11",
      DOUTADOUT(15 downto 0) => doutb(15 downto 0),
      DOUTBDOUT(15 downto 10) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOUTBDOUT_UNCONNECTED\(15 downto 10),
      DOUTBDOUT(9 downto 0) => doutb(25 downto 16),
      DOUTPADOUTP(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOUTPADOUTP_UNCONNECTED\(1 downto 0),
      DOUTPBDOUTP(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOUTPBDOUTP_UNCONNECTED\(1 downto 0),
      ENARDEN => enb,
      ENBWREN => '1',
      REGCEAREGCE => regceb,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => rstb,
      RSTREGB => '0',
      SLEEP => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => wea(0),
      WEBWE(2) => wea(0),
      WEBWE(1) => wea(0),
      WEBWE(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dma_splitter_wrapper_0_0_xpm_fifo_rst is
  port (
    \gen_rst_ic.fifo_rd_rst_ic_reg_0\ : out STD_LOGIC;
    wrst_busy : out STD_LOGIC;
    wr_pntr_plus1_pf_carry : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_rst_ic.fifo_rd_rst_ic_reg_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    underflow_i0 : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[7]\ : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    \guf.underflow_i_reg\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dma_splitter_wrapper_0_0_xpm_fifo_rst : entity is "xpm_fifo_rst";
end design_1_dma_splitter_wrapper_0_0_xpm_fifo_rst;

architecture STRUCTURE of design_1_dma_splitter_wrapper_0_0_xpm_fifo_rst is
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
  signal \gen_rst_ic.curr_rrst_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP of \gen_rst_ic.curr_rrst_state\ : signal is "yes";
  signal \gen_rst_ic.fifo_rd_rst_i\ : STD_LOGIC;
  signal \^gen_rst_ic.fifo_rd_rst_ic_reg_0\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \gen_rst_ic.fifo_wr_rst_ic_i_2\ : label is "soft_lutpair28";
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
  attribute SOFT_HLUTNM of \gen_rst_ic.rst_seq_reentered_i_1\ : label is "soft_lutpair28";
  attribute DEF_VAL of \gen_rst_ic.wrst_rd_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF of \gen_rst_ic.wrst_rd_inst\ : label is 2;
  attribute INIT of \gen_rst_ic.wrst_rd_inst\ : label is "0";
  attribute INIT_SYNC_FF of \gen_rst_ic.wrst_rd_inst\ : label is 1;
  attribute SIM_ASSERT_CHK of \gen_rst_ic.wrst_rd_inst\ : label is 0;
  attribute VERSION of \gen_rst_ic.wrst_rd_inst\ : label is 0;
  attribute XPM_CDC of \gen_rst_ic.wrst_rd_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \gen_rst_ic.wrst_rd_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \grdc.rd_data_count_i[8]_i_1\ : label is "soft_lutpair27";
begin
  \gen_rst_ic.fifo_rd_rst_ic_reg_0\ <= \^gen_rst_ic.fifo_rd_rst_ic_reg_0\;
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
      I0 => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      I1 => ram_empty_i,
      I2 => Q(1),
      I3 => rd_en,
      I4 => Q(0),
      O => SR(0)
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
      Q => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
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
\gen_rst_ic.rrst_wr_inst\: entity work.design_1_dma_splitter_wrapper_0_0_xpm_cdc_sync_rst
     port map (
      dest_clk => wr_clk,
      dest_rst => \gen_rst_ic.fifo_rd_rst_wr_i\,
      src_rst => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\
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
\gen_rst_ic.wrst_rd_inst\: entity work.\design_1_dma_splitter_wrapper_0_0_xpm_cdc_sync_rst__2\
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
      I1 => \count_value_i_reg[7]\,
      I2 => \^wrst_busy\,
      I3 => rst_d1,
      O => wr_pntr_plus1_pf_carry
    );
\grdc.rd_data_count_i[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      I1 => Q(0),
      I2 => Q(1),
      O => \gen_rst_ic.fifo_rd_rst_ic_reg_1\(0)
    );
\guf.underflow_i_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \guf.underflow_i_reg\,
      I1 => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      I2 => rd_en,
      O => underflow_i0
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
wr_rst_busy_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^wrst_busy\,
      I1 => rst_d1,
      O => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dma_splitter_wrapper_0_0_xpm_fifo_base is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 25 downto 0 );
    full : out STD_LOGIC;
    full_n : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 8 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 25 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 8 downto 0 );
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
  attribute CASCADE_HEIGHT of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 0;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is "0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is "16'b0000011100000111";
  attribute EN_AE : string;
  attribute EN_AE of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_OF : string;
  attribute EN_OF of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 0;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 0;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 256;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 6656;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 256;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 0;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is "1'b0";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is "xpm_fifo_base";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 251;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 251;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 7;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 10;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 9;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 9;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 8;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 26;
  attribute READ_MODE : integer;
  attribute READ_MODE of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 1;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is "0707";
  attribute VERSION : integer;
  attribute VERSION of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 26;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 9;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 9;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 8;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 8;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 3;
  attribute invalid : integer;
  attribute invalid of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 0;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is "soft";
  attribute stage1_valid : integer;
  attribute stage1_valid of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base : entity is 1;
end design_1_dma_splitter_wrapper_0_0_xpm_fifo_base;

architecture STRUCTURE of design_1_dma_splitter_wrapper_0_0_xpm_fifo_base is
  signal \<const0>\ : STD_LOGIC;
  signal count_value_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal diff_pntr_pe : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal diff_pntr_pf_q : STD_LOGIC_VECTOR ( 8 downto 4 );
  signal diff_pntr_pf_q0 : STD_LOGIC_VECTOR ( 8 downto 4 );
  signal \^empty\ : STD_LOGIC;
  signal empty_fwft_i0 : STD_LOGIC;
  signal \^full\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_5\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_6\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_7\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_8\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_10\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_11\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_12\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_13\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_14\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_15\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_16\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_17\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_9\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_5\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_6\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_7\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_8\ : STD_LOGIC;
  signal \gen_fwft.count_rst\ : STD_LOGIC;
  signal \gen_fwft.ram_regout_en\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_3\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_4\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_5\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[7]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3_n_0\ : STD_LOGIC;
  signal \grdc.diff_wr_rd_pntr_rdc\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \grdc.rd_data_count_i0\ : STD_LOGIC;
  signal \gwdc.diff_wr_rd_pntr1_out\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \next_fwft_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal overflow_i0 : STD_LOGIC;
  signal \^prog_empty\ : STD_LOGIC;
  signal \^prog_full\ : STD_LOGIC;
  signal ram_empty_i : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal ram_full_i0 : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rd_pntr_wr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rd_pntr_wr_cdc : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rd_pntr_wr_cdc_dc : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^rd_rst_busy\ : STD_LOGIC;
  signal rdp_inst_n_10 : STD_LOGIC;
  signal rdp_inst_n_19 : STD_LOGIC;
  signal rdp_inst_n_20 : STD_LOGIC;
  signal rdp_inst_n_21 : STD_LOGIC;
  signal rdp_inst_n_22 : STD_LOGIC;
  signal rdp_inst_n_23 : STD_LOGIC;
  signal rdp_inst_n_24 : STD_LOGIC;
  signal rdp_inst_n_25 : STD_LOGIC;
  signal rdp_inst_n_26 : STD_LOGIC;
  signal rdp_inst_n_27 : STD_LOGIC;
  signal rdp_inst_n_28 : STD_LOGIC;
  signal rdp_inst_n_29 : STD_LOGIC;
  signal rdp_inst_n_30 : STD_LOGIC;
  signal rdp_inst_n_31 : STD_LOGIC;
  signal rdp_inst_n_8 : STD_LOGIC;
  signal rdp_inst_n_9 : STD_LOGIC;
  signal rdpp1_inst_n_0 : STD_LOGIC;
  signal rdpp1_inst_n_1 : STD_LOGIC;
  signal rdpp1_inst_n_2 : STD_LOGIC;
  signal rdpp1_inst_n_3 : STD_LOGIC;
  signal rdpp1_inst_n_4 : STD_LOGIC;
  signal rdpp1_inst_n_5 : STD_LOGIC;
  signal rdpp1_inst_n_6 : STD_LOGIC;
  signal rdpp1_inst_n_7 : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal rst_d1_inst_n_1 : STD_LOGIC;
  signal src_in_bin00_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal underflow_i0 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal wr_pntr_plus1_pf : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal wr_pntr_plus1_pf_carry : STD_LOGIC;
  signal wr_pntr_rd_cdc : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wr_pntr_rd_cdc_dc : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal wrpp2_inst_n_0 : STD_LOGIC;
  signal wrpp2_inst_n_1 : STD_LOGIC;
  signal wrpp2_inst_n_2 : STD_LOGIC;
  signal wrpp2_inst_n_3 : STD_LOGIC;
  signal wrpp2_inst_n_4 : STD_LOGIC;
  signal wrpp2_inst_n_5 : STD_LOGIC;
  signal wrpp2_inst_n_6 : STD_LOGIC;
  signal wrpp2_inst_n_7 : STD_LOGIC;
  signal wrst_busy : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 25 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\ : label is "soft_lutpair29";
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
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 9;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 2;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 8;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 4;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 9;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 2;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 8;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \gen_fwft.empty_fwft_i_i_1\ : label is "soft_lutpair30";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 26;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 26;
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
  attribute \MEM.ADDRESS_SPACE\ : boolean;
  attribute \MEM.ADDRESS_SPACE\ of \gen_sdpram.xpm_memory_base_inst\ : label is std.standard.true;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ : integer;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 25;
  attribute \MEM.ADDRESS_SPACE_END\ : integer;
  attribute \MEM.ADDRESS_SPACE_END\ of \gen_sdpram.xpm_memory_base_inst\ : label is 511;
  attribute \MEM.CORE_MEMORY_WIDTH\ : integer;
  attribute \MEM.CORE_MEMORY_WIDTH\ of \gen_sdpram.xpm_memory_base_inst\ : label is 26;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 6656;
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
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 256;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "auto";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 26;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 26;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 26;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 26;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 26;
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
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 26;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 26;
  attribute RAM_DECOMP : string;
  attribute RAM_DECOMP of \gen_sdpram.xpm_memory_base_inst\ : label is "auto";
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 26;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 26;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
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
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 26;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 26;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 28;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 28;
  attribute SOFT_HLUTNM of \gen_sdpram.xpm_memory_base_inst_i_3\ : label is "soft_lutpair30";
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  data_valid <= \<const0>\;
  dbiterr <= \<const0>\;
  empty <= \^empty\;
  full <= \^full\;
  full_n <= \<const0>\;
  prog_empty <= \^prog_empty\;
  prog_full <= \^prog_full\;
  rd_rst_busy <= \^rd_rst_busy\;
  sbiterr <= \<const0>\;
  wr_ack <= \<const0>\;
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
      R => \^rd_rst_busy\
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
      R => \^rd_rst_busy\
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst\: entity work.\design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__parameterized1\
     port map (
      dest_clk => wr_clk,
      dest_out_bin(8 downto 0) => rd_pntr_wr_cdc_dc(8 downto 0),
      src_clk => rd_clk,
      src_in_bin(8) => rdp_inst_n_24,
      src_in_bin(7) => rdp_inst_n_25,
      src_in_bin(6) => rdp_inst_n_26,
      src_in_bin(5) => rdp_inst_n_27,
      src_in_bin(4) => rdp_inst_n_28,
      src_in_bin(3) => rdp_inst_n_29,
      src_in_bin(2) => rdp_inst_n_30,
      src_in_bin(1) => src_in_bin00_out(1),
      src_in_bin(0) => rdp_inst_n_31
    );
\gen_cdc_pntr.rd_pntr_cdc_inst\: entity work.design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray
     port map (
      dest_clk => wr_clk,
      dest_out_bin(7 downto 0) => rd_pntr_wr_cdc(7 downto 0),
      src_clk => rd_clk,
      src_in_bin(7 downto 0) => rd_pntr_ext(7 downto 0)
    );
\gen_cdc_pntr.rpw_gray_reg\: entity work.design_1_dma_splitter_wrapper_0_0_xpm_fifo_reg_vec
     port map (
      D(7 downto 0) => rd_pntr_wr_cdc(7 downto 0),
      Q(7 downto 0) => wr_pntr_plus1_pf(8 downto 1),
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(7) => wrpp2_inst_n_0,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(6) => wrpp2_inst_n_1,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(5) => wrpp2_inst_n_2,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(4) => wrpp2_inst_n_3,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(3) => wrpp2_inst_n_4,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(2) => wrpp2_inst_n_5,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(1) => wrpp2_inst_n_6,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(0) => wrpp2_inst_n_7,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\ => \^full\,
      ram_full_i0 => ram_full_i0,
      \reg_out_i_reg[7]_0\(7 downto 0) => rd_pntr_wr(7 downto 0),
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.rpw_gray_reg_dc\: entity work.\design_1_dma_splitter_wrapper_0_0_xpm_fifo_reg_vec__parameterized0\
     port map (
      D(8 downto 0) => rd_pntr_wr_cdc_dc(8 downto 0),
      Q(8) => \gen_cdc_pntr.rpw_gray_reg_dc_n_0\,
      Q(7) => \gen_cdc_pntr.rpw_gray_reg_dc_n_1\,
      Q(6) => \gen_cdc_pntr.rpw_gray_reg_dc_n_2\,
      Q(5) => \gen_cdc_pntr.rpw_gray_reg_dc_n_3\,
      Q(4) => \gen_cdc_pntr.rpw_gray_reg_dc_n_4\,
      Q(3) => \gen_cdc_pntr.rpw_gray_reg_dc_n_5\,
      Q(2) => \gen_cdc_pntr.rpw_gray_reg_dc_n_6\,
      Q(1) => \gen_cdc_pntr.rpw_gray_reg_dc_n_7\,
      Q(0) => \gen_cdc_pntr.rpw_gray_reg_dc_n_8\,
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.wpr_gray_reg\: entity work.design_1_dma_splitter_wrapper_0_0_xpm_fifo_reg_vec_0
     port map (
      D(7 downto 0) => wr_pntr_rd_cdc(7 downto 0),
      Q(1 downto 0) => curr_fwft_state(1 downto 0),
      \gen_pf_ic_rc.ram_empty_i_reg\(7 downto 0) => rd_pntr_ext(7 downto 0),
      \gen_pf_ic_rc.ram_empty_i_reg_0\(7) => rdpp1_inst_n_0,
      \gen_pf_ic_rc.ram_empty_i_reg_0\(6) => rdpp1_inst_n_1,
      \gen_pf_ic_rc.ram_empty_i_reg_0\(5) => rdpp1_inst_n_2,
      \gen_pf_ic_rc.ram_empty_i_reg_0\(4) => rdpp1_inst_n_3,
      \gen_pf_ic_rc.ram_empty_i_reg_0\(3) => rdpp1_inst_n_4,
      \gen_pf_ic_rc.ram_empty_i_reg_0\(2) => rdpp1_inst_n_5,
      \gen_pf_ic_rc.ram_empty_i_reg_0\(1) => rdpp1_inst_n_6,
      \gen_pf_ic_rc.ram_empty_i_reg_0\(0) => rdpp1_inst_n_7,
      ram_empty_i => ram_empty_i,
      ram_empty_i0 => ram_empty_i0,
      rd_clk => rd_clk,
      rd_en => rd_en,
      \reg_out_i_reg[0]_0\ => \^rd_rst_busy\,
      \reg_out_i_reg[7]_0\(7) => \gen_cdc_pntr.wpr_gray_reg_n_1\,
      \reg_out_i_reg[7]_0\(6) => \gen_cdc_pntr.wpr_gray_reg_n_2\,
      \reg_out_i_reg[7]_0\(5) => \gen_cdc_pntr.wpr_gray_reg_n_3\,
      \reg_out_i_reg[7]_0\(4) => \gen_cdc_pntr.wpr_gray_reg_n_4\,
      \reg_out_i_reg[7]_0\(3) => \gen_cdc_pntr.wpr_gray_reg_n_5\,
      \reg_out_i_reg[7]_0\(2) => \gen_cdc_pntr.wpr_gray_reg_n_6\,
      \reg_out_i_reg[7]_0\(1) => \gen_cdc_pntr.wpr_gray_reg_n_7\,
      \reg_out_i_reg[7]_0\(0) => \gen_cdc_pntr.wpr_gray_reg_n_8\
    );
\gen_cdc_pntr.wpr_gray_reg_dc\: entity work.\design_1_dma_splitter_wrapper_0_0_xpm_fifo_reg_vec__parameterized0_1\
     port map (
      D(8 downto 0) => \grdc.diff_wr_rd_pntr_rdc\(8 downto 0),
      DI(1) => rdp_inst_n_9,
      DI(0) => \gen_fwft.rdpp1_inst_n_5\,
      Q(8) => \gen_cdc_pntr.wpr_gray_reg_dc_n_9\,
      Q(7) => \gen_cdc_pntr.wpr_gray_reg_dc_n_10\,
      Q(6) => \gen_cdc_pntr.wpr_gray_reg_dc_n_11\,
      Q(5) => \gen_cdc_pntr.wpr_gray_reg_dc_n_12\,
      Q(4) => \gen_cdc_pntr.wpr_gray_reg_dc_n_13\,
      Q(3) => \gen_cdc_pntr.wpr_gray_reg_dc_n_14\,
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_15\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_16\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_17\,
      S(6) => rdp_inst_n_19,
      S(5) => rdp_inst_n_20,
      S(4) => rdp_inst_n_21,
      S(3) => rdp_inst_n_22,
      S(2) => rdp_inst_n_23,
      S(1) => \gen_fwft.rdpp1_inst_n_3\,
      S(0) => \gen_fwft.rdpp1_inst_n_4\,
      \grdc.rd_data_count_i_reg[7]\(0) => count_value_i(1),
      \grdc.rd_data_count_i_reg[7]_0\(5 downto 0) => rd_pntr_ext(6 downto 1),
      \grdc.rd_data_count_i_reg[8]\(0) => rdp_inst_n_10,
      rd_clk => rd_clk,
      \reg_out_i_reg[8]_0\ => \^rd_rst_busy\,
      \reg_out_i_reg[8]_1\(8 downto 0) => wr_pntr_rd_cdc_dc(8 downto 0)
    );
\gen_cdc_pntr.wr_pntr_cdc_dc_inst\: entity work.\design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__parameterized0\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(8 downto 0) => wr_pntr_rd_cdc_dc(8 downto 0),
      src_clk => wr_clk,
      src_in_bin(8 downto 0) => wr_pntr_ext(8 downto 0)
    );
\gen_cdc_pntr.wr_pntr_cdc_inst\: entity work.\design_1_dma_splitter_wrapper_0_0_xpm_cdc_gray__2\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(7 downto 0) => wr_pntr_rd_cdc(7 downto 0),
      src_clk => wr_clk,
      src_in_bin(7 downto 0) => wr_pntr_ext(7 downto 0)
    );
\gen_fwft.empty_fwft_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F380"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => \^empty\,
      O => empty_fwft_i0
    );
\gen_fwft.empty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => empty_fwft_i0,
      Q => \^empty\,
      S => \^rd_rst_busy\
    );
\gen_fwft.rdpp1_inst\: entity work.design_1_dma_splitter_wrapper_0_0_xpm_counter_updn
     port map (
      DI(0) => \gen_fwft.rdpp1_inst_n_5\,
      Q(1 downto 0) => count_value_i(1 downto 0),
      S(1) => \gen_fwft.rdpp1_inst_n_3\,
      S(0) => \gen_fwft.rdpp1_inst_n_4\,
      SR(0) => \gen_fwft.count_rst\,
      \count_value_i_reg[0]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \grdc.rd_data_count_i_reg[7]\(1 downto 0) => rd_pntr_ext(1 downto 0),
      \grdc.rd_data_count_i_reg[7]_0\(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_16\,
      \grdc.rd_data_count_i_reg[7]_0\(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_17\,
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en,
      src_in_bin(0) => src_in_bin00_out(1)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(0),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(1),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(2),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(3),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(4),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(5),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(6),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(7),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[7]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \^prog_empty\,
      I1 => \^empty\,
      I2 => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0\,
      I3 => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3_n_0\,
      O => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\
    );
\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\,
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\,
      I2 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\,
      I3 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\,
      O => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0\
    );
\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5]\,
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4]\,
      I2 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[7]\,
      I3 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6]\,
      O => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3_n_0\
    );
\gen_pf_ic_rc.gpe_ic.prog_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\,
      Q => \^prog_empty\,
      S => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(4),
      Q => diff_pntr_pf_q(4),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(5),
      Q => diff_pntr_pf_q(5),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(6),
      Q => diff_pntr_pf_q(6),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(7),
      Q => diff_pntr_pf_q(7),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(8),
      Q => diff_pntr_pf_q(8),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rst_d1_inst_n_1,
      Q => \^prog_full\,
      R => '0'
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => ram_full_i0,
      Q => \^full\,
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
      S => \^rd_rst_busy\
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.design_1_dma_splitter_wrapper_0_0_xpm_memory_base
     port map (
      addra(7 downto 0) => wr_pntr_ext(7 downto 0),
      addrb(7 downto 0) => rd_pntr_ext(7 downto 0),
      clka => '0',
      clkb => rd_clk,
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\,
      dina(25 downto 0) => din(25 downto 0),
      dinb(25 downto 0) => B"00000000000000000000000000",
      douta(25 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(25 downto 0),
      doutb(25 downto 0) => dout(25 downto 0),
      ena => '0',
      enb => rdp_inst_n_8,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => \gen_fwft.ram_regout_en\,
      rsta => '0',
      rstb => \^rd_rst_busy\,
      sbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\,
      sleep => sleep,
      wea(0) => wr_pntr_plus1_pf_carry,
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
\gof.overflow_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => overflow_i0,
      Q => overflow,
      R => '0'
    );
\grdc.rd_data_count_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(0),
      Q => rd_data_count(0),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(1),
      Q => rd_data_count(1),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(2),
      Q => rd_data_count(2),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(3),
      Q => rd_data_count(3),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(4),
      Q => rd_data_count(4),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(5),
      Q => rd_data_count(5),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(6),
      Q => rd_data_count(6),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(7),
      Q => rd_data_count(7),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(8),
      Q => rd_data_count(8),
      R => \grdc.rd_data_count_i0\
    );
\guf.underflow_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => underflow_i0,
      Q => underflow,
      R => '0'
    );
\gwdc.wr_data_count_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(0),
      Q => wr_data_count(0),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(1),
      Q => wr_data_count(1),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(2),
      Q => wr_data_count(2),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(3),
      Q => wr_data_count(3),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(4),
      Q => wr_data_count(4),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(5),
      Q => wr_data_count(5),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(6),
      Q => wr_data_count(6),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(7),
      Q => wr_data_count(7),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(8),
      Q => wr_data_count(8),
      R => wrst_busy
    );
rdp_inst: entity work.\design_1_dma_splitter_wrapper_0_0_xpm_counter_updn__parameterized0\
     port map (
      D(7 downto 0) => diff_pntr_pe(7 downto 0),
      DI(0) => rdp_inst_n_9,
      Q(7 downto 0) => rd_pntr_ext(7 downto 0),
      S(4) => rdp_inst_n_19,
      S(3) => rdp_inst_n_20,
      S(2) => rdp_inst_n_21,
      S(1) => rdp_inst_n_22,
      S(0) => rdp_inst_n_23,
      \count_value_i_reg[0]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[7]_0\(0) => rdp_inst_n_10,
      \count_value_i_reg[8]_0\ => \^rd_rst_busy\,
      enb => rdp_inst_n_8,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\(7) => \gen_cdc_pntr.wpr_gray_reg_n_1\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\(6) => \gen_cdc_pntr.wpr_gray_reg_n_2\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\(5) => \gen_cdc_pntr.wpr_gray_reg_n_3\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\(4) => \gen_cdc_pntr.wpr_gray_reg_n_4\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\(3) => \gen_cdc_pntr.wpr_gray_reg_n_5\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\(2) => \gen_cdc_pntr.wpr_gray_reg_n_6\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\(1) => \gen_cdc_pntr.wpr_gray_reg_n_7\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\(0) => \gen_cdc_pntr.wpr_gray_reg_n_8\,
      \grdc.rd_data_count_i_reg[7]\(1 downto 0) => count_value_i(1 downto 0),
      \grdc.rd_data_count_i_reg[8]\(7) => \gen_cdc_pntr.wpr_gray_reg_dc_n_9\,
      \grdc.rd_data_count_i_reg[8]\(6) => \gen_cdc_pntr.wpr_gray_reg_dc_n_10\,
      \grdc.rd_data_count_i_reg[8]\(5) => \gen_cdc_pntr.wpr_gray_reg_dc_n_11\,
      \grdc.rd_data_count_i_reg[8]\(4) => \gen_cdc_pntr.wpr_gray_reg_dc_n_12\,
      \grdc.rd_data_count_i_reg[8]\(3) => \gen_cdc_pntr.wpr_gray_reg_dc_n_13\,
      \grdc.rd_data_count_i_reg[8]\(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_14\,
      \grdc.rd_data_count_i_reg[8]\(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_15\,
      \grdc.rd_data_count_i_reg[8]\(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_16\,
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en,
      src_in_bin(7) => rdp_inst_n_24,
      src_in_bin(6) => rdp_inst_n_25,
      src_in_bin(5) => rdp_inst_n_26,
      src_in_bin(4) => rdp_inst_n_27,
      src_in_bin(3) => rdp_inst_n_28,
      src_in_bin(2) => rdp_inst_n_29,
      src_in_bin(1) => rdp_inst_n_30,
      src_in_bin(0) => rdp_inst_n_31
    );
rdpp1_inst: entity work.\design_1_dma_splitter_wrapper_0_0_xpm_counter_updn__parameterized1\
     port map (
      E(0) => rdp_inst_n_8,
      Q(7) => rdpp1_inst_n_0,
      Q(6) => rdpp1_inst_n_1,
      Q(5) => rdpp1_inst_n_2,
      Q(4) => rdpp1_inst_n_3,
      Q(3) => rdpp1_inst_n_4,
      Q(2) => rdpp1_inst_n_5,
      Q(1) => rdpp1_inst_n_6,
      Q(0) => rdpp1_inst_n_7,
      \count_value_i_reg[0]_0\ => \^rd_rst_busy\,
      \count_value_i_reg[1]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en
    );
rst_d1_inst: entity work.design_1_dma_splitter_wrapper_0_0_xpm_fifo_reg_bit
     port map (
      Q(4 downto 0) => diff_pntr_pf_q(8 downto 4),
      \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\ => \^full\,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ => rst_d1_inst_n_1,
      overflow_i0 => overflow_i0,
      prog_full => \^prog_full\,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wrst_busy => wrst_busy
    );
wrp_inst: entity work.\design_1_dma_splitter_wrapper_0_0_xpm_counter_updn__parameterized0_2\
     port map (
      D(8 downto 0) => \gwdc.diff_wr_rd_pntr1_out\(8 downto 0),
      Q(8 downto 0) => wr_pntr_ext(8 downto 0),
      \count_value_i_reg[6]_0\ => \^full\,
      \gwdc.wr_data_count_i_reg[8]\(8) => \gen_cdc_pntr.rpw_gray_reg_dc_n_0\,
      \gwdc.wr_data_count_i_reg[8]\(7) => \gen_cdc_pntr.rpw_gray_reg_dc_n_1\,
      \gwdc.wr_data_count_i_reg[8]\(6) => \gen_cdc_pntr.rpw_gray_reg_dc_n_2\,
      \gwdc.wr_data_count_i_reg[8]\(5) => \gen_cdc_pntr.rpw_gray_reg_dc_n_3\,
      \gwdc.wr_data_count_i_reg[8]\(4) => \gen_cdc_pntr.rpw_gray_reg_dc_n_4\,
      \gwdc.wr_data_count_i_reg[8]\(3) => \gen_cdc_pntr.rpw_gray_reg_dc_n_5\,
      \gwdc.wr_data_count_i_reg[8]\(2) => \gen_cdc_pntr.rpw_gray_reg_dc_n_6\,
      \gwdc.wr_data_count_i_reg[8]\(1) => \gen_cdc_pntr.rpw_gray_reg_dc_n_7\,
      \gwdc.wr_data_count_i_reg[8]\(0) => \gen_cdc_pntr.rpw_gray_reg_dc_n_8\,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wrst_busy => wrst_busy
    );
wrpp1_inst: entity work.\design_1_dma_splitter_wrapper_0_0_xpm_counter_updn__parameterized1_3\
     port map (
      D(4 downto 0) => diff_pntr_pf_q0(8 downto 4),
      Q(7 downto 0) => wr_pntr_plus1_pf(8 downto 1),
      \count_value_i_reg[6]_0\ => \^full\,
      \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\(7 downto 0) => rd_pntr_wr(7 downto 0),
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wrst_busy => wrst_busy
    );
wrpp2_inst: entity work.\design_1_dma_splitter_wrapper_0_0_xpm_counter_updn__parameterized2\
     port map (
      Q(7) => wrpp2_inst_n_0,
      Q(6) => wrpp2_inst_n_1,
      Q(5) => wrpp2_inst_n_2,
      Q(4) => wrpp2_inst_n_3,
      Q(3) => wrpp2_inst_n_4,
      Q(2) => wrpp2_inst_n_5,
      Q(1) => wrpp2_inst_n_6,
      Q(0) => wrpp2_inst_n_7,
      \count_value_i_reg[6]_0\ => \^full\,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wrst_busy => wrst_busy
    );
xpm_fifo_rst_inst: entity work.design_1_dma_splitter_wrapper_0_0_xpm_fifo_rst
     port map (
      Q(1 downto 0) => curr_fwft_state(1 downto 0),
      SR(0) => \gen_fwft.count_rst\,
      \count_value_i_reg[7]\ => \^full\,
      \gen_rst_ic.fifo_rd_rst_ic_reg_0\ => \^rd_rst_busy\,
      \gen_rst_ic.fifo_rd_rst_ic_reg_1\(0) => \grdc.rd_data_count_i0\,
      \guf.underflow_i_reg\ => \^empty\,
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en,
      rst => rst,
      rst_d1 => rst_d1,
      underflow_i0 => underflow_i0,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wr_rst_busy => wr_rst_busy,
      wrst_busy => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dma_splitter_wrapper_0_0_xpm_fifo_async is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 25 downto 0 );
    full : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 8 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 25 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 8 downto 0 );
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
  attribute CASCADE_HEIGHT of design_1_dma_splitter_wrapper_0_0_xpm_fifo_async : entity is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of design_1_dma_splitter_wrapper_0_0_xpm_fifo_async : entity is 2;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of design_1_dma_splitter_wrapper_0_0_xpm_fifo_async : entity is "0";
  attribute ECC_MODE : string;
  attribute ECC_MODE of design_1_dma_splitter_wrapper_0_0_xpm_fifo_async : entity is "no_ecc";
  attribute EN_ADV_FEATURE_ASYNC : string;
  attribute EN_ADV_FEATURE_ASYNC of design_1_dma_splitter_wrapper_0_0_xpm_fifo_async : entity is "16'b0000011100000111";
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of design_1_dma_splitter_wrapper_0_0_xpm_fifo_async : entity is "auto";
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of design_1_dma_splitter_wrapper_0_0_xpm_fifo_async : entity is 0;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of design_1_dma_splitter_wrapper_0_0_xpm_fifo_async : entity is 256;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of design_1_dma_splitter_wrapper_0_0_xpm_fifo_async : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dma_splitter_wrapper_0_0_xpm_fifo_async : entity is "xpm_fifo_async";
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of design_1_dma_splitter_wrapper_0_0_xpm_fifo_async : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of design_1_dma_splitter_wrapper_0_0_xpm_fifo_async : entity is 10;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of design_1_dma_splitter_wrapper_0_0_xpm_fifo_async : entity is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of design_1_dma_splitter_wrapper_0_0_xpm_fifo_async : entity is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of design_1_dma_splitter_wrapper_0_0_xpm_fifo_async : entity is 0;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of design_1_dma_splitter_wrapper_0_0_xpm_fifo_async : entity is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of design_1_dma_splitter_wrapper_0_0_xpm_fifo_async : entity is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of design_1_dma_splitter_wrapper_0_0_xpm_fifo_async : entity is 9;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of design_1_dma_splitter_wrapper_0_0_xpm_fifo_async : entity is 26;
  attribute READ_MODE : string;
  attribute READ_MODE of design_1_dma_splitter_wrapper_0_0_xpm_fifo_async : entity is "fwft";
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of design_1_dma_splitter_wrapper_0_0_xpm_fifo_async : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of design_1_dma_splitter_wrapper_0_0_xpm_fifo_async : entity is 1;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of design_1_dma_splitter_wrapper_0_0_xpm_fifo_async : entity is "0707";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of design_1_dma_splitter_wrapper_0_0_xpm_fifo_async : entity is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of design_1_dma_splitter_wrapper_0_0_xpm_fifo_async : entity is 26;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of design_1_dma_splitter_wrapper_0_0_xpm_fifo_async : entity is 9;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of design_1_dma_splitter_wrapper_0_0_xpm_fifo_async : entity is "TRUE";
  attribute dont_touch : string;
  attribute dont_touch of design_1_dma_splitter_wrapper_0_0_xpm_fifo_async : entity is "true";
end design_1_dma_splitter_wrapper_0_0_xpm_fifo_async;

architecture STRUCTURE of design_1_dma_splitter_wrapper_0_0_xpm_fifo_async is
  signal \<const0>\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_data_valid_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_wr_ack_UNCONNECTED\ : STD_LOGIC;
  attribute CASCADE_HEIGHT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute DOUT_RESET_VALUE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "0";
  attribute ECC_MODE_integer : integer;
  attribute ECC_MODE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "16'b0000011100000111";
  attribute EN_AE : string;
  attribute EN_AE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_OF : string;
  attribute EN_OF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute FIFO_MEMORY_TYPE_integer : integer;
  attribute FIFO_MEMORY_TYPE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 256;
  attribute FIFO_READ_LATENCY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 6656;
  attribute FIFO_WRITE_DEPTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 256;
  attribute FULL_RESET_VALUE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "soft";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 251;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 251;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 7;
  attribute PROG_EMPTY_THRESH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 10;
  attribute PROG_FULL_THRESH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 10;
  attribute RD_DATA_COUNT_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 9;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 9;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute READ_DATA_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 26;
  attribute READ_MODE_integer : integer;
  attribute READ_MODE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute RELATED_CLOCKS of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute USE_ADV_FEATURES of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "0707";
  attribute VERSION : integer;
  attribute VERSION of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute WRITE_DATA_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 26;
  attribute WR_DATA_COUNT_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 9;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 9;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute XPM_MODULE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 3;
  attribute invalid : integer;
  attribute invalid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  data_valid <= \<const0>\;
  dbiterr <= \<const0>\;
  sbiterr <= \<const0>\;
  wr_ack <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gnuram_async_fifo.xpm_fifo_base_inst\: entity work.design_1_dma_splitter_wrapper_0_0_xpm_fifo_base
     port map (
      almost_empty => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_empty_UNCONNECTED\,
      almost_full => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_full_UNCONNECTED\,
      data_valid => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_data_valid_UNCONNECTED\,
      dbiterr => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED\,
      din(25 downto 0) => din(25 downto 0),
      dout(25 downto 0) => dout(25 downto 0),
      empty => empty,
      full => full,
      full_n => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED\,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => overflow,
      prog_empty => prog_empty,
      prog_full => prog_full,
      rd_clk => rd_clk,
      rd_data_count(8 downto 0) => rd_data_count(8 downto 0),
      rd_en => rd_en,
      rd_rst_busy => rd_rst_busy,
      rst => rst,
      sbiterr => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED\,
      sleep => sleep,
      underflow => underflow,
      wr_ack => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_wr_ack_UNCONNECTED\,
      wr_clk => wr_clk,
      wr_data_count(8 downto 0) => wr_data_count(8 downto 0),
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dma_splitter_wrapper_0_0_generic_fifo is
  port (
    dout : out STD_LOGIC_VECTOR ( 25 downto 0 );
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_TValid_out : out STD_LOGIC;
    dma_ready_reg : out STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 25 downto 0 );
    s_TReady_out : in STD_LOGIC;
    rest : in STD_LOGIC;
    dma_valid : in STD_LOGIC;
    \FSM_sequential_state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_state_reg[0]\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_1\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_2\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_3\ : in STD_LOGIC;
    dma_ready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dma_splitter_wrapper_0_0_generic_fifo : entity is "generic_fifo";
end design_1_dma_splitter_wrapper_0_0_generic_fifo;

architecture STRUCTURE of design_1_dma_splitter_wrapper_0_0_generic_fifo is
  signal dma_ready_i_2_n_0 : STD_LOGIC;
  signal dma_ready_i_3_n_0 : STD_LOGIC;
  signal empty : STD_LOGIC;
  signal full : STD_LOGIC;
  signal wr_en : STD_LOGIC;
  signal xpm_fifo_async_inst_n_10 : STD_LOGIC;
  signal xpm_fifo_async_inst_n_12 : STD_LOGIC;
  signal xpm_fifo_async_inst_n_13 : STD_LOGIC;
  signal xpm_fifo_async_inst_n_2 : STD_LOGIC;
  signal xpm_fifo_async_inst_n_3 : STD_LOGIC;
  signal xpm_fifo_async_inst_n_4 : STD_LOGIC;
  signal xpm_fifo_async_inst_n_43 : STD_LOGIC;
  signal xpm_fifo_async_inst_n_44 : STD_LOGIC;
  signal xpm_fifo_async_inst_n_45 : STD_LOGIC;
  signal xpm_fifo_async_inst_n_46 : STD_LOGIC;
  signal xpm_fifo_async_inst_n_47 : STD_LOGIC;
  signal xpm_fifo_async_inst_n_48 : STD_LOGIC;
  signal xpm_fifo_async_inst_n_49 : STD_LOGIC;
  signal xpm_fifo_async_inst_n_5 : STD_LOGIC;
  signal xpm_fifo_async_inst_n_50 : STD_LOGIC;
  signal xpm_fifo_async_inst_n_51 : STD_LOGIC;
  signal xpm_fifo_async_inst_n_53 : STD_LOGIC;
  signal xpm_fifo_async_inst_n_54 : STD_LOGIC;
  signal xpm_fifo_async_inst_n_55 : STD_LOGIC;
  signal xpm_fifo_async_inst_n_6 : STD_LOGIC;
  signal xpm_fifo_async_inst_n_7 : STD_LOGIC;
  signal xpm_fifo_async_inst_n_8 : STD_LOGIC;
  signal xpm_fifo_async_inst_n_9 : STD_LOGIC;
  signal NLW_xpm_fifo_async_inst_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_async_inst_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_async_inst_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_async_inst_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_async_inst_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_async_inst_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_async_inst_wr_ack_UNCONNECTED : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \din[25]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of dma_ready_i_1 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \sample_counter[1]_i_1\ : label is "soft_lutpair32";
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of xpm_fifo_async_inst : label is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of xpm_fifo_async_inst : label is 2;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of xpm_fifo_async_inst : label is "0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of xpm_fifo_async_inst : label is 0;
  attribute EN_ADV_FEATURE_ASYNC : string;
  attribute EN_ADV_FEATURE_ASYNC of xpm_fifo_async_inst : label is "16'b0000011100000111";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of xpm_fifo_async_inst : label is 0;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of xpm_fifo_async_inst : label is 0;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of xpm_fifo_async_inst : label is 256;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of xpm_fifo_async_inst : label is 0;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of xpm_fifo_async_inst : label is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of xpm_fifo_async_inst : label is 10;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of xpm_fifo_async_inst : label is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of xpm_fifo_async_inst : label is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of xpm_fifo_async_inst : label is 0;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of xpm_fifo_async_inst : label is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of xpm_fifo_async_inst : label is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of xpm_fifo_async_inst : label is 9;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of xpm_fifo_async_inst : label is 26;
  attribute READ_MODE : integer;
  attribute READ_MODE of xpm_fifo_async_inst : label is 0;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of xpm_fifo_async_inst : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of xpm_fifo_async_inst : label is 1;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of xpm_fifo_async_inst : label is "0707";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of xpm_fifo_async_inst : label is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of xpm_fifo_async_inst : label is 26;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of xpm_fifo_async_inst : label is 9;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xpm_fifo_async_inst : label is "TRUE";
  attribute SOFT_HLUTNM of xpm_fifo_async_inst_i_1 : label is "soft_lutpair33";
begin
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => dma_ready_i_2_n_0,
      I1 => \FSM_sequential_state_reg[1]\(0),
      I2 => dma_valid,
      O => E(0)
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]\(1),
      I1 => \FSM_sequential_state_reg[1]\(0),
      I2 => full,
      O => D(0)
    );
\din[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => full,
      I1 => \FSM_sequential_state_reg[1]\(0),
      I2 => rest,
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\(0)
    );
dma_ready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8B8BB"
    )
        port map (
      I0 => dma_ready,
      I1 => rest,
      I2 => dma_ready_i_2_n_0,
      I3 => \FSM_sequential_state_reg[1]\(0),
      I4 => dma_valid,
      O => dma_ready_reg
    );
dma_ready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8A8A8A8A800"
    )
        port map (
      I0 => dma_ready_i_3_n_0,
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => \FSM_sequential_state_reg[0]_0\,
      I3 => \FSM_sequential_state_reg[0]_1\,
      I4 => \FSM_sequential_state_reg[0]_2\,
      I5 => \FSM_sequential_state_reg[0]_3\,
      O => dma_ready_i_2_n_0
    );
dma_ready_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]\(0),
      I1 => full,
      O => dma_ready_i_3_n_0
    );
s_TValid_out_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => empty,
      O => s_TValid_out
    );
\sample_counter[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1130"
    )
        port map (
      I0 => full,
      I1 => rest,
      I2 => dma_valid,
      I3 => \FSM_sequential_state_reg[1]\(0),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\
    );
xpm_fifo_async_inst: entity work.design_1_dma_splitter_wrapper_0_0_xpm_fifo_async
     port map (
      almost_empty => xpm_fifo_async_inst_n_54,
      almost_full => xpm_fifo_async_inst_n_13,
      data_valid => xpm_fifo_async_inst_n_55,
      dbiterr => NLW_xpm_fifo_async_inst_dbiterr_UNCONNECTED,
      din(25 downto 0) => Q(25 downto 0),
      dout(25 downto 0) => dout(25 downto 0),
      empty => empty,
      full => full,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => NLW_xpm_fifo_async_inst_overflow_UNCONNECTED,
      prog_empty => NLW_xpm_fifo_async_inst_prog_empty_UNCONNECTED,
      prog_full => NLW_xpm_fifo_async_inst_prog_full_UNCONNECTED,
      rd_clk => clk,
      rd_data_count(8) => xpm_fifo_async_inst_n_43,
      rd_data_count(7) => xpm_fifo_async_inst_n_44,
      rd_data_count(6) => xpm_fifo_async_inst_n_45,
      rd_data_count(5) => xpm_fifo_async_inst_n_46,
      rd_data_count(4) => xpm_fifo_async_inst_n_47,
      rd_data_count(3) => xpm_fifo_async_inst_n_48,
      rd_data_count(2) => xpm_fifo_async_inst_n_49,
      rd_data_count(1) => xpm_fifo_async_inst_n_50,
      rd_data_count(0) => xpm_fifo_async_inst_n_51,
      rd_en => s_TReady_out,
      rd_rst_busy => xpm_fifo_async_inst_n_53,
      rst => '0',
      sbiterr => NLW_xpm_fifo_async_inst_sbiterr_UNCONNECTED,
      sleep => '0',
      underflow => NLW_xpm_fifo_async_inst_underflow_UNCONNECTED,
      wr_ack => NLW_xpm_fifo_async_inst_wr_ack_UNCONNECTED,
      wr_clk => clk,
      wr_data_count(8) => xpm_fifo_async_inst_n_2,
      wr_data_count(7) => xpm_fifo_async_inst_n_3,
      wr_data_count(6) => xpm_fifo_async_inst_n_4,
      wr_data_count(5) => xpm_fifo_async_inst_n_5,
      wr_data_count(4) => xpm_fifo_async_inst_n_6,
      wr_data_count(3) => xpm_fifo_async_inst_n_7,
      wr_data_count(2) => xpm_fifo_async_inst_n_8,
      wr_data_count(1) => xpm_fifo_async_inst_n_9,
      wr_data_count(0) => xpm_fifo_async_inst_n_10,
      wr_en => wr_en,
      wr_rst_busy => xpm_fifo_async_inst_n_12
    );
xpm_fifo_async_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => full,
      I1 => \FSM_sequential_state_reg[1]\(0),
      I2 => \FSM_sequential_state_reg[1]\(1),
      O => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dma_splitter_wrapper_0_0_dma_splitter is
  port (
    dout : out STD_LOGIC_VECTOR ( 25 downto 0 );
    s_TValid_out : out STD_LOGIC;
    dma_ready : out STD_LOGIC;
    dma_valid : in STD_LOGIC;
    rest : in STD_LOGIC;
    clk : in STD_LOGIC;
    s_TReady_out : in STD_LOGIC;
    dma_data : in STD_LOGIC_VECTOR ( 95 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dma_splitter_wrapper_0_0_dma_splitter : entity is "dma_splitter";
end design_1_dma_splitter_wrapper_0_0_dma_splitter;

architecture STRUCTURE of design_1_dma_splitter_wrapper_0_0_dma_splitter is
  signal L : STD_LOGIC_VECTOR ( 0 to 23 );
  signal data0 : STD_LOGIC_VECTOR ( 25 downto 2 );
  signal data2 : STD_LOGIC_VECTOR ( 25 downto 2 );
  signal \din[0]_i_2_n_0\ : STD_LOGIC;
  signal \din[0]_i_3_n_0\ : STD_LOGIC;
  signal \din[0]_i_4_n_0\ : STD_LOGIC;
  signal \din[0]_i_5_n_0\ : STD_LOGIC;
  signal \din[0]_i_6_n_0\ : STD_LOGIC;
  signal \din[0]_i_7_n_0\ : STD_LOGIC;
  signal \din[0]_i_8_n_0\ : STD_LOGIC;
  signal \din[0]_i_9_n_0\ : STD_LOGIC;
  signal \din[25]_i_3_n_0\ : STD_LOGIC;
  signal \din_reg_n_0_[0]\ : STD_LOGIC;
  signal \din_reg_n_0_[10]\ : STD_LOGIC;
  signal \din_reg_n_0_[11]\ : STD_LOGIC;
  signal \din_reg_n_0_[12]\ : STD_LOGIC;
  signal \din_reg_n_0_[13]\ : STD_LOGIC;
  signal \din_reg_n_0_[14]\ : STD_LOGIC;
  signal \din_reg_n_0_[15]\ : STD_LOGIC;
  signal \din_reg_n_0_[16]\ : STD_LOGIC;
  signal \din_reg_n_0_[17]\ : STD_LOGIC;
  signal \din_reg_n_0_[18]\ : STD_LOGIC;
  signal \din_reg_n_0_[19]\ : STD_LOGIC;
  signal \din_reg_n_0_[1]\ : STD_LOGIC;
  signal \din_reg_n_0_[20]\ : STD_LOGIC;
  signal \din_reg_n_0_[21]\ : STD_LOGIC;
  signal \din_reg_n_0_[22]\ : STD_LOGIC;
  signal \din_reg_n_0_[23]\ : STD_LOGIC;
  signal \din_reg_n_0_[24]\ : STD_LOGIC;
  signal \din_reg_n_0_[25]\ : STD_LOGIC;
  signal \din_reg_n_0_[2]\ : STD_LOGIC;
  signal \din_reg_n_0_[3]\ : STD_LOGIC;
  signal \din_reg_n_0_[4]\ : STD_LOGIC;
  signal \din_reg_n_0_[5]\ : STD_LOGIC;
  signal \din_reg_n_0_[6]\ : STD_LOGIC;
  signal \din_reg_n_0_[7]\ : STD_LOGIC;
  signal \din_reg_n_0_[8]\ : STD_LOGIC;
  signal \din_reg_n_0_[9]\ : STD_LOGIC;
  signal \^dma_ready\ : STD_LOGIC;
  signal dma_ready_i_10_n_0 : STD_LOGIC;
  signal dma_ready_i_11_n_0 : STD_LOGIC;
  signal dma_ready_i_12_n_0 : STD_LOGIC;
  signal dma_ready_i_4_n_0 : STD_LOGIC;
  signal dma_ready_i_5_n_0 : STD_LOGIC;
  signal dma_ready_i_6_n_0 : STD_LOGIC;
  signal dma_ready_i_7_n_0 : STD_LOGIC;
  signal dma_ready_i_8_n_0 : STD_LOGIC;
  signal dma_ready_i_9_n_0 : STD_LOGIC;
  signal \dma_word[111]_i_1_n_0\ : STD_LOGIC;
  signal \dma_word_reg_n_0_[100]\ : STD_LOGIC;
  signal \dma_word_reg_n_0_[101]\ : STD_LOGIC;
  signal \dma_word_reg_n_0_[102]\ : STD_LOGIC;
  signal \dma_word_reg_n_0_[103]\ : STD_LOGIC;
  signal \dma_word_reg_n_0_[104]\ : STD_LOGIC;
  signal \dma_word_reg_n_0_[105]\ : STD_LOGIC;
  signal \dma_word_reg_n_0_[106]\ : STD_LOGIC;
  signal \dma_word_reg_n_0_[107]\ : STD_LOGIC;
  signal \dma_word_reg_n_0_[108]\ : STD_LOGIC;
  signal \dma_word_reg_n_0_[109]\ : STD_LOGIC;
  signal \dma_word_reg_n_0_[110]\ : STD_LOGIC;
  signal \dma_word_reg_n_0_[111]\ : STD_LOGIC;
  signal \dma_word_reg_n_0_[88]\ : STD_LOGIC;
  signal \dma_word_reg_n_0_[89]\ : STD_LOGIC;
  signal \dma_word_reg_n_0_[90]\ : STD_LOGIC;
  signal \dma_word_reg_n_0_[91]\ : STD_LOGIC;
  signal \dma_word_reg_n_0_[92]\ : STD_LOGIC;
  signal \dma_word_reg_n_0_[93]\ : STD_LOGIC;
  signal \dma_word_reg_n_0_[94]\ : STD_LOGIC;
  signal \dma_word_reg_n_0_[95]\ : STD_LOGIC;
  signal \dma_word_reg_n_0_[96]\ : STD_LOGIC;
  signal \dma_word_reg_n_0_[97]\ : STD_LOGIC;
  signal \dma_word_reg_n_0_[98]\ : STD_LOGIC;
  signal \dma_word_reg_n_0_[99]\ : STD_LOGIC;
  signal generic_fifo_inst_n_26 : STD_LOGIC;
  signal generic_fifo_inst_n_27 : STD_LOGIC;
  signal generic_fifo_inst_n_28 : STD_LOGIC;
  signal generic_fifo_inst_n_31 : STD_LOGIC;
  signal in5 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal p_0_out : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal sample_counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \sample_counter0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sample_counter0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sample_counter0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \sample_counter0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \sample_counter0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \sample_counter0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \sample_counter0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \sample_counter0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \sample_counter0_carry__0_n_0\ : STD_LOGIC;
  signal \sample_counter0_carry__0_n_1\ : STD_LOGIC;
  signal \sample_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \sample_counter0_carry__0_n_3\ : STD_LOGIC;
  signal \sample_counter0_carry__0_n_4\ : STD_LOGIC;
  signal \sample_counter0_carry__0_n_5\ : STD_LOGIC;
  signal \sample_counter0_carry__0_n_6\ : STD_LOGIC;
  signal \sample_counter0_carry__0_n_7\ : STD_LOGIC;
  signal \sample_counter0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \sample_counter0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \sample_counter0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \sample_counter0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \sample_counter0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \sample_counter0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \sample_counter0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \sample_counter0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \sample_counter0_carry__1_n_0\ : STD_LOGIC;
  signal \sample_counter0_carry__1_n_1\ : STD_LOGIC;
  signal \sample_counter0_carry__1_n_2\ : STD_LOGIC;
  signal \sample_counter0_carry__1_n_3\ : STD_LOGIC;
  signal \sample_counter0_carry__1_n_4\ : STD_LOGIC;
  signal \sample_counter0_carry__1_n_5\ : STD_LOGIC;
  signal \sample_counter0_carry__1_n_6\ : STD_LOGIC;
  signal \sample_counter0_carry__1_n_7\ : STD_LOGIC;
  signal \sample_counter0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \sample_counter0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \sample_counter0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \sample_counter0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \sample_counter0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \sample_counter0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \sample_counter0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \sample_counter0_carry__2_n_2\ : STD_LOGIC;
  signal \sample_counter0_carry__2_n_3\ : STD_LOGIC;
  signal \sample_counter0_carry__2_n_4\ : STD_LOGIC;
  signal \sample_counter0_carry__2_n_5\ : STD_LOGIC;
  signal \sample_counter0_carry__2_n_6\ : STD_LOGIC;
  signal \sample_counter0_carry__2_n_7\ : STD_LOGIC;
  signal sample_counter0_carry_i_1_n_0 : STD_LOGIC;
  signal sample_counter0_carry_i_2_n_0 : STD_LOGIC;
  signal sample_counter0_carry_i_3_n_0 : STD_LOGIC;
  signal sample_counter0_carry_i_4_n_0 : STD_LOGIC;
  signal sample_counter0_carry_i_5_n_0 : STD_LOGIC;
  signal sample_counter0_carry_i_6_n_0 : STD_LOGIC;
  signal sample_counter0_carry_i_7_n_0 : STD_LOGIC;
  signal sample_counter0_carry_i_8_n_0 : STD_LOGIC;
  signal sample_counter0_carry_n_0 : STD_LOGIC;
  signal sample_counter0_carry_n_1 : STD_LOGIC;
  signal sample_counter0_carry_n_2 : STD_LOGIC;
  signal sample_counter0_carry_n_3 : STD_LOGIC;
  signal sample_counter0_carry_n_4 : STD_LOGIC;
  signal sample_counter0_carry_n_5 : STD_LOGIC;
  signal sample_counter0_carry_n_6 : STD_LOGIC;
  signal sample_counter0_carry_n_7 : STD_LOGIC;
  signal \sample_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \sample_counter[1]_i_2_n_0\ : STD_LOGIC;
  signal \sample_counter[31]_i_1_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_sample_counter0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_sample_counter0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "e_data:01,e_wait:10,e_idle:00,iSTATE:10";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "e_data:01,e_wait:10,e_idle:00,iSTATE:10";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \din[0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \din[0]_i_5\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \din[0]_i_7\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \din[0]_i_8\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \din[25]_i_3\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of dma_ready_i_11 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of dma_ready_i_5 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of dma_ready_i_8 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of dma_ready_i_9 : label is "soft_lutpair35";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of sample_counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \sample_counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \sample_counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \sample_counter0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \sample_counter[0]_i_1\ : label is "soft_lutpair38";
  attribute mark_debug : string;
  attribute mark_debug of \sample_counter_reg[0]\ : label is "false";
  attribute mark_debug of \sample_counter_reg[10]\ : label is "false";
  attribute mark_debug of \sample_counter_reg[11]\ : label is "false";
  attribute mark_debug of \sample_counter_reg[12]\ : label is "false";
  attribute mark_debug of \sample_counter_reg[13]\ : label is "false";
  attribute mark_debug of \sample_counter_reg[14]\ : label is "false";
  attribute mark_debug of \sample_counter_reg[15]\ : label is "false";
  attribute mark_debug of \sample_counter_reg[16]\ : label is "false";
  attribute mark_debug of \sample_counter_reg[17]\ : label is "false";
  attribute mark_debug of \sample_counter_reg[18]\ : label is "false";
  attribute mark_debug of \sample_counter_reg[19]\ : label is "false";
  attribute mark_debug of \sample_counter_reg[1]\ : label is "false";
  attribute mark_debug of \sample_counter_reg[20]\ : label is "false";
  attribute mark_debug of \sample_counter_reg[21]\ : label is "false";
  attribute mark_debug of \sample_counter_reg[22]\ : label is "false";
  attribute mark_debug of \sample_counter_reg[23]\ : label is "false";
  attribute mark_debug of \sample_counter_reg[24]\ : label is "false";
  attribute mark_debug of \sample_counter_reg[25]\ : label is "false";
  attribute mark_debug of \sample_counter_reg[26]\ : label is "false";
  attribute mark_debug of \sample_counter_reg[27]\ : label is "false";
  attribute mark_debug of \sample_counter_reg[28]\ : label is "false";
  attribute mark_debug of \sample_counter_reg[29]\ : label is "false";
  attribute mark_debug of \sample_counter_reg[2]\ : label is "false";
  attribute mark_debug of \sample_counter_reg[30]\ : label is "false";
  attribute mark_debug of \sample_counter_reg[31]\ : label is "false";
  attribute mark_debug of \sample_counter_reg[3]\ : label is "false";
  attribute mark_debug of \sample_counter_reg[4]\ : label is "false";
  attribute mark_debug of \sample_counter_reg[5]\ : label is "false";
  attribute mark_debug of \sample_counter_reg[6]\ : label is "false";
  attribute mark_debug of \sample_counter_reg[7]\ : label is "false";
  attribute mark_debug of \sample_counter_reg[8]\ : label is "false";
  attribute mark_debug of \sample_counter_reg[9]\ : label is "false";
begin
  dma_ready <= \^dma_ready\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => \state__0\(0)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_27,
      D => \state__0\(0),
      Q => state(0),
      R => rest
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_27,
      D => \state__0\(1),
      Q => state(1),
      R => rest
    );
\din[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \din[0]_i_2_n_0\,
      I1 => sample_counter(0),
      I2 => \din[0]_i_3_n_0\,
      O => p_0_out(0)
    );
\din[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \din[0]_i_4_n_0\,
      I1 => \din[0]_i_5_n_0\,
      I2 => \din[0]_i_6_n_0\,
      I3 => \din[0]_i_7_n_0\,
      I4 => \din[0]_i_8_n_0\,
      I5 => \din[0]_i_9_n_0\,
      O => \din[0]_i_2_n_0\
    );
\din[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sample_counter(28),
      I1 => sample_counter(27),
      I2 => sample_counter(26),
      I3 => sample_counter(25),
      I4 => sample_counter(29),
      I5 => sample_counter(30),
      O => \din[0]_i_3_n_0\
    );
\din[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sample_counter(9),
      I1 => sample_counter(10),
      I2 => sample_counter(11),
      I3 => sample_counter(12),
      O => \din[0]_i_4_n_0\
    );
\din[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sample_counter(13),
      I1 => sample_counter(14),
      I2 => sample_counter(15),
      I3 => sample_counter(16),
      O => \din[0]_i_5_n_0\
    );
\din[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sample_counter(31),
      I1 => sample_counter(2),
      I2 => sample_counter(3),
      I3 => sample_counter(4),
      O => \din[0]_i_6_n_0\
    );
\din[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sample_counter(5),
      I1 => sample_counter(6),
      I2 => sample_counter(7),
      I3 => sample_counter(8),
      O => \din[0]_i_7_n_0\
    );
\din[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sample_counter(21),
      I1 => sample_counter(22),
      I2 => sample_counter(23),
      I3 => sample_counter(24),
      O => \din[0]_i_8_n_0\
    );
\din[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sample_counter(17),
      I1 => sample_counter(18),
      I2 => sample_counter(19),
      I3 => sample_counter(20),
      O => \din[0]_i_9_n_0\
    );
\din[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data2(10),
      I1 => \dma_word_reg_n_0_[96]\,
      I2 => \din[25]_i_3_n_0\,
      I3 => p_0_out(0),
      I4 => data0(10),
      I5 => L(15),
      O => p_0_out(10)
    );
\din[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data2(11),
      I1 => \dma_word_reg_n_0_[97]\,
      I2 => \din[25]_i_3_n_0\,
      I3 => p_0_out(0),
      I4 => data0(11),
      I5 => L(14),
      O => p_0_out(11)
    );
\din[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data2(12),
      I1 => \dma_word_reg_n_0_[98]\,
      I2 => \din[25]_i_3_n_0\,
      I3 => p_0_out(0),
      I4 => data0(12),
      I5 => L(13),
      O => p_0_out(12)
    );
\din[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data2(13),
      I1 => \dma_word_reg_n_0_[99]\,
      I2 => \din[25]_i_3_n_0\,
      I3 => p_0_out(0),
      I4 => data0(13),
      I5 => L(12),
      O => p_0_out(13)
    );
\din[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data2(14),
      I1 => \dma_word_reg_n_0_[100]\,
      I2 => \din[25]_i_3_n_0\,
      I3 => p_0_out(0),
      I4 => data0(14),
      I5 => L(11),
      O => p_0_out(14)
    );
\din[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data2(15),
      I1 => \dma_word_reg_n_0_[101]\,
      I2 => \din[25]_i_3_n_0\,
      I3 => p_0_out(0),
      I4 => data0(15),
      I5 => L(10),
      O => p_0_out(15)
    );
\din[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data2(16),
      I1 => \dma_word_reg_n_0_[102]\,
      I2 => \din[25]_i_3_n_0\,
      I3 => p_0_out(0),
      I4 => data0(16),
      I5 => L(9),
      O => p_0_out(16)
    );
\din[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data2(17),
      I1 => \dma_word_reg_n_0_[103]\,
      I2 => \din[25]_i_3_n_0\,
      I3 => p_0_out(0),
      I4 => data0(17),
      I5 => L(8),
      O => p_0_out(17)
    );
\din[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data2(18),
      I1 => \dma_word_reg_n_0_[104]\,
      I2 => \din[25]_i_3_n_0\,
      I3 => p_0_out(0),
      I4 => data0(18),
      I5 => L(7),
      O => p_0_out(18)
    );
\din[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data2(19),
      I1 => \dma_word_reg_n_0_[105]\,
      I2 => \din[25]_i_3_n_0\,
      I3 => p_0_out(0),
      I4 => data0(19),
      I5 => L(6),
      O => p_0_out(19)
    );
\din[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data2(20),
      I1 => \dma_word_reg_n_0_[106]\,
      I2 => \din[25]_i_3_n_0\,
      I3 => p_0_out(0),
      I4 => data0(20),
      I5 => L(5),
      O => p_0_out(20)
    );
\din[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data2(21),
      I1 => \dma_word_reg_n_0_[107]\,
      I2 => \din[25]_i_3_n_0\,
      I3 => p_0_out(0),
      I4 => data0(21),
      I5 => L(4),
      O => p_0_out(21)
    );
\din[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data2(22),
      I1 => \dma_word_reg_n_0_[108]\,
      I2 => \din[25]_i_3_n_0\,
      I3 => p_0_out(0),
      I4 => data0(22),
      I5 => L(3),
      O => p_0_out(22)
    );
\din[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data2(23),
      I1 => \dma_word_reg_n_0_[109]\,
      I2 => \din[25]_i_3_n_0\,
      I3 => p_0_out(0),
      I4 => data0(23),
      I5 => L(2),
      O => p_0_out(23)
    );
\din[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data2(24),
      I1 => \dma_word_reg_n_0_[110]\,
      I2 => \din[25]_i_3_n_0\,
      I3 => p_0_out(0),
      I4 => data0(24),
      I5 => L(1),
      O => p_0_out(24)
    );
\din[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data2(25),
      I1 => \dma_word_reg_n_0_[111]\,
      I2 => \din[25]_i_3_n_0\,
      I3 => p_0_out(0),
      I4 => data0(25),
      I5 => L(0),
      O => p_0_out(25)
    );
\din[25]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \din[0]_i_2_n_0\,
      I1 => sample_counter(1),
      I2 => \din[0]_i_3_n_0\,
      O => \din[25]_i_3_n_0\
    );
\din[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data2(2),
      I1 => \dma_word_reg_n_0_[88]\,
      I2 => \din[25]_i_3_n_0\,
      I3 => p_0_out(0),
      I4 => data0(2),
      I5 => L(23),
      O => p_0_out(2)
    );
\din[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data2(3),
      I1 => \dma_word_reg_n_0_[89]\,
      I2 => \din[25]_i_3_n_0\,
      I3 => p_0_out(0),
      I4 => data0(3),
      I5 => L(22),
      O => p_0_out(3)
    );
\din[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data2(4),
      I1 => \dma_word_reg_n_0_[90]\,
      I2 => \din[25]_i_3_n_0\,
      I3 => p_0_out(0),
      I4 => data0(4),
      I5 => L(21),
      O => p_0_out(4)
    );
\din[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data2(5),
      I1 => \dma_word_reg_n_0_[91]\,
      I2 => \din[25]_i_3_n_0\,
      I3 => p_0_out(0),
      I4 => data0(5),
      I5 => L(20),
      O => p_0_out(5)
    );
\din[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data2(6),
      I1 => \dma_word_reg_n_0_[92]\,
      I2 => \din[25]_i_3_n_0\,
      I3 => p_0_out(0),
      I4 => data0(6),
      I5 => L(19),
      O => p_0_out(6)
    );
\din[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data2(7),
      I1 => \dma_word_reg_n_0_[93]\,
      I2 => \din[25]_i_3_n_0\,
      I3 => p_0_out(0),
      I4 => data0(7),
      I5 => L(18),
      O => p_0_out(7)
    );
\din[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data2(8),
      I1 => \dma_word_reg_n_0_[94]\,
      I2 => \din[25]_i_3_n_0\,
      I3 => p_0_out(0),
      I4 => data0(8),
      I5 => L(17),
      O => p_0_out(8)
    );
\din[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data2(9),
      I1 => \dma_word_reg_n_0_[95]\,
      I2 => \din[25]_i_3_n_0\,
      I3 => p_0_out(0),
      I4 => data0(9),
      I5 => L(16),
      O => p_0_out(9)
    );
\din_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_28,
      D => p_0_out(0),
      Q => \din_reg_n_0_[0]\,
      R => '0'
    );
\din_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_28,
      D => p_0_out(10),
      Q => \din_reg_n_0_[10]\,
      R => '0'
    );
\din_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_28,
      D => p_0_out(11),
      Q => \din_reg_n_0_[11]\,
      R => '0'
    );
\din_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_28,
      D => p_0_out(12),
      Q => \din_reg_n_0_[12]\,
      R => '0'
    );
\din_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_28,
      D => p_0_out(13),
      Q => \din_reg_n_0_[13]\,
      R => '0'
    );
\din_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_28,
      D => p_0_out(14),
      Q => \din_reg_n_0_[14]\,
      R => '0'
    );
\din_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_28,
      D => p_0_out(15),
      Q => \din_reg_n_0_[15]\,
      R => '0'
    );
\din_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_28,
      D => p_0_out(16),
      Q => \din_reg_n_0_[16]\,
      R => '0'
    );
\din_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_28,
      D => p_0_out(17),
      Q => \din_reg_n_0_[17]\,
      R => '0'
    );
\din_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_28,
      D => p_0_out(18),
      Q => \din_reg_n_0_[18]\,
      R => '0'
    );
\din_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_28,
      D => p_0_out(19),
      Q => \din_reg_n_0_[19]\,
      R => '0'
    );
\din_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_28,
      D => '1',
      Q => \din_reg_n_0_[1]\,
      R => '0'
    );
\din_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_28,
      D => p_0_out(20),
      Q => \din_reg_n_0_[20]\,
      R => '0'
    );
\din_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_28,
      D => p_0_out(21),
      Q => \din_reg_n_0_[21]\,
      R => '0'
    );
\din_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_28,
      D => p_0_out(22),
      Q => \din_reg_n_0_[22]\,
      R => '0'
    );
\din_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_28,
      D => p_0_out(23),
      Q => \din_reg_n_0_[23]\,
      R => '0'
    );
\din_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_28,
      D => p_0_out(24),
      Q => \din_reg_n_0_[24]\,
      R => '0'
    );
\din_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_28,
      D => p_0_out(25),
      Q => \din_reg_n_0_[25]\,
      R => '0'
    );
\din_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_28,
      D => p_0_out(2),
      Q => \din_reg_n_0_[2]\,
      R => '0'
    );
\din_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_28,
      D => p_0_out(3),
      Q => \din_reg_n_0_[3]\,
      R => '0'
    );
\din_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_28,
      D => p_0_out(4),
      Q => \din_reg_n_0_[4]\,
      R => '0'
    );
\din_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_28,
      D => p_0_out(5),
      Q => \din_reg_n_0_[5]\,
      R => '0'
    );
\din_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_28,
      D => p_0_out(6),
      Q => \din_reg_n_0_[6]\,
      R => '0'
    );
\din_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_28,
      D => p_0_out(7),
      Q => \din_reg_n_0_[7]\,
      R => '0'
    );
\din_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_28,
      D => p_0_out(8),
      Q => \din_reg_n_0_[8]\,
      R => '0'
    );
\din_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_28,
      D => p_0_out(9),
      Q => \din_reg_n_0_[9]\,
      R => '0'
    );
dma_ready_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sample_counter(19),
      I1 => sample_counter(16),
      I2 => sample_counter(21),
      I3 => sample_counter(18),
      O => dma_ready_i_10_n_0
    );
dma_ready_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => sample_counter(0),
      I1 => sample_counter(24),
      I2 => sample_counter(17),
      O => dma_ready_i_11_n_0
    );
dma_ready_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sample_counter(13),
      I1 => sample_counter(12),
      I2 => sample_counter(11),
      I3 => sample_counter(10),
      I4 => sample_counter(31),
      I5 => sample_counter(1),
      O => dma_ready_i_12_n_0
    );
dma_ready_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \din[0]_i_3_n_0\,
      I1 => sample_counter(1),
      O => dma_ready_i_4_n_0
    );
dma_ready_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sample_counter(6),
      I1 => sample_counter(7),
      I2 => sample_counter(8),
      I3 => sample_counter(9),
      O => dma_ready_i_5_n_0
    );
dma_ready_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => dma_ready_i_8_n_0,
      I1 => dma_ready_i_9_n_0,
      I2 => \din[0]_i_3_n_0\,
      I3 => sample_counter(22),
      I4 => dma_ready_i_10_n_0,
      I5 => dma_ready_i_11_n_0,
      O => dma_ready_i_6_n_0
    );
dma_ready_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => dma_ready_i_12_n_0,
      I1 => sample_counter(5),
      I2 => sample_counter(4),
      I3 => sample_counter(3),
      I4 => sample_counter(2),
      O => dma_ready_i_7_n_0
    );
dma_ready_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sample_counter(15),
      I1 => sample_counter(14),
      O => dma_ready_i_8_n_0
    );
dma_ready_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sample_counter(20),
      I1 => sample_counter(23),
      O => dma_ready_i_9_n_0
    );
dma_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => generic_fifo_inst_n_31,
      Q => \^dma_ready\,
      R => '0'
    );
\dma_word[111]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state(0),
      I1 => dma_valid,
      I2 => rest,
      O => \dma_word[111]_i_1_n_0\
    );
\dma_word_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(0),
      Q => data0(2),
      R => '0'
    );
\dma_word_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(84),
      Q => \dma_word_reg_n_0_[100]\,
      R => '0'
    );
\dma_word_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(85),
      Q => \dma_word_reg_n_0_[101]\,
      R => '0'
    );
\dma_word_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(86),
      Q => \dma_word_reg_n_0_[102]\,
      R => '0'
    );
\dma_word_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(87),
      Q => \dma_word_reg_n_0_[103]\,
      R => '0'
    );
\dma_word_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(88),
      Q => \dma_word_reg_n_0_[104]\,
      R => '0'
    );
\dma_word_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(89),
      Q => \dma_word_reg_n_0_[105]\,
      R => '0'
    );
\dma_word_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(90),
      Q => \dma_word_reg_n_0_[106]\,
      R => '0'
    );
\dma_word_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(91),
      Q => \dma_word_reg_n_0_[107]\,
      R => '0'
    );
\dma_word_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(92),
      Q => \dma_word_reg_n_0_[108]\,
      R => '0'
    );
\dma_word_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(93),
      Q => \dma_word_reg_n_0_[109]\,
      R => '0'
    );
\dma_word_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(10),
      Q => data0(12),
      R => '0'
    );
\dma_word_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(94),
      Q => \dma_word_reg_n_0_[110]\,
      R => '0'
    );
\dma_word_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(95),
      Q => \dma_word_reg_n_0_[111]\,
      R => '0'
    );
\dma_word_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(11),
      Q => data0(13),
      R => '0'
    );
\dma_word_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(12),
      Q => data0(14),
      R => '0'
    );
\dma_word_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(13),
      Q => data0(15),
      R => '0'
    );
\dma_word_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(14),
      Q => data0(16),
      R => '0'
    );
\dma_word_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(15),
      Q => data0(17),
      R => '0'
    );
\dma_word_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(16),
      Q => data0(18),
      R => '0'
    );
\dma_word_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(17),
      Q => data0(19),
      R => '0'
    );
\dma_word_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(18),
      Q => data0(20),
      R => '0'
    );
\dma_word_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(19),
      Q => data0(21),
      R => '0'
    );
\dma_word_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(1),
      Q => data0(3),
      R => '0'
    );
\dma_word_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(20),
      Q => data0(22),
      R => '0'
    );
\dma_word_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(21),
      Q => data0(23),
      R => '0'
    );
\dma_word_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(22),
      Q => data0(24),
      R => '0'
    );
\dma_word_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(23),
      Q => data0(25),
      R => '0'
    );
\dma_word_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(24),
      Q => L(23),
      R => '0'
    );
\dma_word_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(25),
      Q => L(22),
      R => '0'
    );
\dma_word_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(26),
      Q => L(21),
      R => '0'
    );
\dma_word_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(27),
      Q => L(20),
      R => '0'
    );
\dma_word_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(28),
      Q => L(19),
      R => '0'
    );
\dma_word_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(29),
      Q => L(18),
      R => '0'
    );
\dma_word_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(2),
      Q => data0(4),
      R => '0'
    );
\dma_word_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(30),
      Q => L(17),
      R => '0'
    );
\dma_word_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(31),
      Q => L(16),
      R => '0'
    );
\dma_word_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(32),
      Q => L(15),
      R => '0'
    );
\dma_word_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(33),
      Q => L(14),
      R => '0'
    );
\dma_word_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(34),
      Q => L(13),
      R => '0'
    );
\dma_word_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(35),
      Q => L(12),
      R => '0'
    );
\dma_word_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(36),
      Q => L(11),
      R => '0'
    );
\dma_word_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(37),
      Q => L(10),
      R => '0'
    );
\dma_word_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(38),
      Q => L(9),
      R => '0'
    );
\dma_word_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(39),
      Q => L(8),
      R => '0'
    );
\dma_word_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(3),
      Q => data0(5),
      R => '0'
    );
\dma_word_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(40),
      Q => L(7),
      R => '0'
    );
\dma_word_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(41),
      Q => L(6),
      R => '0'
    );
\dma_word_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(42),
      Q => L(5),
      R => '0'
    );
\dma_word_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(43),
      Q => L(4),
      R => '0'
    );
\dma_word_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(44),
      Q => L(3),
      R => '0'
    );
\dma_word_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(45),
      Q => L(2),
      R => '0'
    );
\dma_word_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(46),
      Q => L(1),
      R => '0'
    );
\dma_word_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(47),
      Q => L(0),
      R => '0'
    );
\dma_word_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(4),
      Q => data0(6),
      R => '0'
    );
\dma_word_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(5),
      Q => data0(7),
      R => '0'
    );
\dma_word_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(48),
      Q => data2(2),
      R => '0'
    );
\dma_word_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(49),
      Q => data2(3),
      R => '0'
    );
\dma_word_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(50),
      Q => data2(4),
      R => '0'
    );
\dma_word_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(51),
      Q => data2(5),
      R => '0'
    );
\dma_word_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(52),
      Q => data2(6),
      R => '0'
    );
\dma_word_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(53),
      Q => data2(7),
      R => '0'
    );
\dma_word_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(6),
      Q => data0(8),
      R => '0'
    );
\dma_word_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(54),
      Q => data2(8),
      R => '0'
    );
\dma_word_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(55),
      Q => data2(9),
      R => '0'
    );
\dma_word_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(56),
      Q => data2(10),
      R => '0'
    );
\dma_word_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(57),
      Q => data2(11),
      R => '0'
    );
\dma_word_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(58),
      Q => data2(12),
      R => '0'
    );
\dma_word_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(59),
      Q => data2(13),
      R => '0'
    );
\dma_word_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(60),
      Q => data2(14),
      R => '0'
    );
\dma_word_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(61),
      Q => data2(15),
      R => '0'
    );
\dma_word_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(62),
      Q => data2(16),
      R => '0'
    );
\dma_word_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(63),
      Q => data2(17),
      R => '0'
    );
\dma_word_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(7),
      Q => data0(9),
      R => '0'
    );
\dma_word_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(64),
      Q => data2(18),
      R => '0'
    );
\dma_word_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(65),
      Q => data2(19),
      R => '0'
    );
\dma_word_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(66),
      Q => data2(20),
      R => '0'
    );
\dma_word_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(67),
      Q => data2(21),
      R => '0'
    );
\dma_word_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(68),
      Q => data2(22),
      R => '0'
    );
\dma_word_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(69),
      Q => data2(23),
      R => '0'
    );
\dma_word_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(70),
      Q => data2(24),
      R => '0'
    );
\dma_word_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(71),
      Q => data2(25),
      R => '0'
    );
\dma_word_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(72),
      Q => \dma_word_reg_n_0_[88]\,
      R => '0'
    );
\dma_word_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(73),
      Q => \dma_word_reg_n_0_[89]\,
      R => '0'
    );
\dma_word_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(8),
      Q => data0(10),
      R => '0'
    );
\dma_word_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(74),
      Q => \dma_word_reg_n_0_[90]\,
      R => '0'
    );
\dma_word_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(75),
      Q => \dma_word_reg_n_0_[91]\,
      R => '0'
    );
\dma_word_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(76),
      Q => \dma_word_reg_n_0_[92]\,
      R => '0'
    );
\dma_word_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(77),
      Q => \dma_word_reg_n_0_[93]\,
      R => '0'
    );
\dma_word_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(78),
      Q => \dma_word_reg_n_0_[94]\,
      R => '0'
    );
\dma_word_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(79),
      Q => \dma_word_reg_n_0_[95]\,
      R => '0'
    );
\dma_word_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(80),
      Q => \dma_word_reg_n_0_[96]\,
      R => '0'
    );
\dma_word_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(81),
      Q => \dma_word_reg_n_0_[97]\,
      R => '0'
    );
\dma_word_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(82),
      Q => \dma_word_reg_n_0_[98]\,
      R => '0'
    );
\dma_word_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(83),
      Q => \dma_word_reg_n_0_[99]\,
      R => '0'
    );
\dma_word_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dma_word[111]_i_1_n_0\,
      D => dma_data(9),
      Q => data0(11),
      R => '0'
    );
generic_fifo_inst: entity work.design_1_dma_splitter_wrapper_0_0_generic_fifo
     port map (
      D(0) => \state__0\(1),
      E(0) => generic_fifo_inst_n_27,
      \FSM_sequential_state_reg[0]\ => \din[0]_i_2_n_0\,
      \FSM_sequential_state_reg[0]_0\ => dma_ready_i_4_n_0,
      \FSM_sequential_state_reg[0]_1\ => dma_ready_i_5_n_0,
      \FSM_sequential_state_reg[0]_2\ => dma_ready_i_6_n_0,
      \FSM_sequential_state_reg[0]_3\ => dma_ready_i_7_n_0,
      \FSM_sequential_state_reg[1]\(1 downto 0) => state(1 downto 0),
      Q(25) => \din_reg_n_0_[25]\,
      Q(24) => \din_reg_n_0_[24]\,
      Q(23) => \din_reg_n_0_[23]\,
      Q(22) => \din_reg_n_0_[22]\,
      Q(21) => \din_reg_n_0_[21]\,
      Q(20) => \din_reg_n_0_[20]\,
      Q(19) => \din_reg_n_0_[19]\,
      Q(18) => \din_reg_n_0_[18]\,
      Q(17) => \din_reg_n_0_[17]\,
      Q(16) => \din_reg_n_0_[16]\,
      Q(15) => \din_reg_n_0_[15]\,
      Q(14) => \din_reg_n_0_[14]\,
      Q(13) => \din_reg_n_0_[13]\,
      Q(12) => \din_reg_n_0_[12]\,
      Q(11) => \din_reg_n_0_[11]\,
      Q(10) => \din_reg_n_0_[10]\,
      Q(9) => \din_reg_n_0_[9]\,
      Q(8) => \din_reg_n_0_[8]\,
      Q(7) => \din_reg_n_0_[7]\,
      Q(6) => \din_reg_n_0_[6]\,
      Q(5) => \din_reg_n_0_[5]\,
      Q(4) => \din_reg_n_0_[4]\,
      Q(3) => \din_reg_n_0_[3]\,
      Q(2) => \din_reg_n_0_[2]\,
      Q(1) => \din_reg_n_0_[1]\,
      Q(0) => \din_reg_n_0_[0]\,
      clk => clk,
      dma_ready => \^dma_ready\,
      dma_ready_reg => generic_fifo_inst_n_31,
      dma_valid => dma_valid,
      dout(25 downto 0) => dout(25 downto 0),
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ => generic_fifo_inst_n_26,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\(0) => generic_fifo_inst_n_28,
      rest => rest,
      s_TReady_out => s_TReady_out,
      s_TValid_out => s_TValid_out
    );
sample_counter0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => sample_counter(0),
      CI_TOP => '0',
      CO(7) => sample_counter0_carry_n_0,
      CO(6) => sample_counter0_carry_n_1,
      CO(5) => sample_counter0_carry_n_2,
      CO(4) => sample_counter0_carry_n_3,
      CO(3) => sample_counter0_carry_n_4,
      CO(2) => sample_counter0_carry_n_5,
      CO(1) => sample_counter0_carry_n_6,
      CO(0) => sample_counter0_carry_n_7,
      DI(7 downto 0) => sample_counter(8 downto 1),
      O(7 downto 0) => in5(8 downto 1),
      S(7) => sample_counter0_carry_i_1_n_0,
      S(6) => sample_counter0_carry_i_2_n_0,
      S(5) => sample_counter0_carry_i_3_n_0,
      S(4) => sample_counter0_carry_i_4_n_0,
      S(3) => sample_counter0_carry_i_5_n_0,
      S(2) => sample_counter0_carry_i_6_n_0,
      S(1) => sample_counter0_carry_i_7_n_0,
      S(0) => sample_counter0_carry_i_8_n_0
    );
\sample_counter0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => sample_counter0_carry_n_0,
      CI_TOP => '0',
      CO(7) => \sample_counter0_carry__0_n_0\,
      CO(6) => \sample_counter0_carry__0_n_1\,
      CO(5) => \sample_counter0_carry__0_n_2\,
      CO(4) => \sample_counter0_carry__0_n_3\,
      CO(3) => \sample_counter0_carry__0_n_4\,
      CO(2) => \sample_counter0_carry__0_n_5\,
      CO(1) => \sample_counter0_carry__0_n_6\,
      CO(0) => \sample_counter0_carry__0_n_7\,
      DI(7 downto 0) => sample_counter(16 downto 9),
      O(7 downto 0) => in5(16 downto 9),
      S(7) => \sample_counter0_carry__0_i_1_n_0\,
      S(6) => \sample_counter0_carry__0_i_2_n_0\,
      S(5) => \sample_counter0_carry__0_i_3_n_0\,
      S(4) => \sample_counter0_carry__0_i_4_n_0\,
      S(3) => \sample_counter0_carry__0_i_5_n_0\,
      S(2) => \sample_counter0_carry__0_i_6_n_0\,
      S(1) => \sample_counter0_carry__0_i_7_n_0\,
      S(0) => \sample_counter0_carry__0_i_8_n_0\
    );
\sample_counter0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_counter(16),
      O => \sample_counter0_carry__0_i_1_n_0\
    );
\sample_counter0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_counter(15),
      O => \sample_counter0_carry__0_i_2_n_0\
    );
\sample_counter0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_counter(14),
      O => \sample_counter0_carry__0_i_3_n_0\
    );
\sample_counter0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_counter(13),
      O => \sample_counter0_carry__0_i_4_n_0\
    );
\sample_counter0_carry__0_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_counter(12),
      O => \sample_counter0_carry__0_i_5_n_0\
    );
\sample_counter0_carry__0_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_counter(11),
      O => \sample_counter0_carry__0_i_6_n_0\
    );
\sample_counter0_carry__0_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_counter(10),
      O => \sample_counter0_carry__0_i_7_n_0\
    );
\sample_counter0_carry__0_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_counter(9),
      O => \sample_counter0_carry__0_i_8_n_0\
    );
\sample_counter0_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sample_counter0_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \sample_counter0_carry__1_n_0\,
      CO(6) => \sample_counter0_carry__1_n_1\,
      CO(5) => \sample_counter0_carry__1_n_2\,
      CO(4) => \sample_counter0_carry__1_n_3\,
      CO(3) => \sample_counter0_carry__1_n_4\,
      CO(2) => \sample_counter0_carry__1_n_5\,
      CO(1) => \sample_counter0_carry__1_n_6\,
      CO(0) => \sample_counter0_carry__1_n_7\,
      DI(7 downto 0) => sample_counter(24 downto 17),
      O(7 downto 0) => in5(24 downto 17),
      S(7) => \sample_counter0_carry__1_i_1_n_0\,
      S(6) => \sample_counter0_carry__1_i_2_n_0\,
      S(5) => \sample_counter0_carry__1_i_3_n_0\,
      S(4) => \sample_counter0_carry__1_i_4_n_0\,
      S(3) => \sample_counter0_carry__1_i_5_n_0\,
      S(2) => \sample_counter0_carry__1_i_6_n_0\,
      S(1) => \sample_counter0_carry__1_i_7_n_0\,
      S(0) => \sample_counter0_carry__1_i_8_n_0\
    );
\sample_counter0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_counter(24),
      O => \sample_counter0_carry__1_i_1_n_0\
    );
\sample_counter0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_counter(23),
      O => \sample_counter0_carry__1_i_2_n_0\
    );
\sample_counter0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_counter(22),
      O => \sample_counter0_carry__1_i_3_n_0\
    );
\sample_counter0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_counter(21),
      O => \sample_counter0_carry__1_i_4_n_0\
    );
\sample_counter0_carry__1_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_counter(20),
      O => \sample_counter0_carry__1_i_5_n_0\
    );
\sample_counter0_carry__1_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_counter(19),
      O => \sample_counter0_carry__1_i_6_n_0\
    );
\sample_counter0_carry__1_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_counter(18),
      O => \sample_counter0_carry__1_i_7_n_0\
    );
\sample_counter0_carry__1_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_counter(17),
      O => \sample_counter0_carry__1_i_8_n_0\
    );
\sample_counter0_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \sample_counter0_carry__1_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_sample_counter0_carry__2_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \sample_counter0_carry__2_n_2\,
      CO(4) => \sample_counter0_carry__2_n_3\,
      CO(3) => \sample_counter0_carry__2_n_4\,
      CO(2) => \sample_counter0_carry__2_n_5\,
      CO(1) => \sample_counter0_carry__2_n_6\,
      CO(0) => \sample_counter0_carry__2_n_7\,
      DI(7 downto 6) => B"00",
      DI(5 downto 0) => sample_counter(30 downto 25),
      O(7) => \NLW_sample_counter0_carry__2_O_UNCONNECTED\(7),
      O(6 downto 0) => in5(31 downto 25),
      S(7) => '0',
      S(6) => \sample_counter0_carry__2_i_1_n_0\,
      S(5) => \sample_counter0_carry__2_i_2_n_0\,
      S(4) => \sample_counter0_carry__2_i_3_n_0\,
      S(3) => \sample_counter0_carry__2_i_4_n_0\,
      S(2) => \sample_counter0_carry__2_i_5_n_0\,
      S(1) => \sample_counter0_carry__2_i_6_n_0\,
      S(0) => \sample_counter0_carry__2_i_7_n_0\
    );
\sample_counter0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_counter(31),
      O => \sample_counter0_carry__2_i_1_n_0\
    );
\sample_counter0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_counter(30),
      O => \sample_counter0_carry__2_i_2_n_0\
    );
\sample_counter0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_counter(29),
      O => \sample_counter0_carry__2_i_3_n_0\
    );
\sample_counter0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_counter(28),
      O => \sample_counter0_carry__2_i_4_n_0\
    );
\sample_counter0_carry__2_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_counter(27),
      O => \sample_counter0_carry__2_i_5_n_0\
    );
\sample_counter0_carry__2_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_counter(26),
      O => \sample_counter0_carry__2_i_6_n_0\
    );
\sample_counter0_carry__2_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_counter(25),
      O => \sample_counter0_carry__2_i_7_n_0\
    );
sample_counter0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_counter(8),
      O => sample_counter0_carry_i_1_n_0
    );
sample_counter0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_counter(7),
      O => sample_counter0_carry_i_2_n_0
    );
sample_counter0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_counter(6),
      O => sample_counter0_carry_i_3_n_0
    );
sample_counter0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_counter(5),
      O => sample_counter0_carry_i_4_n_0
    );
sample_counter0_carry_i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_counter(4),
      O => sample_counter0_carry_i_5_n_0
    );
sample_counter0_carry_i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_counter(3),
      O => sample_counter0_carry_i_6_n_0
    );
sample_counter0_carry_i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_counter(2),
      O => sample_counter0_carry_i_7_n_0
    );
sample_counter0_carry_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_counter(1),
      O => sample_counter0_carry_i_8_n_0
    );
\sample_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => state(0),
      I1 => sample_counter(0),
      O => \sample_counter[0]_i_1_n_0\
    );
\sample_counter[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => in5(1),
      I1 => state(0),
      O => \sample_counter[1]_i_2_n_0\
    );
\sample_counter[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => dma_valid,
      I1 => rest,
      I2 => state(0),
      O => \sample_counter[31]_i_1_n_0\
    );
\sample_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_26,
      D => \sample_counter[0]_i_1_n_0\,
      Q => sample_counter(0),
      R => '0'
    );
\sample_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_26,
      D => in5(10),
      Q => sample_counter(10),
      R => \sample_counter[31]_i_1_n_0\
    );
\sample_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_26,
      D => in5(11),
      Q => sample_counter(11),
      R => \sample_counter[31]_i_1_n_0\
    );
\sample_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_26,
      D => in5(12),
      Q => sample_counter(12),
      R => \sample_counter[31]_i_1_n_0\
    );
\sample_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_26,
      D => in5(13),
      Q => sample_counter(13),
      R => \sample_counter[31]_i_1_n_0\
    );
\sample_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_26,
      D => in5(14),
      Q => sample_counter(14),
      R => \sample_counter[31]_i_1_n_0\
    );
\sample_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_26,
      D => in5(15),
      Q => sample_counter(15),
      R => \sample_counter[31]_i_1_n_0\
    );
\sample_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_26,
      D => in5(16),
      Q => sample_counter(16),
      R => \sample_counter[31]_i_1_n_0\
    );
\sample_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_26,
      D => in5(17),
      Q => sample_counter(17),
      R => \sample_counter[31]_i_1_n_0\
    );
\sample_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_26,
      D => in5(18),
      Q => sample_counter(18),
      R => \sample_counter[31]_i_1_n_0\
    );
\sample_counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_26,
      D => in5(19),
      Q => sample_counter(19),
      R => \sample_counter[31]_i_1_n_0\
    );
\sample_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_26,
      D => \sample_counter[1]_i_2_n_0\,
      Q => sample_counter(1),
      R => '0'
    );
\sample_counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_26,
      D => in5(20),
      Q => sample_counter(20),
      R => \sample_counter[31]_i_1_n_0\
    );
\sample_counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_26,
      D => in5(21),
      Q => sample_counter(21),
      R => \sample_counter[31]_i_1_n_0\
    );
\sample_counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_26,
      D => in5(22),
      Q => sample_counter(22),
      R => \sample_counter[31]_i_1_n_0\
    );
\sample_counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_26,
      D => in5(23),
      Q => sample_counter(23),
      R => \sample_counter[31]_i_1_n_0\
    );
\sample_counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_26,
      D => in5(24),
      Q => sample_counter(24),
      R => \sample_counter[31]_i_1_n_0\
    );
\sample_counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_26,
      D => in5(25),
      Q => sample_counter(25),
      R => \sample_counter[31]_i_1_n_0\
    );
\sample_counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_26,
      D => in5(26),
      Q => sample_counter(26),
      R => \sample_counter[31]_i_1_n_0\
    );
\sample_counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_26,
      D => in5(27),
      Q => sample_counter(27),
      R => \sample_counter[31]_i_1_n_0\
    );
\sample_counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_26,
      D => in5(28),
      Q => sample_counter(28),
      R => \sample_counter[31]_i_1_n_0\
    );
\sample_counter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_26,
      D => in5(29),
      Q => sample_counter(29),
      R => \sample_counter[31]_i_1_n_0\
    );
\sample_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_26,
      D => in5(2),
      Q => sample_counter(2),
      R => \sample_counter[31]_i_1_n_0\
    );
\sample_counter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_26,
      D => in5(30),
      Q => sample_counter(30),
      R => \sample_counter[31]_i_1_n_0\
    );
\sample_counter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_26,
      D => in5(31),
      Q => sample_counter(31),
      R => \sample_counter[31]_i_1_n_0\
    );
\sample_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_26,
      D => in5(3),
      Q => sample_counter(3),
      R => \sample_counter[31]_i_1_n_0\
    );
\sample_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_26,
      D => in5(4),
      Q => sample_counter(4),
      R => \sample_counter[31]_i_1_n_0\
    );
\sample_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_26,
      D => in5(5),
      Q => sample_counter(5),
      R => \sample_counter[31]_i_1_n_0\
    );
\sample_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_26,
      D => in5(6),
      Q => sample_counter(6),
      R => \sample_counter[31]_i_1_n_0\
    );
\sample_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_26,
      D => in5(7),
      Q => sample_counter(7),
      R => \sample_counter[31]_i_1_n_0\
    );
\sample_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_26,
      D => in5(8),
      Q => sample_counter(8),
      R => \sample_counter[31]_i_1_n_0\
    );
\sample_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => generic_fifo_inst_n_26,
      D => in5(9),
      Q => sample_counter(9),
      R => \sample_counter[31]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dma_splitter_wrapper_0_0_dma_splitter_wrapper is
  port (
    dout : out STD_LOGIC_VECTOR ( 25 downto 0 );
    s_TValid_out : out STD_LOGIC;
    dma_ready : out STD_LOGIC;
    dma_valid : in STD_LOGIC;
    rest : in STD_LOGIC;
    clk : in STD_LOGIC;
    s_TReady_out : in STD_LOGIC;
    dma_data : in STD_LOGIC_VECTOR ( 95 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dma_splitter_wrapper_0_0_dma_splitter_wrapper : entity is "dma_splitter_wrapper";
end design_1_dma_splitter_wrapper_0_0_dma_splitter_wrapper;

architecture STRUCTURE of design_1_dma_splitter_wrapper_0_0_dma_splitter_wrapper is
begin
dma_splitter_inst: entity work.design_1_dma_splitter_wrapper_0_0_dma_splitter
     port map (
      clk => clk,
      dma_data(95 downto 0) => dma_data(95 downto 0),
      dma_ready => dma_ready,
      dma_valid => dma_valid,
      dout(25 downto 0) => dout(25 downto 0),
      rest => rest,
      s_TReady_out => s_TReady_out,
      s_TValid_out => s_TValid_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dma_splitter_wrapper_0_0 is
  port (
    clk : in STD_LOGIC;
    rest : in STD_LOGIC;
    dma_valid : in STD_LOGIC;
    dma_data : in STD_LOGIC_VECTOR ( 127 downto 0 );
    dma_last : in STD_LOGIC;
    dma_ready : out STD_LOGIC;
    s_TValid_out : out STD_LOGIC;
    s_TLast_out : out STD_LOGIC;
    s_TData_out : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_TID_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_TReady_out : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_dma_splitter_wrapper_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_dma_splitter_wrapper_0_0 : entity is "design_1_dma_splitter_wrapper_0_0,dma_splitter_wrapper,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_dma_splitter_wrapper_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_dma_splitter_wrapper_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_dma_splitter_wrapper_0_0 : entity is "dma_splitter_wrapper,Vivado 2023.2";
end design_1_dma_splitter_wrapper_0_0;

architecture STRUCTURE of design_1_dma_splitter_wrapper_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF dma:s_out, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute x_interface_info of dma_last : signal is "xilinx.com:interface:axis:1.0 dma TLAST";
  attribute x_interface_info of dma_valid : signal is "xilinx.com:interface:axis:1.0 dma TVALID";
  attribute x_interface_info of s_TLast_out : signal is "xilinx.com:interface:axis:1.0 s_out TLAST";
  attribute x_interface_info of s_TReady_out : signal is "xilinx.com:interface:axis:1.0 s_out TREADY";
  attribute x_interface_info of s_TValid_out : signal is "xilinx.com:interface:axis:1.0 s_out TVALID";
  attribute x_interface_parameter of s_TValid_out : signal is "XIL_INTERFACENAME s_out, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 2, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of dma_data : signal is "xilinx.com:interface:axis:1.0 dma TDATA";
  attribute x_interface_info of s_TData_out : signal is "xilinx.com:interface:axis:1.0 s_out TDATA";
  attribute x_interface_info of s_TID_out : signal is "xilinx.com:interface:axis:1.0 s_out TID";
begin
  s_TLast_out <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_dma_splitter_wrapper_0_0_dma_splitter_wrapper
     port map (
      clk => clk,
      dma_data(95 downto 48) => dma_data(111 downto 64),
      dma_data(47 downto 0) => dma_data(47 downto 0),
      dma_ready => dma_ready,
      dma_valid => dma_valid,
      dout(25 downto 2) => s_TData_out(23 downto 0),
      dout(1 downto 0) => s_TID_out(1 downto 0),
      rest => rest,
      s_TReady_out => s_TReady_out,
      s_TValid_out => s_TValid_out
    );
end STRUCTURE;
