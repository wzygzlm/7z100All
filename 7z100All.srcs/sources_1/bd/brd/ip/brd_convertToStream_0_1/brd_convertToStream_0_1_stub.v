// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sat Feb 29 09:40:14 2020
// Host        : DESKTOP-MC69HMJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top brd_convertToStream_0_1 -prefix
//               brd_convertToStream_0_1_ brd_convertToStream_0_1_stub.v
// Design      : brd_convertToStream_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "convertToStream,Vivado 2018.1" *)
module brd_convertToStream_0_1(ap_clk, ap_rst_n, ap_start, ap_done, ap_idle, 
  ap_ready, evUSBStreamOut_V_V_TVALID, evUSBStreamOut_V_V_TREADY, 
  evUSBStreamOut_V_V_TDATA, dataReady_V, dataValid_V, dataToCheck_V, eventFIFODVReg_V)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,evUSBStreamOut_V_V_TVALID,evUSBStreamOut_V_V_TREADY,evUSBStreamOut_V_V_TDATA[7:0],dataReady_V[0:0],dataValid_V[0:0],dataToCheck_V[7:0],eventFIFODVReg_V[0:0]" */;
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output evUSBStreamOut_V_V_TVALID;
  input evUSBStreamOut_V_V_TREADY;
  output [7:0]evUSBStreamOut_V_V_TDATA;
  input [0:0]dataReady_V;
  input [0:0]dataValid_V;
  input [7:0]dataToCheck_V;
  output [0:0]eventFIFODVReg_V;
endmodule
