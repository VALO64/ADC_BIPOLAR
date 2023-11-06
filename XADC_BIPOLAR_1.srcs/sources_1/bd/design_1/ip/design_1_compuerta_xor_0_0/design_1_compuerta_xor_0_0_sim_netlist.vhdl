-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Wed Mar  8 20:05:05 2023
-- Host        : DESKTOP-BDEC94T running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               S:/Vivado_Works/XADC_BIPOLAR_3/XADC_BIPOLAR_1.srcs/sources_1/bd/design_1/ip/design_1_compuerta_xor_0_0/design_1_compuerta_xor_0_0_sim_netlist.vhdl
-- Design      : design_1_compuerta_xor_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_compuerta_xor_0_0 is
  port (
    adc : in STD_LOGIC_VECTOR ( 7 downto 0 );
    nadc : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_compuerta_xor_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_compuerta_xor_0_0 : entity is "design_1_compuerta_xor_0_0,compuerta_xor,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_compuerta_xor_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_compuerta_xor_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_compuerta_xor_0_0 : entity is "compuerta_xor,Vivado 2019.1";
end design_1_compuerta_xor_0_0;

architecture STRUCTURE of design_1_compuerta_xor_0_0 is
  signal \^adc\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^nadc\ : STD_LOGIC_VECTOR ( 7 to 7 );
begin
  \^adc\(7 downto 0) <= adc(7 downto 0);
  nadc(7) <= \^nadc\(7);
  nadc(6 downto 0) <= \^adc\(6 downto 0);
\nadc[7]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^adc\(7),
      O => \^nadc\(7)
    );
end STRUCTURE;
