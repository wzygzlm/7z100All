-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Thu Jul 16 14:00:16 2020
-- Host        : mbp-win10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_eventStreamSwitch_0_0/brd_eventStreamSwitch_0_0_stub.vhdl
-- Design      : brd_eventStreamSwitch_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z100ffg900-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity brd_eventStreamSwitch_0_0 is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    xStreamOut_V_V_TVALID : out STD_LOGIC;
    xStreamOut_V_V_TREADY : in STD_LOGIC;
    xStreamOut_V_V_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    yStreamOut_V_V_TVALID : out STD_LOGIC;
    yStreamOut_V_V_TREADY : in STD_LOGIC;
    yStreamOut_V_V_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    tsStreamOut_V_V_TVALID : out STD_LOGIC;
    tsStreamOut_V_V_TREADY : in STD_LOGIC;
    tsStreamOut_V_V_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    polStreamOut_V_V_TVALID : out STD_LOGIC;
    polStreamOut_V_V_TREADY : in STD_LOGIC;
    polStreamOut_V_V_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cornerStreamOut_V_V_TVALID : out STD_LOGIC;
    cornerStreamOut_V_V_TREADY : in STD_LOGIC;
    cornerStreamOut_V_V_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    select_V : in STD_LOGIC_VECTOR ( 0 to 0 );
    xStreamIn0_V_V_TVALID : in STD_LOGIC;
    xStreamIn0_V_V_TREADY : out STD_LOGIC;
    xStreamIn0_V_V_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    yStreamIn0_V_V_TVALID : in STD_LOGIC;
    yStreamIn0_V_V_TREADY : out STD_LOGIC;
    yStreamIn0_V_V_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    tsStreamIn0_V_V_TVALID : in STD_LOGIC;
    tsStreamIn0_V_V_TREADY : out STD_LOGIC;
    tsStreamIn0_V_V_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    polStreamIn0_V_V_TVALID : in STD_LOGIC;
    polStreamIn0_V_V_TREADY : out STD_LOGIC;
    polStreamIn0_V_V_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cornerStreamIn0_V_V_TVALID : in STD_LOGIC;
    cornerStreamIn0_V_V_TREADY : out STD_LOGIC;
    cornerStreamIn0_V_V_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    xStreamIn1_V_V_TVALID : in STD_LOGIC;
    xStreamIn1_V_V_TREADY : out STD_LOGIC;
    xStreamIn1_V_V_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    yStreamIn1_V_V_TVALID : in STD_LOGIC;
    yStreamIn1_V_V_TREADY : out STD_LOGIC;
    yStreamIn1_V_V_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    tsStreamIn1_V_V_TVALID : in STD_LOGIC;
    tsStreamIn1_V_V_TREADY : out STD_LOGIC;
    tsStreamIn1_V_V_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    polStreamIn1_V_V_TVALID : in STD_LOGIC;
    polStreamIn1_V_V_TREADY : out STD_LOGIC;
    polStreamIn1_V_V_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end brd_eventStreamSwitch_0_0;

architecture stub of brd_eventStreamSwitch_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,xStreamOut_V_V_TVALID,xStreamOut_V_V_TREADY,xStreamOut_V_V_TDATA[15:0],yStreamOut_V_V_TVALID,yStreamOut_V_V_TREADY,yStreamOut_V_V_TDATA[15:0],tsStreamOut_V_V_TVALID,tsStreamOut_V_V_TREADY,tsStreamOut_V_V_TDATA[63:0],polStreamOut_V_V_TVALID,polStreamOut_V_V_TREADY,polStreamOut_V_V_TDATA[7:0],cornerStreamOut_V_V_TVALID,cornerStreamOut_V_V_TREADY,cornerStreamOut_V_V_TDATA[7:0],select_V[0:0],xStreamIn0_V_V_TVALID,xStreamIn0_V_V_TREADY,xStreamIn0_V_V_TDATA[15:0],yStreamIn0_V_V_TVALID,yStreamIn0_V_V_TREADY,yStreamIn0_V_V_TDATA[15:0],tsStreamIn0_V_V_TVALID,tsStreamIn0_V_V_TREADY,tsStreamIn0_V_V_TDATA[63:0],polStreamIn0_V_V_TVALID,polStreamIn0_V_V_TREADY,polStreamIn0_V_V_TDATA[7:0],cornerStreamIn0_V_V_TVALID,cornerStreamIn0_V_V_TREADY,cornerStreamIn0_V_V_TDATA[7:0],xStreamIn1_V_V_TVALID,xStreamIn1_V_V_TREADY,xStreamIn1_V_V_TDATA[15:0],yStreamIn1_V_V_TVALID,yStreamIn1_V_V_TREADY,yStreamIn1_V_V_TDATA[15:0],tsStreamIn1_V_V_TVALID,tsStreamIn1_V_V_TREADY,tsStreamIn1_V_V_TDATA[63:0],polStreamIn1_V_V_TVALID,polStreamIn1_V_V_TREADY,polStreamIn1_V_V_TDATA[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "eventStreamSwitch,Vivado 2018.1";
begin
end;
