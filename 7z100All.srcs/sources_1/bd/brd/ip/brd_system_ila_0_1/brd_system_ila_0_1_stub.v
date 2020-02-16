// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Thu Feb 13 14:24:04 2020
// Host        : DESKTOP-MC69HMJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top brd_system_ila_0_1 -prefix
//               brd_system_ila_0_1_ brd_system_ila_0_1_stub.v
// Design      : brd_system_ila_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "bd_d325,Vivado 2018.1" *)
module brd_system_ila_0_1(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9, probe10)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[15:0],probe1[0:0],probe2[10:0],probe3[0:0],probe4[0:0],probe5[0:0],probe6[0:0],probe7[15:0],probe8[14:0],probe9[0:0],probe10[7:0]" */;
  input clk;
  input [15:0]probe0;
  input [0:0]probe1;
  input [10:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;
  input [0:0]probe6;
  input [15:0]probe7;
  input [14:0]probe8;
  input [0:0]probe9;
  input [7:0]probe10;
endmodule
