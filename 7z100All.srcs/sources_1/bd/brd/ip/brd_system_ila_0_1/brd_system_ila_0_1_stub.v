// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sun Apr 12 20:02:50 2020
// Host        : mbp-win10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_system_ila_0_1/brd_system_ila_0_1_stub.v
// Design      : brd_system_ila_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "bd_d325,Vivado 2018.1" *)
module brd_system_ila_0_1(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9, probe10, probe11, probe12, probe13, probe14, probe15, probe16, probe17, 
  probe18, probe19, probe20, probe21, probe22, probe23, probe24, probe25, probe26, probe27, probe28, 
  probe29, probe30, probe31, probe32, probe33, probe34, probe35, probe36, probe37, probe38, probe39, 
  probe40, probe41, probe42, SLOT_0_AXIS_tdata, SLOT_0_AXIS_tlast, SLOT_0_AXIS_tvalid, 
  SLOT_0_AXIS_tready, SLOT_1_AXIS_tdata, SLOT_1_AXIS_tlast, SLOT_1_AXIS_tvalid, 
  SLOT_1_AXIS_tready, SLOT_2_AXIS_tdata, SLOT_2_AXIS_tlast, SLOT_2_AXIS_tvalid, 
  SLOT_2_AXIS_tready, SLOT_3_AXIS_tdata, SLOT_3_AXIS_tlast, SLOT_3_AXIS_tvalid, 
  SLOT_3_AXIS_tready, SLOT_4_AXIS_tdata, SLOT_4_AXIS_tlast, SLOT_4_AXIS_tvalid, 
  SLOT_4_AXIS_tready, resetn)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[15:0],probe1[0:0],probe2[10:0],probe3[0:0],probe4[0:0],probe5[0:0],probe6[7:0],probe7[13:0],probe8[0:0],probe9[0:0],probe10[0:0],probe11[0:0],probe12[0:0],probe13[31:0],probe14[63:0],probe15[0:0],probe16[0:0],probe17[0:0],probe18[0:0],probe19[15:0],probe20[63:0],probe21[0:0],probe22[0:0],probe23[15:0],probe24[15:0],probe25[63:0],probe26[63:0],probe27[0:0],probe28[15:0],probe29[15:0],probe30[0:0],probe31[15:0],probe32[0:0],probe33[0:0],probe34[15:0],probe35[63:0],probe36[7:0],probe37[0:0],probe38[9:0],probe39[0:0],probe40[0:0],probe41[0:0],probe42[0:0],SLOT_0_AXIS_tdata[15:0],SLOT_0_AXIS_tlast,SLOT_0_AXIS_tvalid,SLOT_0_AXIS_tready,SLOT_1_AXIS_tdata[15:0],SLOT_1_AXIS_tlast,SLOT_1_AXIS_tvalid,SLOT_1_AXIS_tready,SLOT_2_AXIS_tdata[15:0],SLOT_2_AXIS_tlast,SLOT_2_AXIS_tvalid,SLOT_2_AXIS_tready,SLOT_3_AXIS_tdata[15:0],SLOT_3_AXIS_tlast,SLOT_3_AXIS_tvalid,SLOT_3_AXIS_tready,SLOT_4_AXIS_tdata[31:0],SLOT_4_AXIS_tlast,SLOT_4_AXIS_tvalid,SLOT_4_AXIS_tready,resetn" */;
  input clk;
  input [15:0]probe0;
  input [0:0]probe1;
  input [10:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;
  input [7:0]probe6;
  input [13:0]probe7;
  input [0:0]probe8;
  input [0:0]probe9;
  input [0:0]probe10;
  input [0:0]probe11;
  input [0:0]probe12;
  input [31:0]probe13;
  input [63:0]probe14;
  input [0:0]probe15;
  input [0:0]probe16;
  input [0:0]probe17;
  input [0:0]probe18;
  input [15:0]probe19;
  input [63:0]probe20;
  input [0:0]probe21;
  input [0:0]probe22;
  input [15:0]probe23;
  input [15:0]probe24;
  input [63:0]probe25;
  input [63:0]probe26;
  input [0:0]probe27;
  input [15:0]probe28;
  input [15:0]probe29;
  input [0:0]probe30;
  input [15:0]probe31;
  input [0:0]probe32;
  input [0:0]probe33;
  input [15:0]probe34;
  input [63:0]probe35;
  input [7:0]probe36;
  input [0:0]probe37;
  input [9:0]probe38;
  input [0:0]probe39;
  input [0:0]probe40;
  input [0:0]probe41;
  input [0:0]probe42;
  input [15:0]SLOT_0_AXIS_tdata;
  input SLOT_0_AXIS_tlast;
  input SLOT_0_AXIS_tvalid;
  input SLOT_0_AXIS_tready;
  input [15:0]SLOT_1_AXIS_tdata;
  input SLOT_1_AXIS_tlast;
  input SLOT_1_AXIS_tvalid;
  input SLOT_1_AXIS_tready;
  input [15:0]SLOT_2_AXIS_tdata;
  input SLOT_2_AXIS_tlast;
  input SLOT_2_AXIS_tvalid;
  input SLOT_2_AXIS_tready;
  input [15:0]SLOT_3_AXIS_tdata;
  input SLOT_3_AXIS_tlast;
  input SLOT_3_AXIS_tvalid;
  input SLOT_3_AXIS_tready;
  input [31:0]SLOT_4_AXIS_tdata;
  input SLOT_4_AXIS_tlast;
  input SLOT_4_AXIS_tvalid;
  input SLOT_4_AXIS_tready;
  input resetn;
endmodule
