-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Wed Apr 16 14:59:37 2025
-- Host        : ecelwavw244605 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/nle2435/Vendingggg/Vendingggg.srcs/sources_1/bd/design_1/ip/design_1_vendd_0_0/design_1_vendd_0_0_sim_netlist.vhdl
-- Design      : design_1_vendd_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticpg236-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_vendd_0_0_anode_d is
  port (
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ca : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ce : in STD_LOGIC;
    clk : in STD_LOGIC;
    clr : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_vendd_0_0_anode_d : entity is "anode_d";
end design_1_vendd_0_0_anode_d;

architecture STRUCTURE of design_1_vendd_0_0_anode_d is
  signal \S[0]_i_1_n_0\ : STD_LOGIC;
  signal \S[1]_i_1_n_0\ : STD_LOGIC;
  signal clk_en : STD_LOGIC;
  signal s : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sel0 : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \S[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \S[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \an[0]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \an[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \an[2]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ca[6]_INST_0_i_1\ : label is "soft_lutpair0";
begin
\S[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => clk_en,
      I1 => ce,
      I2 => s(0),
      O => \S[0]_i_1_n_0\
    );
\S[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => s(0),
      I1 => ce,
      I2 => clk_en,
      I3 => s(1),
      O => \S[1]_i_1_n_0\
    );
\S_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clr,
      D => \S[0]_i_1_n_0\,
      Q => s(0)
    );
\S_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clr,
      D => \S[1]_i_1_n_0\,
      Q => s(1)
    );
\an[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s(0),
      I1 => s(1),
      O => an(0)
    );
\an[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s(1),
      I1 => s(0),
      O => an(1)
    );
\an[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s(0),
      I1 => s(1),
      O => an(2)
    );
\an[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s(0),
      I1 => s(1),
      O => an(3)
    );
\ca[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFCFCFCFCFEFDFDF"
    )
        port map (
      I0 => Q(3),
      I1 => s(0),
      I2 => s(1),
      I3 => sel0(0),
      I4 => Q(2),
      I5 => Q(1),
      O => ca(0)
    );
\ca[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDF0010EFDF0000"
    )
        port map (
      I0 => Q(3),
      I1 => s(0),
      I2 => s(1),
      I3 => Q(2),
      I4 => sel0(0),
      I5 => Q(1),
      O => ca(1)
    );
\ca[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFDFFF00100000"
    )
        port map (
      I0 => Q(3),
      I1 => s(0),
      I2 => s(1),
      I3 => Q(1),
      I4 => Q(2),
      I5 => sel0(0),
      O => ca(2)
    );
\ca[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCF0020CFDF1000"
    )
        port map (
      I0 => Q(3),
      I1 => s(0),
      I2 => s(1),
      I3 => Q(2),
      I4 => sel0(0),
      I5 => Q(1),
      O => ca(3)
    );
\ca[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020002000100000"
    )
        port map (
      I0 => Q(3),
      I1 => s(0),
      I2 => s(1),
      I3 => sel0(0),
      I4 => Q(1),
      I5 => Q(2),
      O => ca(4)
    );
\ca[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020300010002000"
    )
        port map (
      I0 => Q(3),
      I1 => s(0),
      I2 => s(1),
      I3 => Q(2),
      I4 => sel0(0),
      I5 => Q(1),
      O => ca(5)
    );
\ca[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFEF0000EFDF1000"
    )
        port map (
      I0 => Q(3),
      I1 => s(0),
      I2 => s(1),
      I3 => Q(2),
      I4 => sel0(0),
      I5 => Q(1),
      O => ca(6)
    );
\ca[6]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E020"
    )
        port map (
      I0 => Q(0),
      I1 => s(0),
      I2 => s(1),
      I3 => Q(4),
      O => sel0(0)
    );
clk_en_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clr,
      D => ce,
      Q => clk_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_vendd_0_0_clock_1k is
  port (
    ce : out STD_LOGIC;
    clk : in STD_LOGIC;
    clr : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_vendd_0_0_clock_1k : entity is "clock_1k";
end design_1_vendd_0_0_clock_1k;

architecture STRUCTURE of design_1_vendd_0_0_clock_1k is
  signal \bruh_reg_n_0_[0]\ : STD_LOGIC;
  signal \c_e_i_1__0_n_0\ : STD_LOGIC;
  signal \^ce\ : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \count[31]_i_10__0_n_0\ : STD_LOGIC;
  signal \count[31]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[31]_i_3__0_n_0\ : STD_LOGIC;
  signal \count[31]_i_4__0_n_0\ : STD_LOGIC;
  signal \count[31]_i_5__0_n_0\ : STD_LOGIC;
  signal \count[31]_i_6__0_n_0\ : STD_LOGIC;
  signal \count[31]_i_7__0_n_0\ : STD_LOGIC;
  signal \count[31]_i_8__0_n_0\ : STD_LOGIC;
  signal \count[31]_i_9__0_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[16]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_reg[16]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_reg[16]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_reg[16]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[16]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg[20]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[20]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_reg[20]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_reg[20]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_reg[20]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[20]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[20]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[20]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg[24]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[24]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_reg[24]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_reg[24]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_reg[24]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[24]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[24]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[24]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg[28]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[28]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_reg[28]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_reg[28]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_reg[28]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[28]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[28]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[28]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg[31]_i_2__0_n_2\ : STD_LOGIC;
  signal \count_reg[31]_i_2__0_n_3\ : STD_LOGIC;
  signal \count_reg[31]_i_2__0_n_5\ : STD_LOGIC;
  signal \count_reg[31]_i_2__0_n_6\ : STD_LOGIC;
  signal \count_reg[31]_i_2__0_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[10]\ : STD_LOGIC;
  signal \count_reg_n_0_[11]\ : STD_LOGIC;
  signal \count_reg_n_0_[12]\ : STD_LOGIC;
  signal \count_reg_n_0_[13]\ : STD_LOGIC;
  signal \count_reg_n_0_[14]\ : STD_LOGIC;
  signal \count_reg_n_0_[15]\ : STD_LOGIC;
  signal \count_reg_n_0_[16]\ : STD_LOGIC;
  signal \count_reg_n_0_[17]\ : STD_LOGIC;
  signal \count_reg_n_0_[18]\ : STD_LOGIC;
  signal \count_reg_n_0_[19]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[20]\ : STD_LOGIC;
  signal \count_reg_n_0_[21]\ : STD_LOGIC;
  signal \count_reg_n_0_[22]\ : STD_LOGIC;
  signal \count_reg_n_0_[23]\ : STD_LOGIC;
  signal \count_reg_n_0_[24]\ : STD_LOGIC;
  signal \count_reg_n_0_[25]\ : STD_LOGIC;
  signal \count_reg_n_0_[26]\ : STD_LOGIC;
  signal \count_reg_n_0_[27]\ : STD_LOGIC;
  signal \count_reg_n_0_[28]\ : STD_LOGIC;
  signal \count_reg_n_0_[29]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[30]\ : STD_LOGIC;
  signal \count_reg_n_0_[31]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_reg_n_0_[8]\ : STD_LOGIC;
  signal \count_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_count_reg[31]_i_2__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count_reg[31]_i_2__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[31]_i_4__0\ : label is "soft_lutpair3";
begin
  ce <= \^ce\;
\bruh_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count[31]_i_1__0_n_0\,
      Q => \bruh_reg_n_0_[0]\,
      R => '0'
    );
\c_e_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => clr,
      I1 => \bruh_reg_n_0_[0]\,
      I2 => \^ce\,
      O => \c_e_i_1__0_n_0\
    );
