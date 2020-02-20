// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Wed Feb 19 20:15:01 2020
// Host        : DESKTOP-MC69HMJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_RawStreamToFIFO_0_0/brd_RawStreamToFIFO_0_0_stub.v
// Design      : brd_RawStreamToFIFO_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "RawStreamToFIFO,Vivado 2018.1" *)
module brd_RawStreamToFIFO_0_0(fifoIFOutData_V_ap_vld, 
  skippedData_V_ap_vld, ap_clk, ap_rst_n, ap_start, ap_done, ap_idle, ap_ready, 
  streamIn_V_V_TVALID, streamIn_V_V_TREADY, streamIn_V_V_TDATA, fifoIFInFull_n_V, 
  fifoIFOutData_V, skippedData_V)
/* synthesis syn_black_box black_box_pad_pin="fifoIFOutData_V_ap_vld,skippedData_V_ap_vld,ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,streamIn_V_V_TVALID,streamIn_V_V_TREADY,streamIn_V_V_TDATA[15:0],fifoIFInFull_n_V[0:0],fifoIFOutData_V[15:0],skippedData_V[15:0]" */;
  output fifoIFOutData_V_ap_vld;
  output skippedData_V_ap_vld;
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input streamIn_V_V_TVALID;
  output streamIn_V_V_TREADY;
  input [15:0]streamIn_V_V_TDATA;
  input [0:0]fifoIFInFull_n_V;
  output [15:0]fifoIFOutData_V;
  output [15:0]skippedData_V;
endmodule
