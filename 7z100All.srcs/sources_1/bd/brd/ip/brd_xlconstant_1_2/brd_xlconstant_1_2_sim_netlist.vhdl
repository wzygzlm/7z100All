-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Sat Apr  4 15:19:15 2020
-- Host        : mbp-win10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top brd_xlconstant_1_2 -prefix
--               brd_xlconstant_1_2_ brd_xlconstant_1_2_sim_netlist.vhdl
-- Design      : brd_xlconstant_1_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z100ffg900-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_xlconstant_1_2 is
  port (
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of brd_xlconstant_1_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of brd_xlconstant_1_2 : entity is "brd_xlconstant_1_2,xlconstant_v1_1_4_xlconstant,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of brd_xlconstant_1_2 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of brd_xlconstant_1_2 : entity is "xlconstant_v1_1_4_xlconstant,Vivado 2018.1";
end brd_xlconstant_1_2;

architecture STRUCTURE of brd_xlconstant_1_2 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
begin
  dout(15) <= \<const0>\;
  dout(14) <= \<const1>\;
  dout(13) <= \<const0>\;
  dout(12) <= \<const1>\;
  dout(11) <= \<const1>\;
  dout(10) <= \<const0>\;
  dout(9) <= \<const1>\;
  dout(8) <= \<const0>\;
  dout(7) <= \<const0>\;
  dout(6) <= \<const1>\;
  dout(5) <= \<const0>\;
  dout(4) <= \<const1>\;
  dout(3) <= \<const1>\;
  dout(2) <= \<const0>\;
  dout(1) <= \<const1>\;
  dout(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
