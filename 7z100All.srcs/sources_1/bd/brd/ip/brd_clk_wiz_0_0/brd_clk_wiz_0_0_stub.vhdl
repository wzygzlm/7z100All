-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Sat Feb  8 12:46:59 2020
-- Host        : DESKTOP-MC69HMJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               G:/github_prjs/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_clk_wiz_0_0/brd_clk_wiz_0_0_stub.vhdl
-- Design      : brd_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z100ffg900-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity brd_clk_wiz_0_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end brd_clk_wiz_0_0;

architecture stub of brd_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,clk_in1";
begin
end;
