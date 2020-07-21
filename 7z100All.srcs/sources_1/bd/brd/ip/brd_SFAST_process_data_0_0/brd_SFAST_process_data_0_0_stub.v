// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Jul 20 21:26:34 2020
// Host        : mbp-win10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top brd_SFAST_process_data_0_0 -prefix
//               brd_SFAST_process_data_0_0_ brd_SFAST_process_data_0_0_stub.v
// Design      : brd_SFAST_process_data_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "SFAST_process_data,Vivado 2018.1" *)
module brd_SFAST_process_data_0_0(status_inEventsNum_ap_vld, 
  status_outEventsNum_ap_vld, status_cornerEventsNum_ap_vld, xStreamIn_V_V_TVALID, 
  xStreamIn_V_V_TREADY, xStreamIn_V_V_TDATA, yStreamIn_V_V_TVALID, yStreamIn_V_V_TREADY, 
  yStreamIn_V_V_TDATA, tsStreamIn_V_V_TVALID, tsStreamIn_V_V_TREADY, 
  tsStreamIn_V_V_TDATA, polStreamIn_V_V_TVALID, polStreamIn_V_V_TREADY, 
  polStreamIn_V_V_TDATA, xStreamOut_V_V_TVALID, xStreamOut_V_V_TREADY, 
  xStreamOut_V_V_TDATA, yStreamOut_V_V_TVALID, yStreamOut_V_V_TREADY, 
  yStreamOut_V_V_TDATA, tsStreamOut_V_V_TVALID, tsStreamOut_V_V_TREADY, 
  tsStreamOut_V_V_TDATA, polStreamOut_V_V_TVALID, polStreamOut_V_V_TREADY, 
  polStreamOut_V_V_TDATA, isFinalCornerStream_V_V_TVALID, 
  isFinalCornerStream_V_V_TREADY, isFinalCornerStream_V_V_TDATA, config_V, 
  status_inEventsNum, status_outEventsNum, status_cornerEventsNum, ap_clk, ap_rst_n, ap_done, 
  ap_start, ap_ready, ap_idle)
/* synthesis syn_black_box black_box_pad_pin="status_inEventsNum_ap_vld,status_outEventsNum_ap_vld,status_cornerEventsNum_ap_vld,xStreamIn_V_V_TVALID,xStreamIn_V_V_TREADY,xStreamIn_V_V_TDATA[15:0],yStreamIn_V_V_TVALID,yStreamIn_V_V_TREADY,yStreamIn_V_V_TDATA[15:0],tsStreamIn_V_V_TVALID,tsStreamIn_V_V_TREADY,tsStreamIn_V_V_TDATA[63:0],polStreamIn_V_V_TVALID,polStreamIn_V_V_TREADY,polStreamIn_V_V_TDATA[7:0],xStreamOut_V_V_TVALID,xStreamOut_V_V_TREADY,xStreamOut_V_V_TDATA[15:0],yStreamOut_V_V_TVALID,yStreamOut_V_V_TREADY,yStreamOut_V_V_TDATA[15:0],tsStreamOut_V_V_TVALID,tsStreamOut_V_V_TREADY,tsStreamOut_V_V_TDATA[63:0],polStreamOut_V_V_TVALID,polStreamOut_V_V_TREADY,polStreamOut_V_V_TDATA[7:0],isFinalCornerStream_V_V_TVALID,isFinalCornerStream_V_V_TREADY,isFinalCornerStream_V_V_TDATA[15:0],config_V[31:0],status_inEventsNum[63:0],status_outEventsNum[63:0],status_cornerEventsNum[63:0],ap_clk,ap_rst_n,ap_done,ap_start,ap_ready,ap_idle" */;
  output status_inEventsNum_ap_vld;
  output status_outEventsNum_ap_vld;
  output status_cornerEventsNum_ap_vld;
  input xStreamIn_V_V_TVALID;
  output xStreamIn_V_V_TREADY;
  input [15:0]xStreamIn_V_V_TDATA;
  input yStreamIn_V_V_TVALID;
  output yStreamIn_V_V_TREADY;
  input [15:0]yStreamIn_V_V_TDATA;
  input tsStreamIn_V_V_TVALID;
  output tsStreamIn_V_V_TREADY;
  input [63:0]tsStreamIn_V_V_TDATA;
  input polStreamIn_V_V_TVALID;
  output polStreamIn_V_V_TREADY;
  input [7:0]polStreamIn_V_V_TDATA;
  output xStreamOut_V_V_TVALID;
  input xStreamOut_V_V_TREADY;
  output [15:0]xStreamOut_V_V_TDATA;
  output yStreamOut_V_V_TVALID;
  input yStreamOut_V_V_TREADY;
  output [15:0]yStreamOut_V_V_TDATA;
  output tsStreamOut_V_V_TVALID;
  input tsStreamOut_V_V_TREADY;
  output [63:0]tsStreamOut_V_V_TDATA;
  output polStreamOut_V_V_TVALID;
  input polStreamOut_V_V_TREADY;
  output [7:0]polStreamOut_V_V_TDATA;
  output isFinalCornerStream_V_V_TVALID;
  input isFinalCornerStream_V_V_TREADY;
  output [15:0]isFinalCornerStream_V_V_TDATA;
  input [31:0]config_V;
  output [63:0]status_inEventsNum;
  output [63:0]status_outEventsNum;
  output [63:0]status_cornerEventsNum;
  input ap_clk;
  input ap_rst_n;
  output ap_done;
  input ap_start;
  output ap_ready;
  output ap_idle;
endmodule
