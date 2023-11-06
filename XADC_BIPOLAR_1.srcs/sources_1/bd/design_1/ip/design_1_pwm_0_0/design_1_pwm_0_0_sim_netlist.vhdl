-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Wed Mar  8 15:32:32 2023
-- Host        : DESKTOP-BDEC94T running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               S:/Vivado_Works/XADC_BIPOLAR_3/XADC_BIPOLAR_1.srcs/sources_1/bd/design_1/ip/design_1_pwm_0_0/design_1_pwm_0_0_sim_netlist.vhdl
-- Design      : design_1_pwm_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pwm_0_0_pwm is
  port (
    pwm_out : out STD_LOGIC;
    en : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    duty : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pwm_0_0_pwm : entity is "pwm";
end design_1_pwm_0_0_pwm;

architecture STRUCTURE of design_1_pwm_0_0_pwm is
  signal clk_en : STD_LOGIC;
  signal \cnt_duty[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_duty[7]_i_2_n_0\ : STD_LOGIC;
  signal cnt_duty_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal pwm_out0_carry_i_1_n_0 : STD_LOGIC;
  signal pwm_out0_carry_i_2_n_0 : STD_LOGIC;
  signal pwm_out0_carry_i_3_n_0 : STD_LOGIC;
  signal pwm_out0_carry_i_4_n_0 : STD_LOGIC;
  signal pwm_out0_carry_i_5_n_0 : STD_LOGIC;
  signal pwm_out0_carry_i_6_n_0 : STD_LOGIC;
  signal pwm_out0_carry_i_7_n_0 : STD_LOGIC;
  signal pwm_out0_carry_i_8_n_0 : STD_LOGIC;
  signal pwm_out0_carry_n_1 : STD_LOGIC;
  signal pwm_out0_carry_n_2 : STD_LOGIC;
  signal pwm_out0_carry_n_3 : STD_LOGIC;
  signal NLW_pwm_out0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_duty[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt_duty[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt_duty[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt_duty[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt_duty[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt_duty[7]_i_1\ : label is "soft_lutpair1";
begin
clk_en_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => en,
      Q => clk_en
    );
\cnt_duty[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_duty_reg(0),
      O => \cnt_duty[0]_i_1_n_0\
    );
\cnt_duty[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cnt_duty_reg(0),
      I1 => cnt_duty_reg(1),
      O => plusOp(1)
    );
\cnt_duty[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => cnt_duty_reg(0),
      I1 => cnt_duty_reg(1),
      I2 => cnt_duty_reg(2),
      O => plusOp(2)
    );
\cnt_duty[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => cnt_duty_reg(1),
      I1 => cnt_duty_reg(0),
      I2 => cnt_duty_reg(2),
      I3 => cnt_duty_reg(3),
      O => plusOp(3)
    );
\cnt_duty[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => cnt_duty_reg(2),
      I1 => cnt_duty_reg(0),
      I2 => cnt_duty_reg(1),
      I3 => cnt_duty_reg(3),
      I4 => cnt_duty_reg(4),
      O => plusOp(4)
    );
\cnt_duty[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => cnt_duty_reg(3),
      I1 => cnt_duty_reg(1),
      I2 => cnt_duty_reg(0),
      I3 => cnt_duty_reg(2),
      I4 => cnt_duty_reg(4),
      I5 => cnt_duty_reg(5),
      O => plusOp(5)
    );
\cnt_duty[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_duty[7]_i_2_n_0\,
      I1 => cnt_duty_reg(6),
      O => plusOp(6)
    );
\cnt_duty[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cnt_duty[7]_i_2_n_0\,
      I1 => cnt_duty_reg(6),
      I2 => cnt_duty_reg(7),
      O => plusOp(7)
    );
\cnt_duty[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => cnt_duty_reg(5),
      I1 => cnt_duty_reg(3),
      I2 => cnt_duty_reg(1),
      I3 => cnt_duty_reg(0),
      I4 => cnt_duty_reg(2),
      I5 => cnt_duty_reg(4),
      O => \cnt_duty[7]_i_2_n_0\
    );
\cnt_duty_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_en,
      CLR => rst,
      D => \cnt_duty[0]_i_1_n_0\,
      Q => cnt_duty_reg(0)
    );
\cnt_duty_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_en,
      CLR => rst,
      D => plusOp(1),
      Q => cnt_duty_reg(1)
    );
\cnt_duty_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_en,
      CLR => rst,
      D => plusOp(2),
      Q => cnt_duty_reg(2)
    );
\cnt_duty_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_en,
      CLR => rst,
      D => plusOp(3),
      Q => cnt_duty_reg(3)
    );
\cnt_duty_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_en,
      CLR => rst,
      D => plusOp(4),
      Q => cnt_duty_reg(4)
    );
\cnt_duty_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_en,
      CLR => rst,
      D => plusOp(5),
      Q => cnt_duty_reg(5)
    );