c_e_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clr,
      D => \c_e_i_1__0_n_0\,
      Q => \^ce\
    );
\count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      O => count(0)
    );
\count[31]_i_10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \count_reg_n_0_[21]\,
      I1 => \count_reg_n_0_[20]\,
      I2 => \count_reg_n_0_[23]\,
      I3 => \count_reg_n_0_[22]\,
      O => \count[31]_i_10__0_n_0\
    );
\count[31]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \count[31]_i_3__0_n_0\,
      I1 => \count[31]_i_4__0_n_0\,
      I2 => \count[31]_i_5__0_n_0\,
      I3 => \count[31]_i_6__0_n_0\,
      O => \count[31]_i_1__0_n_0\
    );
\count[31]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => \count_reg_n_0_[10]\,
      I1 => \count_reg_n_0_[11]\,
      I2 => \count_reg_n_0_[8]\,
      I3 => \count_reg_n_0_[9]\,
      I4 => \count[31]_i_7__0_n_0\,
      O => \count[31]_i_3__0_n_0\
    );
\count[31]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[3]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[1]\,
      I4 => \count[31]_i_8__0_n_0\,
      O => \count[31]_i_4__0_n_0\
    );
\count[31]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \count_reg_n_0_[26]\,
      I1 => \count_reg_n_0_[27]\,
      I2 => \count_reg_n_0_[24]\,
      I3 => \count_reg_n_0_[25]\,
      I4 => \count[31]_i_9__0_n_0\,
      O => \count[31]_i_5__0_n_0\
    );
\count[31]_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \count_reg_n_0_[18]\,
      I1 => \count_reg_n_0_[19]\,
      I2 => \count_reg_n_0_[16]\,
      I3 => \count_reg_n_0_[17]\,
      I4 => \count[31]_i_10__0_n_0\,
      O => \count[31]_i_6__0_n_0\
    );
\count[31]_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \count_reg_n_0_[13]\,
      I1 => \count_reg_n_0_[12]\,
      I2 => \count_reg_n_0_[15]\,
      I3 => \count_reg_n_0_[14]\,
      O => \count[31]_i_7__0_n_0\
    );
\count[31]_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \count_reg_n_0_[5]\,
      I1 => \count_reg_n_0_[4]\,
      I2 => \count_reg_n_0_[6]\,
      I3 => \count_reg_n_0_[7]\,
      O => \count[31]_i_8__0_n_0\
    );
\count[31]_i_9__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \count_reg_n_0_[29]\,
      I1 => \count_reg_n_0_[28]\,
      I2 => \count_reg_n_0_[31]\,
      I3 => \count_reg_n_0_[30]\,
      O => \count[31]_i_9__0_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => count(0),
      Q => \count_reg_n_0_[0]\,
      R => '0'
    );
