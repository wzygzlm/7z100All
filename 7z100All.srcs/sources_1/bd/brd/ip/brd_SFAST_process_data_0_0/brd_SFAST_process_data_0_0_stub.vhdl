-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Mon Jul 20 23:50:47 2020
-- Host        : mbp-win10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_SFAST_process_data_0_0/brd_SFAST_process_data_0_0_stub.vhdl
-- Design      : brd_SFAST_process_data_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z100ffg900-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity brd_SFAST_process_data_0_0 is
  Port ( 
    status_inEventsNum_ap_vld : out STD_LOGIC;
    status_outEventsNum_ap_vld : out STD_LOGIC;
    status_cornerEventsNum_ap_vld : out STD_LOGIC;
    xStreamIn_V_V_TVALID : in STD_LOGIC;
    xStreamIn_V_V_TREADY : out STD_LOGIC;
    xStreamIn_V_V_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    yStreamIn_V_V_TVALID : in STD_LOGIC;
    yStreamIn_V_V_TREADY : out STD_LOGIC;
    yStreamIn_V_V_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    tsStreamIn_V_V_TVALID : in STD_LOGIC;
    tsStreamIn_V_V_TREADY : out STD_LOGIC;
    tsStreamIn_V_V_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    polStreamIn_V_V_TVALID : in STD_LOGIC;
    polStreamIn_V_V_TREADY : out STD_LOGIC;
    polStreamIn_V_V_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
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
    isFinalCornerStream_V_V_TVALID : out STD_LOGIC;
    isFinalCornerStream_V_V_TREADY : in STD_LOGIC;
    isFinalCornerStream_V_V_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    config_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    status_inEventsNum : out STD_LOGIC_VECTOR ( 63 downto 0 );
    status_outEventsNum : out STD_LOGIC_VECTOR ( 63 downto 0 );
    status_cornerEventsNum : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_idle : out STD_LOGIC
  );

end brd_SFAST_process_data_0_0;

architecture stub of brd_SFAST_process_data_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "status_inEventsNum_ap_vld,status_outEventsNum_ap_vld,status_cornerEventsNum_ap_vld,xStreamIn_V_V_TVALID,xStreamIn_V_V_TREADY,xStreamIn_V_V_TDATA[15:0],yStreamIn_V_V_TVALID,yStreamIn_V_V_TREADY,yStreamIn_V_V_TDATA[15:0],tsStreamIn_V_V_TVALID,tsStreamIn_V_V_TREADY,tsStreamIn_V_V_TDATA[63:0],polStreamIn_V_V_TVALID,polStreamIn_V_V_TREADY,polStreamIn_V_V_TDATA[7:0],xStreamOut_V_V_TVALID,xStreamOut_V_V_TREADY,xStreamOut_V_V_TDATA[15:0],yStreamOut_V_V_TVALID,yStreamOut_V_V_TREADY,yStreamOut_V_V_TDATA[15:0],tsStreamOut_V_V_TVALID,tsStreamOut_V_V_TREADY,tsStreamOut_V_V_TDATA[63:0],polStreamOut_V_V_TVALID,polStreamOut_V_V_TREADY,polStreamOut_V_V_TDATA[7:0],isFinalCornerStream_V_V_TVALID,isFinalCornerStream_V_V_TREADY,isFinalCornerStream_V_V_TDATA[15:0],config_V[31:0],status_inEventsNum[63:0],status_outEventsNum[63:0],status_cornerEventsNum[63:0],ap_clk,ap_rst_n,ap_done,ap_start,ap_ready,ap_idle";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "SFAST_process_data,Vivado 2018.1";
begin
end;
