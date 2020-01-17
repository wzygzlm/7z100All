// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Thu Jan 16 18:01:22 2020
// Host        : DESKTOP-3TNSMFC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top brd_fifo_generator_0_0 -prefix
//               brd_fifo_generator_0_0_ brd_fifo_generator_0_0_stub.v
// Design      : brd_fifo_generator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_2,Vivado 2018.1" *)
module brd_fifo_generator_0_0(rst, wr_clk, rd_clk, din, wr_en, rd_en, dout, full, 
  almost_full, empty, rd_data_count, wr_data_count, wr_rst_busy, rd_rst_busy)
/* synthesis syn_black_box black_box_pad_pin="rst,wr_clk,rd_clk,din[15:0],wr_en,rd_en,dout[7:0],full,almost_full,empty,rd_data_count[15:0],wr_data_count[14:0],wr_rst_busy,rd_rst_busy" */;
  input rst;
  input wr_clk;
  input rd_clk;
  input [15:0]din;
  input wr_en;
  input rd_en;
  output [7:0]dout;
  output full;
  output almost_full;
  output empty;
  output [15:0]rd_data_count;
  output [14:0]wr_data_count;
  output wr_rst_busy;
  output rd_rst_busy;
endmodule