\count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[12]_i_1__0_n_6\,
      Q => \count_reg_n_0_[10]\,
      R => \count[31]_i_1__0_n_0\
    );
\count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[12]_i_1__0_n_5\,
      Q => \count_reg_n_0_[11]\,
      R => \count[31]_i_1__0_n_0\
    );
\count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[12]_i_1__0_n_4\,
      Q => \count_reg_n_0_[12]\,
      R => \count[31]_i_1__0_n_0\
    );
\count_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1__0_n_0\,
      CO(3) => \count_reg[12]_i_1__0_n_0\,
      CO(2) => \count_reg[12]_i_1__0_n_1\,
      CO(1) => \count_reg[12]_i_1__0_n_2\,
      CO(0) => \count_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[12]_i_1__0_n_4\,
      O(2) => \count_reg[12]_i_1__0_n_5\,
      O(1) => \count_reg[12]_i_1__0_n_6\,
      O(0) => \count_reg[12]_i_1__0_n_7\,
      S(3) => \count_reg_n_0_[12]\,
      S(2) => \count_reg_n_0_[11]\,
      S(1) => \count_reg_n_0_[10]\,
      S(0) => \count_reg_n_0_[9]\
    );
\count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[16]_i_1__0_n_7\,
      Q => \count_reg_n_0_[13]\,
      R => \count[31]_i_1__0_n_0\
    );
\count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[16]_i_1__0_n_6\,
      Q => \count_reg_n_0_[14]\,
      R => \count[31]_i_1__0_n_0\
    );
\count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[16]_i_1__0_n_5\,
      Q => \count_reg_n_0_[15]\,
      R => \count[31]_i_1__0_n_0\
    );
\count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[16]_i_1__0_n_4\,
      Q => \count_reg_n_0_[16]\,
      R => \count[31]_i_1__0_n_0\
    );
\count_reg[16]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_1__0_n_0\,
      CO(3) => \count_reg[16]_i_1__0_n_0\,
      CO(2) => \count_reg[16]_i_1__0_n_1\,
      CO(1) => \count_reg[16]_i_1__0_n_2\,
      CO(0) => \count_reg[16]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[16]_i_1__0_n_4\,
      O(2) => \count_reg[16]_i_1__0_n_5\,
      O(1) => \count_reg[16]_i_1__0_n_6\,
      O(0) => \count_reg[16]_i_1__0_n_7\,
      S(3) => \count_reg_n_0_[16]\,
      S(2) => \count_reg_n_0_[15]\,
      S(1) => \count_reg_n_0_[14]\,
      S(0) => \count_reg_n_0_[13]\
    );
\count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[20]_i_1__0_n_7\,
      Q => \count_reg_n_0_[17]\,
      R => \count[31]_i_1__0_n_0\
    );
\count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[20]_i_1__0_n_6\,
      Q => \count_reg_n_0_[18]\,
      R => \count[31]_i_1__0_n_0\
    );
\count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[20]_i_1__0_n_5\,
      Q => \count_reg_n_0_[19]\,
      R => \count[31]_i_1__0_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[4]_i_1__0_n_7\,
      Q => \count_reg_n_0_[1]\,
      R => \count[31]_i_1__0_n_0\
    );
\count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[20]_i_1__0_n_4\,
      Q => \count_reg_n_0_[20]\,
      R => \count[31]_i_1__0_n_0\
    );
\count_reg[20]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[16]_i_1__0_n_0\,
      CO(3) => \count_reg[20]_i_1__0_n_0\,
      CO(2) => \count_reg[20]_i_1__0_n_1\,
      CO(1) => \count_reg[20]_i_1__0_n_2\,
      CO(0) => \count_reg[20]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[20]_i_1__0_n_4\,
      O(2) => \count_reg[20]_i_1__0_n_5\,
      O(1) => \count_reg[20]_i_1__0_n_6\,
      O(0) => \count_reg[20]_i_1__0_n_7\,
      S(3) => \count_reg_n_0_[20]\,
      S(2) => \count_reg_n_0_[19]\,
      S(1) => \count_reg_n_0_[18]\,
      S(0) => \count_reg_n_0_[17]\
    );
\count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[24]_i_1__0_n_7\,
      Q => \count_reg_n_0_[21]\,
      R => \count[31]_i_1__0_n_0\
    );
\count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[24]_i_1__0_n_6\,
      Q => \count_reg_n_0_[22]\,
      R => \count[31]_i_1__0_n_0\
    );
\count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[24]_i_1__0_n_5\,
      Q => \count_reg_n_0_[23]\,
      R => \count[31]_i_1__0_n_0\
    );
\count_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[24]_i_1__0_n_4\,
      Q => \count_reg_n_0_[24]\,
      R => \count[31]_i_1__0_n_0\
    );
