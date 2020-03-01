// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sun Mar  1 16:18:52 2020
// Host        : DESKTOP-MC69HMJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_MyDFFSynchronizer_0_1/brd_MyDFFSynchronizer_0_1_stub.v
// Design      : brd_MyDFFSynchronizer_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "MyDFFSynchronizer,Vivado 2018.1" *)
module brd_MyDFFSynchronizer_0_1(SyncClock_CI, Reset_RI, SignalToSync_SI, 
  SyncedSignal_SO)
/* synthesis syn_black_box black_box_pad_pin="SyncClock_CI,Reset_RI,SignalToSync_SI[0:0],SyncedSignal_SO[0:0]" */;
  input SyncClock_CI;
  input Reset_RI;
  input [0:0]SignalToSync_SI;
  output [0:0]SyncedSignal_SO;
endmodule
