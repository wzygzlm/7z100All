// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sat Feb 29 09:40:14 2020
// Host        : DESKTOP-MC69HMJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top brd_checkEvUSBStream_0_1 -prefix
//               brd_checkEvUSBStream_0_1_ brd_checkEvUSBStream_0_1_stub.v
// Design      : brd_checkEvUSBStream_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "checkEvUSBStream,Vivado 2018.1" *)
module brd_checkEvUSBStream_0_1(dataReg_V_ap_vld, 
  nonMonTSDiffFlgReg_V_ap_vld, tsReg_V_ap_vld, glLastTSReg_V_ap_vld, ap_clk, ap_rst_n, 
  ap_start, ap_done, ap_idle, ap_ready, evUSBStreamIn_V_V_TVALID, evUSBStreamIn_V_V_TREADY, 
  evUSBStreamIn_V_V_TDATA, dataReg_V, nonMonTSDiffFlgReg_V, tsReg_V, glLastTSReg_V)
/* synthesis syn_black_box black_box_pad_pin="dataReg_V_ap_vld,nonMonTSDiffFlgReg_V_ap_vld,tsReg_V_ap_vld,glLastTSReg_V_ap_vld,ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,evUSBStreamIn_V_V_TVALID,evUSBStreamIn_V_V_TREADY,evUSBStreamIn_V_V_TDATA[7:0],dataReg_V[15:0],nonMonTSDiffFlgReg_V[0:0],tsReg_V[63:0],glLastTSReg_V[63:0]" */;
  output dataReg_V_ap_vld;
  output nonMonTSDiffFlgReg_V_ap_vld;
  output tsReg_V_ap_vld;
  output glLastTSReg_V_ap_vld;
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input evUSBStreamIn_V_V_TVALID;
  output evUSBStreamIn_V_V_TREADY;
  input [7:0]evUSBStreamIn_V_V_TDATA;
  output [15:0]dataReg_V;
  output [0:0]nonMonTSDiffFlgReg_V;
  output [63:0]tsReg_V;
  output [63:0]glLastTSReg_V;
endmodule
