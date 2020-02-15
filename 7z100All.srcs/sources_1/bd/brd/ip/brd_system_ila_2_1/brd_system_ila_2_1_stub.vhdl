-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Sat Feb  8 12:36:06 2020
-- Host        : DESKTOP-MC69HMJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               G:/github_prjs/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_system_ila_2_1/brd_system_ila_2_1_stub.vhdl
-- Design      : brd_system_ila_2_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z100ffg900-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity brd_system_ila_2_1 is
  Port ( 
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 47 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe8 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 47 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe16 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe17 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe18 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe19 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe20 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe21 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe22 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe23 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe24 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe25 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe26 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe27 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe28 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe29 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe30 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe31 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe32 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe33 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe34 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe35 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe36 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe37 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe38 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe39 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe40 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe41 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe42 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe43 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe44 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe45 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe46 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe47 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe48 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe49 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe50 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe51 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe52 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe53 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe54 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe55 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe56 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe57 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe58 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe59 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe60 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe61 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe62 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe63 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe64 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe65 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe66 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe67 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe68 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );

end brd_system_ila_2_1;

architecture stub of brd_system_ila_2_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[1:0],probe1[0:0],probe2[0:0],probe3[0:0],probe4[7:0],probe5[0:0],probe6[47:0],probe7[0:0],probe8[7:0],probe9[0:0],probe10[47:0],probe11[1:0],probe12[7:0],probe13[0:0],probe14[0:0],probe15[0:0],probe16[0:0],probe17[0:0],probe18[0:0],probe19[0:0],probe20[0:0],probe21[0:0],probe22[5:0],probe23[0:0],probe24[5:0],probe25[0:0],probe26[0:0],probe27[3:0],probe28[2:0],probe29[0:0],probe30[0:0],probe31[7:0],probe32[0:0],probe33[7:0],probe34[7:0],probe35[0:0],probe36[0:0],probe37[0:0],probe38[7:0],probe39[0:0],probe40[0:0],probe41[7:0],probe42[0:0],probe43[0:0],probe44[2:0],probe45[0:0],probe46[0:0],probe47[0:0],probe48[1:0],probe49[0:0],probe50[15:0],probe51[0:0],probe52[0:0],probe53[2:0],probe54[0:0],probe55[0:0],probe56[0:0],probe57[7:0],probe58[2:0],probe59[31:0],probe60[7:0],probe61[15:0],probe62[7:0],probe63[2:0],probe64[7:0],probe65[15:0],probe66[0:0],probe67[0:0],probe68[0:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "bd_1384,Vivado 2018.1";
begin
end;
