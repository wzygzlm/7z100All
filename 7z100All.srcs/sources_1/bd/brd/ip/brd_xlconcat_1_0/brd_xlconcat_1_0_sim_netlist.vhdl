-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Sat Feb  8 12:28:08 2020
-- Host        : DESKTOP-MC69HMJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               G:/github_prjs/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_xlconcat_1_0/brd_xlconcat_1_0_sim_netlist.vhdl
-- Design      : brd_xlconcat_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z100ffg900-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_xlconcat_1_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of brd_xlconcat_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of brd_xlconcat_1_0 : entity is "brd_xlconcat_1_0,xlconcat_v2_1_1_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of brd_xlconcat_1_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of brd_xlconcat_1_0 : entity is "xlconcat_v2_1_1_xlconcat,Vivado 2018.1";
end brd_xlconcat_1_0;

architecture STRUCTURE of brd_xlconcat_1_0 is
  signal \^in0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^in1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  \^in0\(7 downto 0) <= In0(7 downto 0);
  \^in1\(7 downto 0) <= In1(7 downto 0);
  dout(15 downto 8) <= \^in1\(7 downto 0);
  dout(7 downto 0) <= \^in0\(7 downto 0);
end STRUCTURE;