\count_reg[24]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[20]_i_1__0_n_0\,
      CO(3) => \count_reg[24]_i_1__0_n_0\,
      CO(2) => \count_reg[24]_i_1__0_n_1\,
      CO(1) => \count_reg[24]_i_1__0_n_2\,
      CO(0) => \count_reg[24]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[24]_i_1__0_n_4\,
      O(2) => \count_reg[24]_i_1__0_n_5\,
      O(1) => \count_reg[24]_i_1__0_n_6\,
      O(0) => \count_reg[24]_i_1__0_n_7\,
      S(3) => \count_reg_n_0_[24]\,
      S(2) => \count_reg_n_0_[23]\,
      S(1) => \count_reg_n_0_[22]\,
      S(0) => \count_reg_n_0_[21]\
    );
\count_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[28]_i_1__0_n_7\,
      Q => \count_reg_n_0_[25]\,
      R => \count[31]_i_1__0_n_0\
    );
\count_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[28]_i_1__0_n_6\,
      Q => \count_reg_n_0_[26]\,
      R => \count[31]_i_1__0_n_0\
    );
\count_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[28]_i_1__0_n_5\,
      Q => \count_reg_n_0_[27]\,
      R => \count[31]_i_1__0_n_0\
    );
\count_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[28]_i_1__0_n_4\,
      Q => \count_reg_n_0_[28]\,
      R => \count[31]_i_1__0_n_0\
    );
\count_reg[28]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[24]_i_1__0_n_0\,
      CO(3) => \count_reg[28]_i_1__0_n_0\,
      CO(2) => \count_reg[28]_i_1__0_n_1\,
      CO(1) => \count_reg[28]_i_1__0_n_2\,
      CO(0) => \count_reg[28]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[28]_i_1__0_n_4\,
      O(2) => \count_reg[28]_i_1__0_n_5\,
      O(1) => \count_reg[28]_i_1__0_n_6\,
      O(0) => \count_reg[28]_i_1__0_n_7\,
      S(3) => \count_reg_n_0_[28]\,
      S(2) => \count_reg_n_0_[27]\,
      S(1) => \count_reg_n_0_[26]\,
      S(0) => \count_reg_n_0_[25]\
    );
\count_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[31]_i_2__0_n_7\,
      Q => \count_reg_n_0_[29]\,
      R => \count[31]_i_1__0_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[4]_i_1__0_n_6\,
      Q => \count_reg_n_0_[2]\,
      R => \count[31]_i_1__0_n_0\
    );
\count_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[31]_i_2__0_n_6\,
      Q => \count_reg_n_0_[30]\,
      R => \count[31]_i_1__0_n_0\
    );
\count_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[31]_i_2__0_n_5\,
      Q => \count_reg_n_0_[31]\,
      R => \count[31]_i_1__0_n_0\
    );
\count_reg[31]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[28]_i_1__0_n_0\,
      CO(3 downto 2) => \NLW_count_reg[31]_i_2__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count_reg[31]_i_2__0_n_2\,
      CO(0) => \count_reg[31]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count_reg[31]_i_2__0_O_UNCONNECTED\(3),
      O(2) => \count_reg[31]_i_2__0_n_5\,
      O(1) => \count_reg[31]_i_2__0_n_6\,
      O(0) => \count_reg[31]_i_2__0_n_7\,
      S(3) => '0',
      S(2) => \count_reg_n_0_[31]\,
      S(1) => \count_reg_n_0_[30]\,
      S(0) => \count_reg_n_0_[29]\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[4]_i_1__0_n_5\,
      Q => \count_reg_n_0_[3]\,
      R => \count[31]_i_1__0_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[4]_i_1__0_n_4\,
      Q => \count_reg_n_0_[4]\,
      R => \count[31]_i_1__0_n_0\
    );
\count_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[4]_i_1__0_n_0\,
      CO(2) => \count_reg[4]_i_1__0_n_1\,
      CO(1) => \count_reg[4]_i_1__0_n_2\,
      CO(0) => \count_reg[4]_i_1__0_n_3\,
      CYINIT => \count_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1__0_n_4\,
      O(2) => \count_reg[4]_i_1__0_n_5\,
      O(1) => \count_reg[4]_i_1__0_n_6\,
      O(0) => \count_reg[4]_i_1__0_n_7\,
      S(3) => \count_reg_n_0_[4]\,
      S(2) => \count_reg_n_0_[3]\,
      S(1) => \count_reg_n_0_[2]\,
      S(0) => \count_reg_n_0_[1]\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[8]_i_1__0_n_7\,
      Q => \count_reg_n_0_[5]\,
      R => \count[31]_i_1__0_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[8]_i_1__0_n_6\,
      Q => \count_reg_n_0_[6]\,
      R => \count[31]_i_1__0_n_0\
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[8]_i_1__0_n_5\,
      Q => \count_reg_n_0_[7]\,
      R => \count[31]_i_1__0_n_0\
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[8]_i_1__0_n_4\,
      Q => \count_reg_n_0_[8]\,
      R => \count[31]_i_1__0_n_0\
    );
