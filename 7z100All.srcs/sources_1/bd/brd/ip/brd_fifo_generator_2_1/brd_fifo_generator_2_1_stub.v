// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Thu Jul 16 13:49:31 2020
// Host        : mbp-win10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_fifo_generator_2_1/brd_fifo_generator_2_1_stub.v
// Design      : brd_fifo_generator_2_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_2,Vivado 2018.1" *)
module brd_fifo_generator_2_1(clk, din, wr_en, rd_en, dout, full, almost_full, empty)
/* synthesis syn_black_box black_box_pad_pin="clk,din[7:0],wr_en,rd_en,dout[7:0],full,almost_full,empty" */;
  input clk;
  input [7:0]din;
  input wr_en;
  input rd_en;
  output [7:0]dout;
  output full;
  output almost_full;
  output empty;
endmodule