\cnt_duty_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_en,
      CLR => rst,
      D => plusOp(6),
      Q => cnt_duty_reg(6)
    );
\cnt_duty_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_en,
      CLR => rst,
      D => plusOp(7),
      Q => cnt_duty_reg(7)
    );
pwm_out0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => p_0_in,
      CO(2) => pwm_out0_carry_n_1,
      CO(1) => pwm_out0_carry_n_2,
      CO(0) => pwm_out0_carry_n_3,
      CYINIT => '0',
      DI(3) => pwm_out0_carry_i_1_n_0,
      DI(2) => pwm_out0_carry_i_2_n_0,
      DI(1) => pwm_out0_carry_i_3_n_0,
      DI(0) => pwm_out0_carry_i_4_n_0,
      O(3 downto 0) => NLW_pwm_out0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => pwm_out0_carry_i_5_n_0,
      S(2) => pwm_out0_carry_i_6_n_0,
      S(1) => pwm_out0_carry_i_7_n_0,
      S(0) => pwm_out0_carry_i_8_n_0
    );
pwm_out0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty(6),
      I1 => cnt_duty_reg(6),
      I2 => cnt_duty_reg(7),
      I3 => duty(7),
      O => pwm_out0_carry_i_1_n_0
    );
pwm_out0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty(4),
      I1 => cnt_duty_reg(4),
      I2 => cnt_duty_reg(5),
      I3 => duty(5),
      O => pwm_out0_carry_i_2_n_0
    );
pwm_out0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty(2),
      I1 => cnt_duty_reg(2),
      I2 => cnt_duty_reg(3),
      I3 => duty(3),
      O => pwm_out0_carry_i_3_n_0
    );
pwm_out0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty(0),
      I1 => cnt_duty_reg(0),
      I2 => cnt_duty_reg(1),
      I3 => duty(1),
      O => pwm_out0_carry_i_4_n_0
    );
pwm_out0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty(6),
      I1 => cnt_duty_reg(6),
      I2 => duty(7),
      I3 => cnt_duty_reg(7),
      O => pwm_out0_carry_i_5_n_0
    );
pwm_out0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty(4),
      I1 => cnt_duty_reg(4),
      I2 => duty(5),
      I3 => cnt_duty_reg(5),
      O => pwm_out0_carry_i_6_n_0
    );
pwm_out0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty(2),
      I1 => cnt_duty_reg(2),
      I2 => duty(3),
      I3 => cnt_duty_reg(3),
      O => pwm_out0_carry_i_7_n_0
    );
pwm_out0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty(0),
      I1 => cnt_duty_reg(0),
      I2 => duty(1),
      I3 => cnt_duty_reg(1),
      O => pwm_out0_carry_i_8_n_0
    );
pwm_out_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => p_0_in,
      Q => pwm_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pwm_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    duty : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pwm_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_pwm_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_pwm_0_0 : entity is "design_1_pwm_0_0,pwm,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_pwm_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_pwm_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_pwm_0_0 : entity is "pwm,Vivado 2019.1";
end design_1_pwm_0_0;

architecture STRUCTURE of design_1_pwm_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_pwm_0_0_pwm
     port map (
      clk => clk,
      duty(7 downto 0) => duty(7 downto 0),
      en => en,
      pwm_out => pwm_out,
      rst => rst
    );
end STRUCTURE;