\count_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1__0_n_0\,
      CO(3) => \count_reg[8]_i_1__0_n_0\,
      CO(2) => \count_reg[8]_i_1__0_n_1\,
      CO(1) => \count_reg[8]_i_1__0_n_2\,
      CO(0) => \count_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1__0_n_4\,
      O(2) => \count_reg[8]_i_1__0_n_5\,
      O(1) => \count_reg[8]_i_1__0_n_6\,
      O(0) => \count_reg[8]_i_1__0_n_7\,
      S(3) => \count_reg_n_0_[8]\,
      S(2) => \count_reg_n_0_[7]\,
      S(1) => \count_reg_n_0_[6]\,
      S(0) => \count_reg_n_0_[5]\
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[12]_i_1__0_n_7\,
      Q => \count_reg_n_0_[9]\,
      R => \count[31]_i_1__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_vendd_0_0_clock_e is
  port (
    clk_1Hz : out STD_LOGIC;
    clk : in STD_LOGIC;
    clr : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_vendd_0_0_clock_e : entity is "clock_e";
end design_1_vendd_0_0_clock_e;

architecture STRUCTURE of design_1_vendd_0_0_clock_e is
  signal \bruh_reg_n_0_[0]\ : STD_LOGIC;
  signal c_e_i_1_n_0 : STD_LOGIC;
  signal \^clk_1hz\ : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \count[31]_i_10_n_0\ : STD_LOGIC;
  signal \count[31]_i_1_n_0\ : STD_LOGIC;
  signal \count[31]_i_3_n_0\ : STD_LOGIC;
  signal \count[31]_i_4_n_0\ : STD_LOGIC;
  signal \count[31]_i_5_n_0\ : STD_LOGIC;
  signal \count[31]_i_6_n_0\ : STD_LOGIC;
  signal \count[31]_i_7_n_0\ : STD_LOGIC;
  signal \count[31]_i_8_n_0\ : STD_LOGIC;
  signal \count[31]_i_9_n_0\ : STD_LOGIC;
  signal count_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \count_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_count_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[31]_i_4\ : label is "soft_lutpair4";
begin
  clk_1Hz <= \^clk_1hz\;
\bruh_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count[31]_i_1_n_0\,
      Q => \bruh_reg_n_0_[0]\,
      R => '0'
    );
c_e_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => clr,
      I1 => \bruh_reg_n_0_[0]\,
      I2 => \^clk_1hz\,
      O => c_e_i_1_n_0
    );
c_e_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clr,
      D => c_e_i_1_n_0,
      Q => \^clk_1hz\
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count(0),
      O => count_0(0)
    );
\count[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \count[31]_i_3_n_0\,
      I1 => \count[31]_i_4_n_0\,
      I2 => \count[31]_i_5_n_0\,
      I3 => \count[31]_i_6_n_0\,
      O => \count[31]_i_1_n_0\
    );
\count[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count(21),
      I1 => count(20),
      I2 => count(23),
      I3 => count(22),
      O => \count[31]_i_10_n_0\
    );
\count[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => count(10),
      I1 => count(11),
      I2 => count(9),
      I3 => count(8),
      I4 => \count[31]_i_7_n_0\,
      O => \count[31]_i_3_n_0\
    );
\count[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => count(2),
      I1 => count(3),
      I2 => count(0),
      I3 => count(1),
      I4 => \count[31]_i_8_n_0\,
      O => \count[31]_i_4_n_0\
    );
\count[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => count(26),
      I1 => count(27),
      I2 => count(24),
      I3 => count(25),
      I4 => \count[31]_i_9_n_0\,
      O => \count[31]_i_5_n_0\
    );
\count[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBFFF"
    )
        port map (
      I0 => count(19),
      I1 => count(18),
      I2 => count(16),
      I3 => count(17),
      I4 => \count[31]_i_10_n_0\,
      O => \count[31]_i_6_n_0\
    );
\count[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => count(13),
      I1 => count(12),
      I2 => count(15),
      I3 => count(14),
      O => \count[31]_i_7_n_0\
    );
\count[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => count(4),
      I1 => count(5),
      I2 => count(7),
      I3 => count(6),
      O => \count[31]_i_8_n_0\
    );
\count[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count(29),
      I1 => count(28),
      I2 => count(31),
      I3 => count(30),
      O => \count[31]_i_9_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => count_0(0),
      Q => count(0),
      R => '0'
    );
\count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(10),
      Q => count(10),
      R => \count[31]_i_1_n_0\
    );
\count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(11),
      Q => count(11),
      R => \count[31]_i_1_n_0\
    );
\count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(12),
      Q => count(12),
      R => \count[31]_i_1_n_0\
    );
\count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1_n_0\,
      CO(3) => \count_reg[12]_i_1_n_0\,
      CO(2) => \count_reg[12]_i_1_n_1\,
      CO(1) => \count_reg[12]_i_1_n_2\,
      CO(0) => \count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => count(12 downto 9)
    );
\count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(13),
      Q => count(13),
      R => \count[31]_i_1_n_0\
    );
\count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(14),
      Q => count(14),
      R => \count[31]_i_1_n_0\
    );
\count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(15),
      Q => count(15),
      R => \count[31]_i_1_n_0\
    );
\count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(16),
      Q => count(16),
      R => \count[31]_i_1_n_0\
    );
\count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_1_n_0\,
      CO(3) => \count_reg[16]_i_1_n_0\,
      CO(2) => \count_reg[16]_i_1_n_1\,
      CO(1) => \count_reg[16]_i_1_n_2\,
      CO(0) => \count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => count(16 downto 13)
    );
