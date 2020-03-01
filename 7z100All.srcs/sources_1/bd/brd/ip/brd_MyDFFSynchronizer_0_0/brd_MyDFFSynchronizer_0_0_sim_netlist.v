// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sun Mar  1 16:18:51 2020
// Host        : DESKTOP-MC69HMJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_MyDFFSynchronizer_0_0/brd_MyDFFSynchronizer_0_0_sim_netlist.v
// Design      : brd_MyDFFSynchronizer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "brd_MyDFFSynchronizer_0_0,MyDFFSynchronizer,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "MyDFFSynchronizer,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module brd_MyDFFSynchronizer_0_0
   (SyncClock_CI,
    Reset_RI,
    SignalToSync_SI,
    SyncedSignal_SO);
  input SyncClock_CI;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 Reset_RI RST" *) (* x_interface_parameter = "XIL_INTERFACENAME Reset_RI, POLARITY ACTIVE_LOW" *) input Reset_RI;
  input [0:0]SignalToSync_SI;
  output [0:0]SyncedSignal_SO;

  wire Reset_RI;
  wire [0:0]SignalToSync_SI;
  wire SyncClock_CI;
  wire [0:0]SyncedSignal_SO;

  brd_MyDFFSynchronizer_0_0_MyDFFSynchronizer U0
       (.Reset_RI(Reset_RI),
        .SignalToSync_SI(SignalToSync_SI),
        .SyncClock_CI(SyncClock_CI),
        .SyncedSignal_SO(SyncedSignal_SO));
endmodule

(* ORIG_REF_NAME = "MyDFFSynchronizer" *) 
module brd_MyDFFSynchronizer_0_0_MyDFFSynchronizer
   (SyncedSignal_SO,
    SignalToSync_SI,
    SyncClock_CI,
    Reset_RI);
  output [0:0]SyncedSignal_SO;
  input [0:0]SignalToSync_SI;
  input SyncClock_CI;
  input Reset_RI;

  wire Reset_RI;
  wire [0:0]SignalToSync_SI;
  wire SyncClock_CI;
  wire SyncSignalDemetFF_S;
  wire [0:0]SyncedSignal_SO;

  FDCE \SyncSignalDemetFF_S_reg[0] 
       (.C(SyncClock_CI),
        .CE(1'b1),
        .CLR(Reset_RI),
        .D(SignalToSync_SI),
        .Q(SyncSignalDemetFF_S));
  FDCE \SyncSignalSyncFF_S_reg[0] 
       (.C(SyncClock_CI),
        .CE(1'b1),
        .CLR(Reset_RI),
        .D(SyncSignalDemetFF_S),
        .Q(SyncedSignal_SO));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