\count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(17),
      Q => count(17),
      R => \count[31]_i_1_n_0\
    );
\count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(18),
      Q => count(18),
      R => \count[31]_i_1_n_0\
    );
\count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(19),
      Q => count(19),
      R => \count[31]_i_1_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(1),
      Q => count(1),
      R => \count[31]_i_1_n_0\
    );
\count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(20),
      Q => count(20),
      R => \count[31]_i_1_n_0\
    );
\count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[16]_i_1_n_0\,
      CO(3) => \count_reg[20]_i_1_n_0\,
      CO(2) => \count_reg[20]_i_1_n_1\,
      CO(1) => \count_reg[20]_i_1_n_2\,
      CO(0) => \count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => count(20 downto 17)
    );
\count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(21),
      Q => count(21),
      R => \count[31]_i_1_n_0\
    );
\count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(22),
      Q => count(22),
      R => \count[31]_i_1_n_0\
    );
\count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(23),
      Q => count(23),
      R => \count[31]_i_1_n_0\
    );
\count_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(24),
      Q => count(24),
      R => \count[31]_i_1_n_0\
    );
\count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[20]_i_1_n_0\,
      CO(3) => \count_reg[24]_i_1_n_0\,
      CO(2) => \count_reg[24]_i_1_n_1\,
      CO(1) => \count_reg[24]_i_1_n_2\,
      CO(0) => \count_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => count(24 downto 21)
    );
\count_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(25),
      Q => count(25),
      R => \count[31]_i_1_n_0\
    );
\count_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(26),
      Q => count(26),
      R => \count[31]_i_1_n_0\
    );
\count_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(27),
      Q => count(27),
      R => \count[31]_i_1_n_0\
    );
\count_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(28),
      Q => count(28),
      R => \count[31]_i_1_n_0\
    );
\count_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[24]_i_1_n_0\,
      CO(3) => \count_reg[28]_i_1_n_0\,
      CO(2) => \count_reg[28]_i_1_n_1\,
      CO(1) => \count_reg[28]_i_1_n_2\,
      CO(0) => \count_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3 downto 0) => count(28 downto 25)
    );
\count_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(29),
      Q => count(29),
      R => \count[31]_i_1_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(2),
      Q => count(2),
      R => \count[31]_i_1_n_0\
    );
\count_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(30),
      Q => count(30),
      R => \count[31]_i_1_n_0\
    );
\count_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(31),
      Q => count(31),
      R => \count[31]_i_1_n_0\
    );
\count_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[28]_i_1_n_0\,
      CO(3 downto 2) => \NLW_count_reg[31]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count_reg[31]_i_2_n_2\,
      CO(0) => \count_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => count(31 downto 29)
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(3),
      Q => count(3),
      R => \count[31]_i_1_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(4),
      Q => count(4),
      R => \count[31]_i_1_n_0\
    );
\count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[4]_i_1_n_0\,
      CO(2) => \count_reg[4]_i_1_n_1\,
      CO(1) => \count_reg[4]_i_1_n_2\,
      CO(0) => \count_reg[4]_i_1_n_3\,
      CYINIT => count(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => count(4 downto 1)
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(5),
      Q => count(5),
      R => \count[31]_i_1_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(6),
      Q => count(6),
      R => \count[31]_i_1_n_0\
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(7),
      Q => count(7),
      R => \count[31]_i_1_n_0\
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(8),
      Q => count(8),
      R => \count[31]_i_1_n_0\
    );
\count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1_n_0\,
      CO(3) => \count_reg[8]_i_1_n_0\,
      CO(2) => \count_reg[8]_i_1_n_1\,
      CO(1) => \count_reg[8]_i_1_n_2\,
      CO(0) => \count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => count(8 downto 5)
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(9),
      Q => count(9),
      R => \count[31]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_vendd_0_0_digController is
  port (
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ca : out STD_LOGIC_VECTOR ( 6 downto 0 );
    clk : in STD_LOGIC;
    clr : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_vendd_0_0_digController : entity is "digController";
end design_1_vendd_0_0_digController;

architecture STRUCTURE of design_1_vendd_0_0_digController is
  signal ce : STD_LOGIC;
begin
anode: entity work.design_1_vendd_0_0_anode_d
     port map (
      Q(4 downto 0) => Q(4 downto 0),
      an(3 downto 0) => an(3 downto 0),
      ca(6 downto 0) => ca(6 downto 0),
      ce => ce,
      clk => clk,
      clr => clr
    );
cluck: entity work.design_1_vendd_0_0_clock_1k
     port map (
      ce => ce,
      clk => clk,
      clr => clr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_vendd_0_0_vendd is
  port (
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ca : out STD_LOGIC_VECTOR ( 6 downto 0 );
    clk : in STD_LOGIC;
    clr : in STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 2 downto 0 );
    switches : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_vendd_0_0_vendd : entity is "vendd";
end design_1_vendd_0_0_vendd;

architecture STRUCTURE of design_1_vendd_0_0_vendd is
  signal charged : STD_LOGIC;
  signal charged_reg_i_1_n_0 : STD_LOGIC;
  signal charged_reg_i_2_n_0 : STD_LOGIC;
  signal clk_1Hz : STD_LOGIC;
  signal \led[0]_i_1_n_0\ : STD_LOGIC;
  signal \led[1]_i_1_n_0\ : STD_LOGIC;
  signal \led[2]_i_1_n_0\ : STD_LOGIC;
  signal \led[3]_i_1_n_0\ : STD_LOGIC;
  signal \led[3]_i_2_n_0\ : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \next_state_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \next_state_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \next_state_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \next_state_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \next_state_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \next_state_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \next_state_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \next_state_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \p_state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \p_state__0__0\ : STD_LOGIC;
  signal \p_state_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \p_state_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \p_state_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal price : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \price_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \price_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \price_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of charged_reg : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \led[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \led[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \led[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \led[3]_i_2\ : label is "soft_lutpair11";
  attribute XILINX_LEGACY_PRIM of \next_state_reg[0]\ : label is "LDC";
  attribute SOFT_HLUTNM of \next_state_reg[0]_i_1\ : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM of \next_state_reg[1]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \next_state_reg[2]\ : label is "LDC";
  attribute SOFT_HLUTNM of \next_state_reg[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \next_state_reg[2]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of p_state : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM of \p_state_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \p_state_reg[0]_i_1\ : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM of \p_state_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \p_state_reg[1]_i_1\ : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM of \p_state_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \p_state_reg[2]_i_1\ : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM of \price_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \price_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \price_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \price_reg[2]_i_1\ : label is "soft_lutpair10";
  attribute XILINX_LEGACY_PRIM of \price_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \price_reg[3]_i_1\ : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of \price_reg[4]\ : label is "LD";
  attribute SOFT_HLUTNM of \price_reg[4]_i_1\ : label is "soft_lutpair10";
begin
charged_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => charged_reg_i_1_n_0,
      G => charged_reg_i_2_n_0,
      GE => '1',
      Q => charged
    );
charged_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB2B2222BBBBBB2B"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \p_state__0\(2),
      I2 => \p_state__0\(0),
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \p_state__0\(1),
      O => charged_reg_i_1_n_0
    );
charged_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => charged,
      I1 => charged_reg_i_1_n_0,
      O => charged_reg_i_2_n_0
    );
dig: entity work.design_1_vendd_0_0_digController
     port map (
      Q(4 downto 0) => price(4 downto 0),
      an(3 downto 0) => an(3 downto 0),
      ca(6 downto 0) => ca(6 downto 0),
      clk => clk,
      clr => clr
    );
hehe: entity work.design_1_vendd_0_0_clock_e
     port map (
      clk => clk,
      clk_1Hz => clk_1Hz,
      clr => clr
    );
\led[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \p_state__0\(2),
      O => \led[0]_i_1_n_0\
    );
\led[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \p_state__0\(1),
      I1 => \p_state__0\(0),
      O => \led[1]_i_1_n_0\
    );
\led[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_state__0\(2),
      I1 => \p_state__0\(0),
      O => \led[2]_i_1_n_0\
    );
\led[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006A00"
    )
        port map (
      I0 => \p_state__0\(2),
      I1 => \p_state__0\(0),
      I2 => \p_state__0\(1),
      I3 => charged,
      I4 => clr,
      O => \led[3]_i_1_n_0\
    );
\led[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_state__0\(2),
      I1 => \p_state__0\(1),
      O => \led[3]_i_2_n_0\
    );
\led_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1Hz,
      CE => \led[3]_i_1_n_0\,
      D => \led[0]_i_1_n_0\,
      Q => led(0),
      R => '0'
    );
\led_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1Hz,
      CE => \led[3]_i_1_n_0\,
      D => \led[1]_i_1_n_0\,
      Q => led(1),
      R => '0'
    );
\led_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1Hz,
      CE => \led[3]_i_1_n_0\,
      D => \led[2]_i_1_n_0\,
      Q => led(2),
      R => '0'
    );
\led_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1Hz,
      CE => \led[3]_i_1_n_0\,
      D => \led[3]_i_2_n_0\,
      Q => led(3),
      R => '0'
    );
\next_state_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \next_state_reg[2]_i_2_n_0\,
      D => \next_state_reg[0]_i_1_n_0\,
      G => '1',
      GE => '1',
      Q => next_state(0)
    );
\next_state_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => \p_state__0\(0),
      I1 => \state_reg_n_0_[0]\,
      I2 => charged_reg_i_1_n_0,
      I3 => \next_state_reg[0]_i_2_n_0\,
      O => \next_state_reg[0]_i_1_n_0\
    );
\next_state_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0FFEF20F0DF2F2"
    )
        port map (
      I0 => btn(2),
      I1 => btn(1),
      I2 => btn(0),
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \state_reg_n_0_[2]\,
      O => \next_state_reg[0]_i_2_n_0\
    );
\next_state_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \next_state_reg[2]_i_2_n_0\,
      D => \next_state_reg[1]_i_1_n_0\,
      G => '1',
      GE => '1',
      Q => next_state(1)
    );
\next_state_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22E2EEE2EE2E22"
    )
        port map (
      I0 => \next_state_reg[1]_i_2_n_0\,
      I1 => charged_reg_i_1_n_0,
      I2 => \state_reg_n_0_[0]\,
      I3 => \p_state__0\(0),
      I4 => \state_reg_n_0_[1]\,
      I5 => \p_state__0\(1),
      O => \next_state_reg[1]_i_1_n_0\
    );
\next_state_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0F55F0EEF0EA"
    )
        port map (
      I0 => btn(1),
      I1 => btn(2),
      I2 => \state_reg_n_0_[0]\,
      I3 => btn(0),
      I4 => \state_reg_n_0_[2]\,
      I5 => \state_reg_n_0_[1]\,
      O => \next_state_reg[1]_i_2_n_0\
    );
\next_state_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \next_state_reg[2]_i_2_n_0\,
      D => \next_state_reg[2]_i_1_n_0\,
      G => '1',
      GE => '1',
      Q => next_state(2)
    );
\next_state_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"83A8"
    )
        port map (
      I0 => \next_state_reg[2]_i_3_n_0\,
      I1 => \next_state_reg[2]_i_4_n_0\,
      I2 => \p_state__0\(2),
      I3 => \state_reg_n_0_[2]\,
      O => \next_state_reg[2]_i_1_n_0\
    );
\next_state_reg[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => charged,
      I1 => charged_reg_i_1_n_0,
      O => \next_state_reg[2]_i_2_n_0\
    );
\next_state_reg[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBBB80030"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => btn(0),
      I2 => btn(2),
      I3 => btn(1),
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[2]\,
      O => \next_state_reg[2]_i_3_n_0\
    );
\next_state_reg[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \p_state__0\(0),
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \p_state__0\(1),
      O => \next_state_reg[2]_i_4_n_0\
    );
p_state: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => switches(0),
      I1 => switches(2),
      I2 => switches(3),
      I3 => switches(1),
      O => \p_state__0__0\
    );
\p_state_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \p_state_reg[0]_i_1_n_0\,
      G => \p_state__0__0\,
      GE => '1',
      Q => \p_state__0\(0)
    );
\p_state_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => switches(0),
      I1 => switches(1),
      I2 => switches(2),
      O => \p_state_reg[0]_i_1_n_0\
    );
\p_state_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \p_state_reg[1]_i_1_n_0\,
      G => \p_state__0__0\,
      GE => '1',
      Q => \p_state__0\(1)
    );
\p_state_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => switches(0),
      I1 => switches(1),
      I2 => switches(2),
      O => \p_state_reg[1]_i_1_n_0\
    );
\p_state_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \p_state_reg[2]_i_1_n_0\,
      G => \p_state__0__0\,
      GE => '1',
      Q => \p_state__0\(2)
    );
\p_state_reg[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => switches(0),
      O => \p_state_reg[2]_i_1_n_0\
    );
\price_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \p_state__0\(0),
      G => \price_reg[4]_i_1_n_0\,
      GE => '1',
      Q => price(0)
    );
\price_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \p_state__0\(1),
      G => \price_reg[4]_i_1_n_0\,
      GE => '1',
      Q => price(1)
    );
\price_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \price_reg[2]_i_1_n_0\,
      G => \price_reg[4]_i_1_n_0\,
      GE => '1',
      Q => price(2)
    );
\price_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \p_state__0\(0),
      I1 => \p_state__0\(2),
      O => \price_reg[2]_i_1_n_0\
    );
\price_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \price_reg[3]_i_1_n_0\,
      G => \price_reg[4]_i_1_n_0\,
      GE => '1',
      Q => price(3)
    );
\price_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \p_state__0\(0),
      I1 => \p_state__0\(1),
      O => \price_reg[3]_i_1_n_0\
    );
\price_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \p_state__0\(2),
      G => \price_reg[4]_i_1_n_0\,
      GE => '1',
      Q => price(4)
    );
\price_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \p_state__0\(1),
      I1 => \p_state__0\(0),
      I2 => \p_state__0\(2),
      O => \price_reg[4]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1Hz,
      CE => '1',
      CLR => clr,
      D => next_state(0),
      Q => \state_reg_n_0_[0]\
    );
\state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1Hz,
      CE => '1',
      CLR => clr,
      D => next_state(1),
      Q => \state_reg_n_0_[1]\
    );
\state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1Hz,
      CE => '1',
      CLR => clr,
      D => next_state(2),
      Q => \state_reg_n_0_[2]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_vendd_0_0 is
  port (
    switches : in STD_LOGIC_VECTOR ( 3 downto 0 );
    btn : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC;
    clr : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ca : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_vendd_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_vendd_0_0 : entity is "design_1_vendd_0_0,vendd,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_vendd_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_vendd_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_vendd_0_0 : entity is "vendd,Vivado 2019.2";
end design_1_vendd_0_0;

architecture STRUCTURE of design_1_vendd_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk, INSERT_VIP 0";
begin
inst: entity work.design_1_vendd_0_0_vendd
     port map (
      an(3 downto 0) => an(3 downto 0),
      btn(2 downto 0) => btn(2 downto 0),
      ca(6 downto 0) => ca(6 downto 0),
      clk => clk,
      clr => clr,
      led(3 downto 0) => led(3 downto 0),
      switches(3 downto 0) => switches(3 downto 0)
    );
end STRUCTURE;
