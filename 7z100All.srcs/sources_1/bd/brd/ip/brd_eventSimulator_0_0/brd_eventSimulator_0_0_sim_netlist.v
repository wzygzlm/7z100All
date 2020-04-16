// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Thu Apr 16 18:06:29 2020
// Host        : mbp-win10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_eventSimulator_0_0/brd_eventSimulator_0_0_sim_netlist.v
// Design      : brd_eventSimulator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "brd_eventSimulator_0_0,eventSimulator,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "eventSimulator,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module brd_eventSimulator_0_0
   (deltaTsReg_ap_vld,
    ap_clk,
    ap_rst_n,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    xStreamOut_V_V_TVALID,
    xStreamOut_V_V_TREADY,
    xStreamOut_V_V_TDATA,
    yStreamOut_V_V_TVALID,
    yStreamOut_V_V_TREADY,
    yStreamOut_V_V_TDATA,
    tsStreamOut_V_V_TVALID,
    tsStreamOut_V_V_TREADY,
    tsStreamOut_V_V_TDATA,
    polStreamOut_V_V_TVALID,
    polStreamOut_V_V_TREADY,
    polStreamOut_V_V_TDATA,
    deltaTsReg);
  output deltaTsReg_ap_vld;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF xStreamOut_V_V:yStreamOut_V_V:tsStreamOut_V_V:polStreamOut_V_V, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) input ap_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) input ap_rst_n;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) input ap_start;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 xStreamOut_V_V TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME xStreamOut_V_V, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 16}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) output xStreamOut_V_V_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 xStreamOut_V_V TREADY" *) input xStreamOut_V_V_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 xStreamOut_V_V TDATA" *) output [15:0]xStreamOut_V_V_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 yStreamOut_V_V TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME yStreamOut_V_V, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 16}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) output yStreamOut_V_V_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 yStreamOut_V_V TREADY" *) input yStreamOut_V_V_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 yStreamOut_V_V TDATA" *) output [15:0]yStreamOut_V_V_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 tsStreamOut_V_V TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME tsStreamOut_V_V, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 64}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) output tsStreamOut_V_V_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 tsStreamOut_V_V TREADY" *) input tsStreamOut_V_V_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 tsStreamOut_V_V TDATA" *) output [63:0]tsStreamOut_V_V_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 polStreamOut_V_V TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME polStreamOut_V_V, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) output polStreamOut_V_V_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 polStreamOut_V_V TREADY" *) input polStreamOut_V_V_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 polStreamOut_V_V TDATA" *) output [7:0]polStreamOut_V_V_TDATA;
  (* x_interface_info = "xilinx.com:signal:data:1.0 deltaTsReg DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME deltaTsReg, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [7:0]deltaTsReg;

  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_start;
  wire [7:0]deltaTsReg;
  wire deltaTsReg_ap_vld;
  wire [7:0]polStreamOut_V_V_TDATA;
  wire polStreamOut_V_V_TREADY;
  wire polStreamOut_V_V_TVALID;
  wire [63:0]tsStreamOut_V_V_TDATA;
  wire tsStreamOut_V_V_TREADY;
  wire tsStreamOut_V_V_TVALID;
  wire [15:0]xStreamOut_V_V_TDATA;
  wire xStreamOut_V_V_TREADY;
  wire xStreamOut_V_V_TVALID;
  wire [15:0]yStreamOut_V_V_TDATA;
  wire yStreamOut_V_V_TREADY;
  wire yStreamOut_V_V_TVALID;

  brd_eventSimulator_0_0_eventSimulator U0
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .deltaTsReg(deltaTsReg),
        .deltaTsReg_ap_vld(deltaTsReg_ap_vld),
        .polStreamOut_V_V_TDATA(polStreamOut_V_V_TDATA),
        .polStreamOut_V_V_TREADY(polStreamOut_V_V_TREADY),
        .polStreamOut_V_V_TVALID(polStreamOut_V_V_TVALID),
        .tsStreamOut_V_V_TDATA(tsStreamOut_V_V_TDATA),
        .tsStreamOut_V_V_TREADY(tsStreamOut_V_V_TREADY),
        .tsStreamOut_V_V_TVALID(tsStreamOut_V_V_TVALID),
        .xStreamOut_V_V_TDATA(xStreamOut_V_V_TDATA),
        .xStreamOut_V_V_TREADY(xStreamOut_V_V_TREADY),
        .xStreamOut_V_V_TVALID(xStreamOut_V_V_TVALID),
        .yStreamOut_V_V_TDATA(yStreamOut_V_V_TDATA),
        .yStreamOut_V_V_TREADY(yStreamOut_V_V_TREADY),
        .yStreamOut_V_V_TVALID(yStreamOut_V_V_TVALID));
endmodule

(* ORIG_REF_NAME = "eventSimulator" *) 
module brd_eventSimulator_0_0_eventSimulator
   (ap_clk,
    ap_rst_n,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    xStreamOut_V_V_TDATA,
    xStreamOut_V_V_TVALID,
    xStreamOut_V_V_TREADY,
    yStreamOut_V_V_TDATA,
    yStreamOut_V_V_TVALID,
    yStreamOut_V_V_TREADY,
    tsStreamOut_V_V_TDATA,
    tsStreamOut_V_V_TVALID,
    tsStreamOut_V_V_TREADY,
    polStreamOut_V_V_TDATA,
    polStreamOut_V_V_TVALID,
    polStreamOut_V_V_TREADY,
    deltaTsReg,
    deltaTsReg_ap_vld);
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [15:0]xStreamOut_V_V_TDATA;
  output xStreamOut_V_V_TVALID;
  input xStreamOut_V_V_TREADY;
  output [15:0]yStreamOut_V_V_TDATA;
  output yStreamOut_V_V_TVALID;
  input yStreamOut_V_V_TREADY;
  output [63:0]tsStreamOut_V_V_TDATA;
  output tsStreamOut_V_V_TVALID;
  input tsStreamOut_V_V_TREADY;
  output [7:0]polStreamOut_V_V_TDATA;
  output polStreamOut_V_V_TVALID;
  input polStreamOut_V_V_TREADY;
  output [7:0]deltaTsReg;
  output deltaTsReg_ap_vld;

  wire \<const0> ;
  wire \ap_CS_fsm[0]_i_1_n_0 ;
  wire \ap_CS_fsm[1]_i_1_n_0 ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_reg_ioackin_deltaTsReg_dummy_ack;
  wire ap_reg_ioackin_deltaTsReg_dummy_ack0_out;
  wire ap_reg_ioackin_deltaTsReg_dummy_ack_i_1_n_0;
  wire ap_rst;
  wire ap_rst_n;
  wire ap_start;
  wire [7:0]deltaTsReg;
  wire deltaTsReg_ap_vld;
  wire \polStreamOut_V_V_1_state[0]_i_1_n_0 ;
  wire \polStreamOut_V_V_1_state[1]_i_1_n_0 ;
  wire \polStreamOut_V_V_1_state_reg_n_0_[1] ;
  wire polStreamOut_V_V_TREADY;
  wire polStreamOut_V_V_TVALID;
  wire retData_randomGenerator_fu_115_n_1;
  wire retData_randomGenerator_fu_115_n_10;
  wire retData_randomGenerator_fu_115_n_11;
  wire retData_randomGenerator_fu_115_n_12;
  wire retData_randomGenerator_fu_115_n_13;
  wire retData_randomGenerator_fu_115_n_14;
  wire retData_randomGenerator_fu_115_n_15;
  wire retData_randomGenerator_fu_115_n_16;
  wire retData_randomGenerator_fu_115_n_17;
  wire retData_randomGenerator_fu_115_n_18;
  wire retData_randomGenerator_fu_115_n_19;
  wire retData_randomGenerator_fu_115_n_2;
  wire retData_randomGenerator_fu_115_n_20;
  wire retData_randomGenerator_fu_115_n_21;
  wire retData_randomGenerator_fu_115_n_22;
  wire retData_randomGenerator_fu_115_n_23;
  wire retData_randomGenerator_fu_115_n_24;
  wire retData_randomGenerator_fu_115_n_25;
  wire retData_randomGenerator_fu_115_n_26;
  wire retData_randomGenerator_fu_115_n_27;
  wire retData_randomGenerator_fu_115_n_28;
  wire retData_randomGenerator_fu_115_n_29;
  wire retData_randomGenerator_fu_115_n_3;
  wire retData_randomGenerator_fu_115_n_30;
  wire retData_randomGenerator_fu_115_n_31;
  wire retData_randomGenerator_fu_115_n_32;
  wire retData_randomGenerator_fu_115_n_33;
  wire retData_randomGenerator_fu_115_n_34;
  wire retData_randomGenerator_fu_115_n_35;
  wire retData_randomGenerator_fu_115_n_36;
  wire retData_randomGenerator_fu_115_n_37;
  wire retData_randomGenerator_fu_115_n_38;
  wire retData_randomGenerator_fu_115_n_39;
  wire retData_randomGenerator_fu_115_n_4;
  wire retData_randomGenerator_fu_115_n_40;
  wire retData_randomGenerator_fu_115_n_41;
  wire retData_randomGenerator_fu_115_n_42;
  wire retData_randomGenerator_fu_115_n_43;
  wire retData_randomGenerator_fu_115_n_44;
  wire retData_randomGenerator_fu_115_n_45;
  wire retData_randomGenerator_fu_115_n_46;
  wire retData_randomGenerator_fu_115_n_47;
  wire retData_randomGenerator_fu_115_n_48;
  wire retData_randomGenerator_fu_115_n_49;
  wire retData_randomGenerator_fu_115_n_5;
  wire retData_randomGenerator_fu_115_n_50;
  wire retData_randomGenerator_fu_115_n_51;
  wire retData_randomGenerator_fu_115_n_52;
  wire retData_randomGenerator_fu_115_n_53;
  wire retData_randomGenerator_fu_115_n_54;
  wire retData_randomGenerator_fu_115_n_55;
  wire retData_randomGenerator_fu_115_n_56;
  wire retData_randomGenerator_fu_115_n_57;
  wire retData_randomGenerator_fu_115_n_58;
  wire retData_randomGenerator_fu_115_n_59;
  wire retData_randomGenerator_fu_115_n_6;
  wire retData_randomGenerator_fu_115_n_60;
  wire retData_randomGenerator_fu_115_n_61;
  wire retData_randomGenerator_fu_115_n_62;
  wire retData_randomGenerator_fu_115_n_63;
  wire retData_randomGenerator_fu_115_n_64;
  wire retData_randomGenerator_fu_115_n_7;
  wire retData_randomGenerator_fu_115_n_8;
  wire retData_randomGenerator_fu_115_n_9;
  wire tmp_1_fu_181_p2;
  wire [15:1]tmp_2_fu_162_p2;
  wire [0:0]tmp_2_fu_162_p2__0;
  wire [15:1]tmp_3_fu_187_p2;
  wire [63:0]tmp_V_2_fu_134_p2;
  wire tmp_s_fu_151_p2;
  wire tsStreamOut_V_V_1_ack_in;
  wire tsStreamOut_V_V_1_load_B;
  wire [63:0]tsStreamOut_V_V_1_payload_A;
  wire \tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ;
  wire [63:0]tsStreamOut_V_V_1_payload_B;
  wire tsStreamOut_V_V_1_sel;
  wire tsStreamOut_V_V_1_sel_rd_i_1_n_0;
  wire tsStreamOut_V_V_1_sel_wr;
  wire tsStreamOut_V_V_1_sel_wr_i_1_n_0;
  wire \tsStreamOut_V_V_1_state[0]_i_1_n_0 ;
  wire \tsStreamOut_V_V_1_state[1]_i_1_n_0 ;
  wire [63:0]tsStreamOut_V_V_TDATA;
  wire tsStreamOut_V_V_TREADY;
  wire tsStreamOut_V_V_TVALID;
  wire [63:0]ts_V_reg;
  wire xStreamOut_V_V_1_ack_in;
  wire xStreamOut_V_V_1_load_B;
  wire [15:0]xStreamOut_V_V_1_payload_A;
  wire \xStreamOut_V_V_1_payload_A[15]_i_1_n_0 ;
  wire \xStreamOut_V_V_1_payload_A[15]_i_2_n_0 ;
  wire \xStreamOut_V_V_1_payload_A[15]_i_5_n_0 ;
  wire \xStreamOut_V_V_1_payload_A[15]_i_6_n_0 ;
  wire \xStreamOut_V_V_1_payload_A[15]_i_7_n_0 ;
  wire \xStreamOut_V_V_1_payload_A[15]_i_8_n_0 ;
  wire \xStreamOut_V_V_1_payload_A_reg[12]_i_1_n_0 ;
  wire \xStreamOut_V_V_1_payload_A_reg[12]_i_1_n_1 ;
  wire \xStreamOut_V_V_1_payload_A_reg[12]_i_1_n_2 ;
  wire \xStreamOut_V_V_1_payload_A_reg[12]_i_1_n_3 ;
  wire \xStreamOut_V_V_1_payload_A_reg[15]_i_3_n_2 ;
  wire \xStreamOut_V_V_1_payload_A_reg[15]_i_3_n_3 ;
  wire \xStreamOut_V_V_1_payload_A_reg[4]_i_1_n_0 ;
  wire \xStreamOut_V_V_1_payload_A_reg[4]_i_1_n_1 ;
  wire \xStreamOut_V_V_1_payload_A_reg[4]_i_1_n_2 ;
  wire \xStreamOut_V_V_1_payload_A_reg[4]_i_1_n_3 ;
  wire \xStreamOut_V_V_1_payload_A_reg[8]_i_1_n_0 ;
  wire \xStreamOut_V_V_1_payload_A_reg[8]_i_1_n_1 ;
  wire \xStreamOut_V_V_1_payload_A_reg[8]_i_1_n_2 ;
  wire \xStreamOut_V_V_1_payload_A_reg[8]_i_1_n_3 ;
  wire [15:0]xStreamOut_V_V_1_payload_B;
  wire \xStreamOut_V_V_1_payload_B[15]_i_1_n_0 ;
  wire xStreamOut_V_V_1_sel;
  wire xStreamOut_V_V_1_sel_rd_i_1_n_0;
  wire xStreamOut_V_V_1_sel_wr;
  wire xStreamOut_V_V_1_sel_wr_i_1_n_0;
  wire \xStreamOut_V_V_1_state[0]_i_1_n_0 ;
  wire \xStreamOut_V_V_1_state[1]_i_1_n_0 ;
  wire [15:0]xStreamOut_V_V_TDATA;
  wire xStreamOut_V_V_TREADY;
  wire xStreamOut_V_V_TVALID;
  wire \x_V[0]_i_2_n_0 ;
  wire \x_V[0]_i_3_n_0 ;
  wire \x_V[0]_i_4_n_0 ;
  wire \x_V[0]_i_5_n_0 ;
  wire \x_V[0]_i_6_n_0 ;
  wire \x_V[12]_i_2_n_0 ;
  wire \x_V[12]_i_3_n_0 ;
  wire \x_V[12]_i_4_n_0 ;
  wire \x_V[12]_i_5_n_0 ;
  wire \x_V[4]_i_2_n_0 ;
  wire \x_V[4]_i_3_n_0 ;
  wire \x_V[4]_i_4_n_0 ;
  wire \x_V[4]_i_5_n_0 ;
  wire \x_V[8]_i_2_n_0 ;
  wire \x_V[8]_i_3_n_0 ;
  wire \x_V[8]_i_4_n_0 ;
  wire \x_V[8]_i_5_n_0 ;
  wire [15:0]x_V_reg;
  wire \x_V_reg[0]_i_1_n_0 ;
  wire \x_V_reg[0]_i_1_n_1 ;
  wire \x_V_reg[0]_i_1_n_2 ;
  wire \x_V_reg[0]_i_1_n_3 ;
  wire \x_V_reg[0]_i_1_n_4 ;
  wire \x_V_reg[0]_i_1_n_5 ;
  wire \x_V_reg[0]_i_1_n_6 ;
  wire \x_V_reg[0]_i_1_n_7 ;
  wire \x_V_reg[12]_i_1_n_1 ;
  wire \x_V_reg[12]_i_1_n_2 ;
  wire \x_V_reg[12]_i_1_n_3 ;
  wire \x_V_reg[12]_i_1_n_4 ;
  wire \x_V_reg[12]_i_1_n_5 ;
  wire \x_V_reg[12]_i_1_n_6 ;
  wire \x_V_reg[12]_i_1_n_7 ;
  wire \x_V_reg[4]_i_1_n_0 ;
  wire \x_V_reg[4]_i_1_n_1 ;
  wire \x_V_reg[4]_i_1_n_2 ;
  wire \x_V_reg[4]_i_1_n_3 ;
  wire \x_V_reg[4]_i_1_n_4 ;
  wire \x_V_reg[4]_i_1_n_5 ;
  wire \x_V_reg[4]_i_1_n_6 ;
  wire \x_V_reg[4]_i_1_n_7 ;
  wire \x_V_reg[8]_i_1_n_0 ;
  wire \x_V_reg[8]_i_1_n_1 ;
  wire \x_V_reg[8]_i_1_n_2 ;
  wire \x_V_reg[8]_i_1_n_3 ;
  wire \x_V_reg[8]_i_1_n_4 ;
  wire \x_V_reg[8]_i_1_n_5 ;
  wire \x_V_reg[8]_i_1_n_6 ;
  wire \x_V_reg[8]_i_1_n_7 ;
  wire yStreamOut_V_V_1_ack_in;
  wire yStreamOut_V_V_1_load_B;
  wire [15:0]yStreamOut_V_V_1_payload_A;
  wire \yStreamOut_V_V_1_payload_A[0]_i_1_n_0 ;
  wire \yStreamOut_V_V_1_payload_A[10]_i_1_n_0 ;
  wire \yStreamOut_V_V_1_payload_A[11]_i_1_n_0 ;
  wire \yStreamOut_V_V_1_payload_A[12]_i_1_n_0 ;
  wire \yStreamOut_V_V_1_payload_A[13]_i_1_n_0 ;
  wire \yStreamOut_V_V_1_payload_A[14]_i_1_n_0 ;
  wire \yStreamOut_V_V_1_payload_A[15]_i_1_n_0 ;
  wire \yStreamOut_V_V_1_payload_A[15]_i_2_n_0 ;
  wire \yStreamOut_V_V_1_payload_A[15]_i_5_n_0 ;
  wire \yStreamOut_V_V_1_payload_A[15]_i_6_n_0 ;
  wire \yStreamOut_V_V_1_payload_A[15]_i_7_n_0 ;
  wire \yStreamOut_V_V_1_payload_A[15]_i_8_n_0 ;
  wire \yStreamOut_V_V_1_payload_A[1]_i_1_n_0 ;
  wire \yStreamOut_V_V_1_payload_A[2]_i_1_n_0 ;
  wire \yStreamOut_V_V_1_payload_A[3]_i_1_n_0 ;
  wire \yStreamOut_V_V_1_payload_A[4]_i_1_n_0 ;
  wire \yStreamOut_V_V_1_payload_A[5]_i_1_n_0 ;
  wire \yStreamOut_V_V_1_payload_A[6]_i_1_n_0 ;
  wire \yStreamOut_V_V_1_payload_A[7]_i_1_n_0 ;
  wire \yStreamOut_V_V_1_payload_A[8]_i_1_n_0 ;
  wire \yStreamOut_V_V_1_payload_A[9]_i_1_n_0 ;
  wire \yStreamOut_V_V_1_payload_A_reg[12]_i_2_n_0 ;
  wire \yStreamOut_V_V_1_payload_A_reg[12]_i_2_n_1 ;
  wire \yStreamOut_V_V_1_payload_A_reg[12]_i_2_n_2 ;
  wire \yStreamOut_V_V_1_payload_A_reg[12]_i_2_n_3 ;
  wire \yStreamOut_V_V_1_payload_A_reg[15]_i_3_n_2 ;
  wire \yStreamOut_V_V_1_payload_A_reg[15]_i_3_n_3 ;
  wire \yStreamOut_V_V_1_payload_A_reg[4]_i_2_n_0 ;
  wire \yStreamOut_V_V_1_payload_A_reg[4]_i_2_n_1 ;
  wire \yStreamOut_V_V_1_payload_A_reg[4]_i_2_n_2 ;
  wire \yStreamOut_V_V_1_payload_A_reg[4]_i_2_n_3 ;
  wire \yStreamOut_V_V_1_payload_A_reg[8]_i_2_n_0 ;
  wire \yStreamOut_V_V_1_payload_A_reg[8]_i_2_n_1 ;
  wire \yStreamOut_V_V_1_payload_A_reg[8]_i_2_n_2 ;
  wire \yStreamOut_V_V_1_payload_A_reg[8]_i_2_n_3 ;
  wire [15:0]yStreamOut_V_V_1_payload_B;
  wire yStreamOut_V_V_1_sel;
  wire yStreamOut_V_V_1_sel_rd_i_1_n_0;
  wire yStreamOut_V_V_1_sel_wr;
  wire yStreamOut_V_V_1_sel_wr_i_1_n_0;
  wire \yStreamOut_V_V_1_state[0]_i_1_n_0 ;
  wire \yStreamOut_V_V_1_state[1]_i_1_n_0 ;
  wire [15:0]yStreamOut_V_V_TDATA;
  wire yStreamOut_V_V_TREADY;
  wire yStreamOut_V_V_TVALID;
  wire y_V0;
  wire \y_V[0]_i_3_n_0 ;
  wire \y_V[0]_i_4_n_0 ;
  wire \y_V[0]_i_5_n_0 ;
  wire \y_V[0]_i_6_n_0 ;
  wire \y_V[0]_i_7_n_0 ;
  wire \y_V[12]_i_2_n_0 ;
  wire \y_V[12]_i_3_n_0 ;
  wire \y_V[12]_i_4_n_0 ;
  wire \y_V[12]_i_5_n_0 ;
  wire \y_V[4]_i_2_n_0 ;
  wire \y_V[4]_i_3_n_0 ;
  wire \y_V[4]_i_4_n_0 ;
  wire \y_V[4]_i_5_n_0 ;
  wire \y_V[8]_i_2_n_0 ;
  wire \y_V[8]_i_3_n_0 ;
  wire \y_V[8]_i_4_n_0 ;
  wire \y_V[8]_i_5_n_0 ;
  wire [15:0]y_V_reg;
  wire \y_V_reg[0]_i_2_n_0 ;
  wire \y_V_reg[0]_i_2_n_1 ;
  wire \y_V_reg[0]_i_2_n_2 ;
  wire \y_V_reg[0]_i_2_n_3 ;
  wire \y_V_reg[0]_i_2_n_4 ;
  wire \y_V_reg[0]_i_2_n_5 ;
  wire \y_V_reg[0]_i_2_n_6 ;
  wire \y_V_reg[0]_i_2_n_7 ;
  wire \y_V_reg[12]_i_1_n_1 ;
  wire \y_V_reg[12]_i_1_n_2 ;
  wire \y_V_reg[12]_i_1_n_3 ;
  wire \y_V_reg[12]_i_1_n_4 ;
  wire \y_V_reg[12]_i_1_n_5 ;
  wire \y_V_reg[12]_i_1_n_6 ;
  wire \y_V_reg[12]_i_1_n_7 ;
  wire \y_V_reg[4]_i_1_n_0 ;
  wire \y_V_reg[4]_i_1_n_1 ;
  wire \y_V_reg[4]_i_1_n_2 ;
  wire \y_V_reg[4]_i_1_n_3 ;
  wire \y_V_reg[4]_i_1_n_4 ;
  wire \y_V_reg[4]_i_1_n_5 ;
  wire \y_V_reg[4]_i_1_n_6 ;
  wire \y_V_reg[4]_i_1_n_7 ;
  wire \y_V_reg[8]_i_1_n_0 ;
  wire \y_V_reg[8]_i_1_n_1 ;
  wire \y_V_reg[8]_i_1_n_2 ;
  wire \y_V_reg[8]_i_1_n_3 ;
  wire \y_V_reg[8]_i_1_n_4 ;
  wire \y_V_reg[8]_i_1_n_5 ;
  wire \y_V_reg[8]_i_1_n_6 ;
  wire \y_V_reg[8]_i_1_n_7 ;
  wire [3:2]\NLW_xStreamOut_V_V_1_payload_A_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_xStreamOut_V_V_1_payload_A_reg[15]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_x_V_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_yStreamOut_V_V_1_payload_A_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_yStreamOut_V_V_1_payload_A_reg[15]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_y_V_reg[12]_i_1_CO_UNCONNECTED ;

  assign ap_ready = ap_done;
  assign polStreamOut_V_V_TDATA[7] = \<const0> ;
  assign polStreamOut_V_V_TDATA[6] = \<const0> ;
  assign polStreamOut_V_V_TDATA[5] = \<const0> ;
  assign polStreamOut_V_V_TDATA[4] = \<const0> ;
  assign polStreamOut_V_V_TDATA[3] = \<const0> ;
  assign polStreamOut_V_V_TDATA[2] = \<const0> ;
  assign polStreamOut_V_V_TDATA[1] = \<const0> ;
  assign polStreamOut_V_V_TDATA[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h2E)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_done),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .O(\ap_CS_fsm[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hD1)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_done),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .O(\ap_CS_fsm[1]_i_1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[0]_i_1_n_0 ),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[1]_i_1_n_0 ),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .O(ap_idle));
  LUT5 #(
    .INIT(32'h80000000)) 
    ap_ready_INST_0
       (.I0(ap_CS_fsm_state2),
        .I1(\polStreamOut_V_V_1_state_reg_n_0_[1] ),
        .I2(xStreamOut_V_V_1_ack_in),
        .I3(yStreamOut_V_V_1_ack_in),
        .I4(tsStreamOut_V_V_1_ack_in),
        .O(ap_done));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0000EA00)) 
    ap_reg_ioackin_deltaTsReg_dummy_ack_i_1
       (.I0(ap_reg_ioackin_deltaTsReg_dummy_ack),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_start),
        .I3(ap_rst_n),
        .I4(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .O(ap_reg_ioackin_deltaTsReg_dummy_ack_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_reg_ioackin_deltaTsReg_dummy_ack_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_reg_ioackin_deltaTsReg_dummy_ack_i_1_n_0),
        .Q(ap_reg_ioackin_deltaTsReg_dummy_ack),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    deltaTsReg_ap_vld_INST_0
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_reg_ioackin_deltaTsReg_dummy_ack),
        .O(deltaTsReg_ap_vld));
  LUT5 #(
    .INIT(32'hA8A80888)) 
    \polStreamOut_V_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(polStreamOut_V_V_TVALID),
        .I2(\polStreamOut_V_V_1_state_reg_n_0_[1] ),
        .I3(polStreamOut_V_V_TREADY),
        .I4(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .O(\polStreamOut_V_V_1_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hDFCF)) 
    \polStreamOut_V_V_1_state[1]_i_1 
       (.I0(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I1(polStreamOut_V_V_TREADY),
        .I2(polStreamOut_V_V_TVALID),
        .I3(\polStreamOut_V_V_1_state_reg_n_0_[1] ),
        .O(\polStreamOut_V_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \polStreamOut_V_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\polStreamOut_V_V_1_state[0]_i_1_n_0 ),
        .Q(polStreamOut_V_V_TVALID),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \polStreamOut_V_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\polStreamOut_V_V_1_state[1]_i_1_n_0 ),
        .Q(\polStreamOut_V_V_1_state_reg_n_0_[1] ),
        .R(ap_rst));
  brd_eventSimulator_0_0_randomGenerator retData_randomGenerator_fu_115
       (.D(tmp_V_2_fu_134_p2),
        .O({retData_randomGenerator_fu_115_n_1,retData_randomGenerator_fu_115_n_2,retData_randomGenerator_fu_115_n_3,retData_randomGenerator_fu_115_n_4}),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .ap_clk(ap_clk),
        .ap_reg_ioackin_deltaTsReg_dummy_ack0_out(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .ap_rst(ap_rst),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .deltaTsReg(deltaTsReg),
        .\polStreamOut_V_V_1_state_reg[1] (\polStreamOut_V_V_1_state_reg_n_0_[1] ),
        .tsStreamOut_V_V_1_ack_in(tsStreamOut_V_V_1_ack_in),
        .ts_V_reg(ts_V_reg),
        .\ts_V_reg[11] ({retData_randomGenerator_fu_115_n_9,retData_randomGenerator_fu_115_n_10,retData_randomGenerator_fu_115_n_11,retData_randomGenerator_fu_115_n_12}),
        .\ts_V_reg[15] ({retData_randomGenerator_fu_115_n_13,retData_randomGenerator_fu_115_n_14,retData_randomGenerator_fu_115_n_15,retData_randomGenerator_fu_115_n_16}),
        .\ts_V_reg[19] ({retData_randomGenerator_fu_115_n_17,retData_randomGenerator_fu_115_n_18,retData_randomGenerator_fu_115_n_19,retData_randomGenerator_fu_115_n_20}),
        .\ts_V_reg[23] ({retData_randomGenerator_fu_115_n_21,retData_randomGenerator_fu_115_n_22,retData_randomGenerator_fu_115_n_23,retData_randomGenerator_fu_115_n_24}),
        .\ts_V_reg[27] ({retData_randomGenerator_fu_115_n_25,retData_randomGenerator_fu_115_n_26,retData_randomGenerator_fu_115_n_27,retData_randomGenerator_fu_115_n_28}),
        .\ts_V_reg[31] ({retData_randomGenerator_fu_115_n_29,retData_randomGenerator_fu_115_n_30,retData_randomGenerator_fu_115_n_31,retData_randomGenerator_fu_115_n_32}),
        .\ts_V_reg[35] ({retData_randomGenerator_fu_115_n_33,retData_randomGenerator_fu_115_n_34,retData_randomGenerator_fu_115_n_35,retData_randomGenerator_fu_115_n_36}),
        .\ts_V_reg[39] ({retData_randomGenerator_fu_115_n_37,retData_randomGenerator_fu_115_n_38,retData_randomGenerator_fu_115_n_39,retData_randomGenerator_fu_115_n_40}),
        .\ts_V_reg[43] ({retData_randomGenerator_fu_115_n_41,retData_randomGenerator_fu_115_n_42,retData_randomGenerator_fu_115_n_43,retData_randomGenerator_fu_115_n_44}),
        .\ts_V_reg[47] ({retData_randomGenerator_fu_115_n_45,retData_randomGenerator_fu_115_n_46,retData_randomGenerator_fu_115_n_47,retData_randomGenerator_fu_115_n_48}),
        .\ts_V_reg[51] ({retData_randomGenerator_fu_115_n_49,retData_randomGenerator_fu_115_n_50,retData_randomGenerator_fu_115_n_51,retData_randomGenerator_fu_115_n_52}),
        .\ts_V_reg[55] ({retData_randomGenerator_fu_115_n_53,retData_randomGenerator_fu_115_n_54,retData_randomGenerator_fu_115_n_55,retData_randomGenerator_fu_115_n_56}),
        .\ts_V_reg[59] ({retData_randomGenerator_fu_115_n_57,retData_randomGenerator_fu_115_n_58,retData_randomGenerator_fu_115_n_59,retData_randomGenerator_fu_115_n_60}),
        .\ts_V_reg[63] ({retData_randomGenerator_fu_115_n_61,retData_randomGenerator_fu_115_n_62,retData_randomGenerator_fu_115_n_63,retData_randomGenerator_fu_115_n_64}),
        .\ts_V_reg[7] ({retData_randomGenerator_fu_115_n_5,retData_randomGenerator_fu_115_n_6,retData_randomGenerator_fu_115_n_7,retData_randomGenerator_fu_115_n_8}),
        .xStreamOut_V_V_1_ack_in(xStreamOut_V_V_1_ack_in),
        .yStreamOut_V_V_1_ack_in(yStreamOut_V_V_1_ack_in));
  LUT3 #(
    .INIT(8'h0D)) 
    \tsStreamOut_V_V_1_payload_A[63]_i_1 
       (.I0(tsStreamOut_V_V_TVALID),
        .I1(tsStreamOut_V_V_1_ack_in),
        .I2(tsStreamOut_V_V_1_sel_wr),
        .O(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[0]),
        .Q(tsStreamOut_V_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[10]),
        .Q(tsStreamOut_V_V_1_payload_A[10]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[11]),
        .Q(tsStreamOut_V_V_1_payload_A[11]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[12]),
        .Q(tsStreamOut_V_V_1_payload_A[12]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[13]),
        .Q(tsStreamOut_V_V_1_payload_A[13]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[14]),
        .Q(tsStreamOut_V_V_1_payload_A[14]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[15]),
        .Q(tsStreamOut_V_V_1_payload_A[15]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[16]),
        .Q(tsStreamOut_V_V_1_payload_A[16]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[17]),
        .Q(tsStreamOut_V_V_1_payload_A[17]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[18]),
        .Q(tsStreamOut_V_V_1_payload_A[18]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[19]),
        .Q(tsStreamOut_V_V_1_payload_A[19]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[1]),
        .Q(tsStreamOut_V_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[20]),
        .Q(tsStreamOut_V_V_1_payload_A[20]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[21]),
        .Q(tsStreamOut_V_V_1_payload_A[21]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[22]),
        .Q(tsStreamOut_V_V_1_payload_A[22]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[23]),
        .Q(tsStreamOut_V_V_1_payload_A[23]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[24]),
        .Q(tsStreamOut_V_V_1_payload_A[24]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[25]),
        .Q(tsStreamOut_V_V_1_payload_A[25]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[26]),
        .Q(tsStreamOut_V_V_1_payload_A[26]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[27]),
        .Q(tsStreamOut_V_V_1_payload_A[27]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[28]),
        .Q(tsStreamOut_V_V_1_payload_A[28]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[29]),
        .Q(tsStreamOut_V_V_1_payload_A[29]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[2]),
        .Q(tsStreamOut_V_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[30]),
        .Q(tsStreamOut_V_V_1_payload_A[30]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[31]),
        .Q(tsStreamOut_V_V_1_payload_A[31]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[32] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[32]),
        .Q(tsStreamOut_V_V_1_payload_A[32]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[33] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[33]),
        .Q(tsStreamOut_V_V_1_payload_A[33]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[34] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[34]),
        .Q(tsStreamOut_V_V_1_payload_A[34]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[35] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[35]),
        .Q(tsStreamOut_V_V_1_payload_A[35]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[36] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[36]),
        .Q(tsStreamOut_V_V_1_payload_A[36]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[37] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[37]),
        .Q(tsStreamOut_V_V_1_payload_A[37]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[38] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[38]),
        .Q(tsStreamOut_V_V_1_payload_A[38]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[39] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[39]),
        .Q(tsStreamOut_V_V_1_payload_A[39]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[3]),
        .Q(tsStreamOut_V_V_1_payload_A[3]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[40] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[40]),
        .Q(tsStreamOut_V_V_1_payload_A[40]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[41] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[41]),
        .Q(tsStreamOut_V_V_1_payload_A[41]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[42] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[42]),
        .Q(tsStreamOut_V_V_1_payload_A[42]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[43] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[43]),
        .Q(tsStreamOut_V_V_1_payload_A[43]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[44] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[44]),
        .Q(tsStreamOut_V_V_1_payload_A[44]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[45] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[45]),
        .Q(tsStreamOut_V_V_1_payload_A[45]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[46] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[46]),
        .Q(tsStreamOut_V_V_1_payload_A[46]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[47] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[47]),
        .Q(tsStreamOut_V_V_1_payload_A[47]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[48] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[48]),
        .Q(tsStreamOut_V_V_1_payload_A[48]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[49] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[49]),
        .Q(tsStreamOut_V_V_1_payload_A[49]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[4]),
        .Q(tsStreamOut_V_V_1_payload_A[4]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[50] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[50]),
        .Q(tsStreamOut_V_V_1_payload_A[50]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[51] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[51]),
        .Q(tsStreamOut_V_V_1_payload_A[51]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[52] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[52]),
        .Q(tsStreamOut_V_V_1_payload_A[52]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[53] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[53]),
        .Q(tsStreamOut_V_V_1_payload_A[53]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[54] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[54]),
        .Q(tsStreamOut_V_V_1_payload_A[54]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[55] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[55]),
        .Q(tsStreamOut_V_V_1_payload_A[55]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[56] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[56]),
        .Q(tsStreamOut_V_V_1_payload_A[56]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[57] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[57]),
        .Q(tsStreamOut_V_V_1_payload_A[57]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[58] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[58]),
        .Q(tsStreamOut_V_V_1_payload_A[58]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[59] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[59]),
        .Q(tsStreamOut_V_V_1_payload_A[59]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[5]),
        .Q(tsStreamOut_V_V_1_payload_A[5]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[60] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[60]),
        .Q(tsStreamOut_V_V_1_payload_A[60]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[61] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[61]),
        .Q(tsStreamOut_V_V_1_payload_A[61]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[62] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[62]),
        .Q(tsStreamOut_V_V_1_payload_A[62]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[63] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[63]),
        .Q(tsStreamOut_V_V_1_payload_A[63]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[6]),
        .Q(tsStreamOut_V_V_1_payload_A[6]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[7]),
        .Q(tsStreamOut_V_V_1_payload_A[7]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[8]),
        .Q(tsStreamOut_V_V_1_payload_A[8]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(\tsStreamOut_V_V_1_payload_A[63]_i_1_n_0 ),
        .D(tmp_V_2_fu_134_p2[9]),
        .Q(tsStreamOut_V_V_1_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA2)) 
    \tsStreamOut_V_V_1_payload_B[63]_i_1 
       (.I0(tsStreamOut_V_V_1_sel_wr),
        .I1(tsStreamOut_V_V_TVALID),
        .I2(tsStreamOut_V_V_1_ack_in),
        .O(tsStreamOut_V_V_1_load_B));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[0]),
        .Q(tsStreamOut_V_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[10]),
        .Q(tsStreamOut_V_V_1_payload_B[10]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[11]),
        .Q(tsStreamOut_V_V_1_payload_B[11]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[12]),
        .Q(tsStreamOut_V_V_1_payload_B[12]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[13]),
        .Q(tsStreamOut_V_V_1_payload_B[13]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[14]),
        .Q(tsStreamOut_V_V_1_payload_B[14]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[15]),
        .Q(tsStreamOut_V_V_1_payload_B[15]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[16]),
        .Q(tsStreamOut_V_V_1_payload_B[16]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[17]),
        .Q(tsStreamOut_V_V_1_payload_B[17]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[18]),
        .Q(tsStreamOut_V_V_1_payload_B[18]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[19]),
        .Q(tsStreamOut_V_V_1_payload_B[19]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[1]),
        .Q(tsStreamOut_V_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[20]),
        .Q(tsStreamOut_V_V_1_payload_B[20]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[21]),
        .Q(tsStreamOut_V_V_1_payload_B[21]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[22]),
        .Q(tsStreamOut_V_V_1_payload_B[22]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[23]),
        .Q(tsStreamOut_V_V_1_payload_B[23]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[24]),
        .Q(tsStreamOut_V_V_1_payload_B[24]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[25]),
        .Q(tsStreamOut_V_V_1_payload_B[25]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[26]),
        .Q(tsStreamOut_V_V_1_payload_B[26]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[27]),
        .Q(tsStreamOut_V_V_1_payload_B[27]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[28]),
        .Q(tsStreamOut_V_V_1_payload_B[28]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[29]),
        .Q(tsStreamOut_V_V_1_payload_B[29]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[2]),
        .Q(tsStreamOut_V_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[30]),
        .Q(tsStreamOut_V_V_1_payload_B[30]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[31]),
        .Q(tsStreamOut_V_V_1_payload_B[31]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[32] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[32]),
        .Q(tsStreamOut_V_V_1_payload_B[32]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[33] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[33]),
        .Q(tsStreamOut_V_V_1_payload_B[33]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[34] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[34]),
        .Q(tsStreamOut_V_V_1_payload_B[34]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[35] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[35]),
        .Q(tsStreamOut_V_V_1_payload_B[35]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[36] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[36]),
        .Q(tsStreamOut_V_V_1_payload_B[36]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[37] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[37]),
        .Q(tsStreamOut_V_V_1_payload_B[37]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[38] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[38]),
        .Q(tsStreamOut_V_V_1_payload_B[38]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[39] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[39]),
        .Q(tsStreamOut_V_V_1_payload_B[39]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[3]),
        .Q(tsStreamOut_V_V_1_payload_B[3]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[40] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[40]),
        .Q(tsStreamOut_V_V_1_payload_B[40]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[41] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[41]),
        .Q(tsStreamOut_V_V_1_payload_B[41]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[42] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[42]),
        .Q(tsStreamOut_V_V_1_payload_B[42]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[43] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[43]),
        .Q(tsStreamOut_V_V_1_payload_B[43]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[44] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[44]),
        .Q(tsStreamOut_V_V_1_payload_B[44]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[45] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[45]),
        .Q(tsStreamOut_V_V_1_payload_B[45]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[46] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[46]),
        .Q(tsStreamOut_V_V_1_payload_B[46]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[47] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[47]),
        .Q(tsStreamOut_V_V_1_payload_B[47]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[48] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[48]),
        .Q(tsStreamOut_V_V_1_payload_B[48]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[49] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[49]),
        .Q(tsStreamOut_V_V_1_payload_B[49]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[4]),
        .Q(tsStreamOut_V_V_1_payload_B[4]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[50] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[50]),
        .Q(tsStreamOut_V_V_1_payload_B[50]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[51] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[51]),
        .Q(tsStreamOut_V_V_1_payload_B[51]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[52] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[52]),
        .Q(tsStreamOut_V_V_1_payload_B[52]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[53] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[53]),
        .Q(tsStreamOut_V_V_1_payload_B[53]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[54] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[54]),
        .Q(tsStreamOut_V_V_1_payload_B[54]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[55] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[55]),
        .Q(tsStreamOut_V_V_1_payload_B[55]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[56] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[56]),
        .Q(tsStreamOut_V_V_1_payload_B[56]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[57] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[57]),
        .Q(tsStreamOut_V_V_1_payload_B[57]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[58] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[58]),
        .Q(tsStreamOut_V_V_1_payload_B[58]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[59] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[59]),
        .Q(tsStreamOut_V_V_1_payload_B[59]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[5]),
        .Q(tsStreamOut_V_V_1_payload_B[5]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[60] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[60]),
        .Q(tsStreamOut_V_V_1_payload_B[60]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[61] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[61]),
        .Q(tsStreamOut_V_V_1_payload_B[61]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[62] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[62]),
        .Q(tsStreamOut_V_V_1_payload_B[62]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[63] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[63]),
        .Q(tsStreamOut_V_V_1_payload_B[63]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[6]),
        .Q(tsStreamOut_V_V_1_payload_B[6]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[7]),
        .Q(tsStreamOut_V_V_1_payload_B[7]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[8]),
        .Q(tsStreamOut_V_V_1_payload_B[8]),
        .R(1'b0));
  FDRE \tsStreamOut_V_V_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(tsStreamOut_V_V_1_load_B),
        .D(tmp_V_2_fu_134_p2[9]),
        .Q(tsStreamOut_V_V_1_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    tsStreamOut_V_V_1_sel_rd_i_1
       (.I0(tsStreamOut_V_V_TREADY),
        .I1(tsStreamOut_V_V_TVALID),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tsStreamOut_V_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tsStreamOut_V_V_1_sel_rd_i_1_n_0),
        .Q(tsStreamOut_V_V_1_sel),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    tsStreamOut_V_V_1_sel_wr_i_1
       (.I0(tsStreamOut_V_V_1_ack_in),
        .I1(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I2(tsStreamOut_V_V_1_sel_wr),
        .O(tsStreamOut_V_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tsStreamOut_V_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tsStreamOut_V_V_1_sel_wr_i_1_n_0),
        .Q(tsStreamOut_V_V_1_sel_wr),
        .R(ap_rst));
  LUT5 #(
    .INIT(32'hA8A80888)) 
    \tsStreamOut_V_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(tsStreamOut_V_V_TVALID),
        .I2(tsStreamOut_V_V_1_ack_in),
        .I3(tsStreamOut_V_V_TREADY),
        .I4(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .O(\tsStreamOut_V_V_1_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hDFCF)) 
    \tsStreamOut_V_V_1_state[1]_i_1 
       (.I0(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I1(tsStreamOut_V_V_TREADY),
        .I2(tsStreamOut_V_V_TVALID),
        .I3(tsStreamOut_V_V_1_ack_in),
        .O(\tsStreamOut_V_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tsStreamOut_V_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tsStreamOut_V_V_1_state[0]_i_1_n_0 ),
        .Q(tsStreamOut_V_V_TVALID),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tsStreamOut_V_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tsStreamOut_V_V_1_state[1]_i_1_n_0 ),
        .Q(tsStreamOut_V_V_1_ack_in),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[0]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[0]),
        .I1(tsStreamOut_V_V_1_payload_A[0]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[10]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[10]),
        .I1(tsStreamOut_V_V_1_payload_A[10]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[11]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[11]),
        .I1(tsStreamOut_V_V_1_payload_A[11]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[12]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[12]),
        .I1(tsStreamOut_V_V_1_payload_A[12]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[13]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[13]),
        .I1(tsStreamOut_V_V_1_payload_A[13]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[14]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[14]),
        .I1(tsStreamOut_V_V_1_payload_A[14]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[14]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[15]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[15]),
        .I1(tsStreamOut_V_V_1_payload_A[15]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[16]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[16]),
        .I1(tsStreamOut_V_V_1_payload_A[16]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[16]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[17]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[17]),
        .I1(tsStreamOut_V_V_1_payload_A[17]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[17]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[18]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[18]),
        .I1(tsStreamOut_V_V_1_payload_A[18]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[18]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[19]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[19]),
        .I1(tsStreamOut_V_V_1_payload_A[19]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[19]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[1]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[1]),
        .I1(tsStreamOut_V_V_1_payload_A[1]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[20]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[20]),
        .I1(tsStreamOut_V_V_1_payload_A[20]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[20]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[21]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[21]),
        .I1(tsStreamOut_V_V_1_payload_A[21]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[21]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[22]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[22]),
        .I1(tsStreamOut_V_V_1_payload_A[22]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[22]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[23]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[23]),
        .I1(tsStreamOut_V_V_1_payload_A[23]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[23]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[24]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[24]),
        .I1(tsStreamOut_V_V_1_payload_A[24]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[24]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[25]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[25]),
        .I1(tsStreamOut_V_V_1_payload_A[25]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[25]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[26]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[26]),
        .I1(tsStreamOut_V_V_1_payload_A[26]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[26]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[27]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[27]),
        .I1(tsStreamOut_V_V_1_payload_A[27]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[27]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[28]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[28]),
        .I1(tsStreamOut_V_V_1_payload_A[28]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[28]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[29]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[29]),
        .I1(tsStreamOut_V_V_1_payload_A[29]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[29]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[2]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[2]),
        .I1(tsStreamOut_V_V_1_payload_A[2]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[30]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[30]),
        .I1(tsStreamOut_V_V_1_payload_A[30]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[30]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[31]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[31]),
        .I1(tsStreamOut_V_V_1_payload_A[31]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[31]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[32]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[32]),
        .I1(tsStreamOut_V_V_1_payload_A[32]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[32]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[33]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[33]),
        .I1(tsStreamOut_V_V_1_payload_A[33]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[33]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[34]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[34]),
        .I1(tsStreamOut_V_V_1_payload_A[34]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[34]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[35]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[35]),
        .I1(tsStreamOut_V_V_1_payload_A[35]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[35]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[36]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[36]),
        .I1(tsStreamOut_V_V_1_payload_A[36]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[36]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[37]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[37]),
        .I1(tsStreamOut_V_V_1_payload_A[37]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[37]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[38]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[38]),
        .I1(tsStreamOut_V_V_1_payload_A[38]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[38]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[39]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[39]),
        .I1(tsStreamOut_V_V_1_payload_A[39]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[39]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[3]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[3]),
        .I1(tsStreamOut_V_V_1_payload_A[3]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[40]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[40]),
        .I1(tsStreamOut_V_V_1_payload_A[40]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[40]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[41]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[41]),
        .I1(tsStreamOut_V_V_1_payload_A[41]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[41]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[42]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[42]),
        .I1(tsStreamOut_V_V_1_payload_A[42]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[42]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[43]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[43]),
        .I1(tsStreamOut_V_V_1_payload_A[43]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[43]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[44]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[44]),
        .I1(tsStreamOut_V_V_1_payload_A[44]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[44]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[45]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[45]),
        .I1(tsStreamOut_V_V_1_payload_A[45]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[45]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[46]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[46]),
        .I1(tsStreamOut_V_V_1_payload_A[46]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[46]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[47]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[47]),
        .I1(tsStreamOut_V_V_1_payload_A[47]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[47]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[48]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[48]),
        .I1(tsStreamOut_V_V_1_payload_A[48]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[48]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[49]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[49]),
        .I1(tsStreamOut_V_V_1_payload_A[49]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[49]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[4]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[4]),
        .I1(tsStreamOut_V_V_1_payload_A[4]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[50]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[50]),
        .I1(tsStreamOut_V_V_1_payload_A[50]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[50]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[51]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[51]),
        .I1(tsStreamOut_V_V_1_payload_A[51]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[51]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[52]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[52]),
        .I1(tsStreamOut_V_V_1_payload_A[52]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[52]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[53]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[53]),
        .I1(tsStreamOut_V_V_1_payload_A[53]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[53]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[54]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[54]),
        .I1(tsStreamOut_V_V_1_payload_A[54]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[54]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[55]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[55]),
        .I1(tsStreamOut_V_V_1_payload_A[55]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[55]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[56]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[56]),
        .I1(tsStreamOut_V_V_1_payload_A[56]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[56]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[57]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[57]),
        .I1(tsStreamOut_V_V_1_payload_A[57]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[57]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[58]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[58]),
        .I1(tsStreamOut_V_V_1_payload_A[58]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[58]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[59]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[59]),
        .I1(tsStreamOut_V_V_1_payload_A[59]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[59]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[5]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[5]),
        .I1(tsStreamOut_V_V_1_payload_A[5]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[60]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[60]),
        .I1(tsStreamOut_V_V_1_payload_A[60]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[60]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[61]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[61]),
        .I1(tsStreamOut_V_V_1_payload_A[61]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[61]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[62]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[62]),
        .I1(tsStreamOut_V_V_1_payload_A[62]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[62]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[63]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[63]),
        .I1(tsStreamOut_V_V_1_payload_A[63]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[63]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[6]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[6]),
        .I1(tsStreamOut_V_V_1_payload_A[6]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[7]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[7]),
        .I1(tsStreamOut_V_V_1_payload_A[7]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[8]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[8]),
        .I1(tsStreamOut_V_V_1_payload_A[8]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tsStreamOut_V_V_TDATA[9]_INST_0 
       (.I0(tsStreamOut_V_V_1_payload_B[9]),
        .I1(tsStreamOut_V_V_1_payload_A[9]),
        .I2(tsStreamOut_V_V_1_sel),
        .O(tsStreamOut_V_V_TDATA[9]));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[0] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_4),
        .Q(ts_V_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[10] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_10),
        .Q(ts_V_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[11] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_9),
        .Q(ts_V_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[12] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_16),
        .Q(ts_V_reg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[13] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_15),
        .Q(ts_V_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[14] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_14),
        .Q(ts_V_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[15] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_13),
        .Q(ts_V_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[16] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_20),
        .Q(ts_V_reg[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[17] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_19),
        .Q(ts_V_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[18] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_18),
        .Q(ts_V_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[19] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_17),
        .Q(ts_V_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[1] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_3),
        .Q(ts_V_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[20] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_24),
        .Q(ts_V_reg[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[21] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_23),
        .Q(ts_V_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[22] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_22),
        .Q(ts_V_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[23] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_21),
        .Q(ts_V_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[24] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_28),
        .Q(ts_V_reg[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[25] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_27),
        .Q(ts_V_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[26] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_26),
        .Q(ts_V_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[27] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_25),
        .Q(ts_V_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[28] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_32),
        .Q(ts_V_reg[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[29] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_31),
        .Q(ts_V_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[2] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_2),
        .Q(ts_V_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[30] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_30),
        .Q(ts_V_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[31] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_29),
        .Q(ts_V_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[32] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_36),
        .Q(ts_V_reg[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[33] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_35),
        .Q(ts_V_reg[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[34] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_34),
        .Q(ts_V_reg[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[35] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_33),
        .Q(ts_V_reg[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[36] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_40),
        .Q(ts_V_reg[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[37] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_39),
        .Q(ts_V_reg[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[38] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_38),
        .Q(ts_V_reg[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[39] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_37),
        .Q(ts_V_reg[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[3] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_1),
        .Q(ts_V_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[40] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_44),
        .Q(ts_V_reg[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[41] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_43),
        .Q(ts_V_reg[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[42] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_42),
        .Q(ts_V_reg[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[43] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_41),
        .Q(ts_V_reg[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[44] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_48),
        .Q(ts_V_reg[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[45] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_47),
        .Q(ts_V_reg[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[46] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_46),
        .Q(ts_V_reg[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[47] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_45),
        .Q(ts_V_reg[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[48] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_52),
        .Q(ts_V_reg[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[49] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_51),
        .Q(ts_V_reg[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[4] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_8),
        .Q(ts_V_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[50] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_50),
        .Q(ts_V_reg[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[51] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_49),
        .Q(ts_V_reg[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[52] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_56),
        .Q(ts_V_reg[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[53] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_55),
        .Q(ts_V_reg[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[54] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_54),
        .Q(ts_V_reg[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[55] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_53),
        .Q(ts_V_reg[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[56] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_60),
        .Q(ts_V_reg[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[57] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_59),
        .Q(ts_V_reg[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[58] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_58),
        .Q(ts_V_reg[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[59] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_57),
        .Q(ts_V_reg[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[5] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_7),
        .Q(ts_V_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[60] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_64),
        .Q(ts_V_reg[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[61] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_63),
        .Q(ts_V_reg[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[62] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_62),
        .Q(ts_V_reg[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[63] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_61),
        .Q(ts_V_reg[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[6] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_6),
        .Q(ts_V_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[7] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_5),
        .Q(ts_V_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[8] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_12),
        .Q(ts_V_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[9] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(retData_randomGenerator_fu_115_n_11),
        .Q(ts_V_reg[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \xStreamOut_V_V_1_payload_A[0]_i_1 
       (.I0(x_V_reg[0]),
        .O(tmp_2_fu_162_p2__0));
  LUT4 #(
    .INIT(16'h2022)) 
    \xStreamOut_V_V_1_payload_A[15]_i_1 
       (.I0(tmp_s_fu_151_p2),
        .I1(xStreamOut_V_V_1_sel_wr),
        .I2(xStreamOut_V_V_1_ack_in),
        .I3(xStreamOut_V_V_TVALID),
        .O(\xStreamOut_V_V_1_payload_A[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h0D)) 
    \xStreamOut_V_V_1_payload_A[15]_i_2 
       (.I0(xStreamOut_V_V_TVALID),
        .I1(xStreamOut_V_V_1_ack_in),
        .I2(xStreamOut_V_V_1_sel_wr),
        .O(\xStreamOut_V_V_1_payload_A[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \xStreamOut_V_V_1_payload_A[15]_i_4 
       (.I0(\xStreamOut_V_V_1_payload_A[15]_i_5_n_0 ),
        .I1(\xStreamOut_V_V_1_payload_A[15]_i_6_n_0 ),
        .I2(\xStreamOut_V_V_1_payload_A[15]_i_7_n_0 ),
        .I3(\xStreamOut_V_V_1_payload_A[15]_i_8_n_0 ),
        .O(tmp_s_fu_151_p2));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \xStreamOut_V_V_1_payload_A[15]_i_5 
       (.I0(x_V_reg[10]),
        .I1(x_V_reg[11]),
        .I2(x_V_reg[8]),
        .I3(x_V_reg[9]),
        .O(\xStreamOut_V_V_1_payload_A[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \xStreamOut_V_V_1_payload_A[15]_i_6 
       (.I0(x_V_reg[15]),
        .I1(x_V_reg[14]),
        .I2(x_V_reg[12]),
        .I3(x_V_reg[13]),
        .O(\xStreamOut_V_V_1_payload_A[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \xStreamOut_V_V_1_payload_A[15]_i_7 
       (.I0(x_V_reg[7]),
        .I1(x_V_reg[1]),
        .I2(x_V_reg[6]),
        .I3(x_V_reg[3]),
        .O(\xStreamOut_V_V_1_payload_A[15]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \xStreamOut_V_V_1_payload_A[15]_i_8 
       (.I0(x_V_reg[0]),
        .I1(x_V_reg[2]),
        .I2(x_V_reg[4]),
        .I3(x_V_reg[5]),
        .O(\xStreamOut_V_V_1_payload_A[15]_i_8_n_0 ));
  FDRE \xStreamOut_V_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(\xStreamOut_V_V_1_payload_A[15]_i_2_n_0 ),
        .D(tmp_2_fu_162_p2__0),
        .Q(xStreamOut_V_V_1_payload_A[0]),
        .R(\xStreamOut_V_V_1_payload_A[15]_i_1_n_0 ));
  FDRE \xStreamOut_V_V_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(\xStreamOut_V_V_1_payload_A[15]_i_2_n_0 ),
        .D(tmp_2_fu_162_p2[10]),
        .Q(xStreamOut_V_V_1_payload_A[10]),
        .R(\xStreamOut_V_V_1_payload_A[15]_i_1_n_0 ));
  FDRE \xStreamOut_V_V_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(\xStreamOut_V_V_1_payload_A[15]_i_2_n_0 ),
        .D(tmp_2_fu_162_p2[11]),
        .Q(xStreamOut_V_V_1_payload_A[11]),
        .R(\xStreamOut_V_V_1_payload_A[15]_i_1_n_0 ));
  FDRE \xStreamOut_V_V_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(\xStreamOut_V_V_1_payload_A[15]_i_2_n_0 ),
        .D(tmp_2_fu_162_p2[12]),
        .Q(xStreamOut_V_V_1_payload_A[12]),
        .R(\xStreamOut_V_V_1_payload_A[15]_i_1_n_0 ));
  CARRY4 \xStreamOut_V_V_1_payload_A_reg[12]_i_1 
       (.CI(\xStreamOut_V_V_1_payload_A_reg[8]_i_1_n_0 ),
        .CO({\xStreamOut_V_V_1_payload_A_reg[12]_i_1_n_0 ,\xStreamOut_V_V_1_payload_A_reg[12]_i_1_n_1 ,\xStreamOut_V_V_1_payload_A_reg[12]_i_1_n_2 ,\xStreamOut_V_V_1_payload_A_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_2_fu_162_p2[12:9]),
        .S(x_V_reg[12:9]));
  FDRE \xStreamOut_V_V_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(\xStreamOut_V_V_1_payload_A[15]_i_2_n_0 ),
        .D(tmp_2_fu_162_p2[13]),
        .Q(xStreamOut_V_V_1_payload_A[13]),
        .R(\xStreamOut_V_V_1_payload_A[15]_i_1_n_0 ));
  FDRE \xStreamOut_V_V_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(\xStreamOut_V_V_1_payload_A[15]_i_2_n_0 ),
        .D(tmp_2_fu_162_p2[14]),
        .Q(xStreamOut_V_V_1_payload_A[14]),
        .R(\xStreamOut_V_V_1_payload_A[15]_i_1_n_0 ));
  FDRE \xStreamOut_V_V_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(\xStreamOut_V_V_1_payload_A[15]_i_2_n_0 ),
        .D(tmp_2_fu_162_p2[15]),
        .Q(xStreamOut_V_V_1_payload_A[15]),
        .R(\xStreamOut_V_V_1_payload_A[15]_i_1_n_0 ));
  CARRY4 \xStreamOut_V_V_1_payload_A_reg[15]_i_3 
       (.CI(\xStreamOut_V_V_1_payload_A_reg[12]_i_1_n_0 ),
        .CO({\NLW_xStreamOut_V_V_1_payload_A_reg[15]_i_3_CO_UNCONNECTED [3:2],\xStreamOut_V_V_1_payload_A_reg[15]_i_3_n_2 ,\xStreamOut_V_V_1_payload_A_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_xStreamOut_V_V_1_payload_A_reg[15]_i_3_O_UNCONNECTED [3],tmp_2_fu_162_p2[15:13]}),
        .S({1'b0,x_V_reg[15:13]}));
  FDRE \xStreamOut_V_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(\xStreamOut_V_V_1_payload_A[15]_i_2_n_0 ),
        .D(tmp_2_fu_162_p2[1]),
        .Q(xStreamOut_V_V_1_payload_A[1]),
        .R(\xStreamOut_V_V_1_payload_A[15]_i_1_n_0 ));
  FDRE \xStreamOut_V_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(\xStreamOut_V_V_1_payload_A[15]_i_2_n_0 ),
        .D(tmp_2_fu_162_p2[2]),
        .Q(xStreamOut_V_V_1_payload_A[2]),
        .R(\xStreamOut_V_V_1_payload_A[15]_i_1_n_0 ));
  FDRE \xStreamOut_V_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(\xStreamOut_V_V_1_payload_A[15]_i_2_n_0 ),
        .D(tmp_2_fu_162_p2[3]),
        .Q(xStreamOut_V_V_1_payload_A[3]),
        .R(\xStreamOut_V_V_1_payload_A[15]_i_1_n_0 ));
  FDRE \xStreamOut_V_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(\xStreamOut_V_V_1_payload_A[15]_i_2_n_0 ),
        .D(tmp_2_fu_162_p2[4]),
        .Q(xStreamOut_V_V_1_payload_A[4]),
        .R(\xStreamOut_V_V_1_payload_A[15]_i_1_n_0 ));
  CARRY4 \xStreamOut_V_V_1_payload_A_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\xStreamOut_V_V_1_payload_A_reg[4]_i_1_n_0 ,\xStreamOut_V_V_1_payload_A_reg[4]_i_1_n_1 ,\xStreamOut_V_V_1_payload_A_reg[4]_i_1_n_2 ,\xStreamOut_V_V_1_payload_A_reg[4]_i_1_n_3 }),
        .CYINIT(x_V_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_2_fu_162_p2[4:1]),
        .S(x_V_reg[4:1]));
  FDRE \xStreamOut_V_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(\xStreamOut_V_V_1_payload_A[15]_i_2_n_0 ),
        .D(tmp_2_fu_162_p2[5]),
        .Q(xStreamOut_V_V_1_payload_A[5]),
        .R(\xStreamOut_V_V_1_payload_A[15]_i_1_n_0 ));
  FDRE \xStreamOut_V_V_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(\xStreamOut_V_V_1_payload_A[15]_i_2_n_0 ),
        .D(tmp_2_fu_162_p2[6]),
        .Q(xStreamOut_V_V_1_payload_A[6]),
        .R(\xStreamOut_V_V_1_payload_A[15]_i_1_n_0 ));
  FDRE \xStreamOut_V_V_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(\xStreamOut_V_V_1_payload_A[15]_i_2_n_0 ),
        .D(tmp_2_fu_162_p2[7]),
        .Q(xStreamOut_V_V_1_payload_A[7]),
        .R(\xStreamOut_V_V_1_payload_A[15]_i_1_n_0 ));
  FDRE \xStreamOut_V_V_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(\xStreamOut_V_V_1_payload_A[15]_i_2_n_0 ),
        .D(tmp_2_fu_162_p2[8]),
        .Q(xStreamOut_V_V_1_payload_A[8]),
        .R(\xStreamOut_V_V_1_payload_A[15]_i_1_n_0 ));
  CARRY4 \xStreamOut_V_V_1_payload_A_reg[8]_i_1 
       (.CI(\xStreamOut_V_V_1_payload_A_reg[4]_i_1_n_0 ),
        .CO({\xStreamOut_V_V_1_payload_A_reg[8]_i_1_n_0 ,\xStreamOut_V_V_1_payload_A_reg[8]_i_1_n_1 ,\xStreamOut_V_V_1_payload_A_reg[8]_i_1_n_2 ,\xStreamOut_V_V_1_payload_A_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_2_fu_162_p2[8:5]),
        .S(x_V_reg[8:5]));
  FDRE \xStreamOut_V_V_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(\xStreamOut_V_V_1_payload_A[15]_i_2_n_0 ),
        .D(tmp_2_fu_162_p2[9]),
        .Q(xStreamOut_V_V_1_payload_A[9]),
        .R(\xStreamOut_V_V_1_payload_A[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A00)) 
    \xStreamOut_V_V_1_payload_B[15]_i_1 
       (.I0(tmp_s_fu_151_p2),
        .I1(xStreamOut_V_V_1_ack_in),
        .I2(xStreamOut_V_V_TVALID),
        .I3(xStreamOut_V_V_1_sel_wr),
        .O(\xStreamOut_V_V_1_payload_B[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA2)) 
    \xStreamOut_V_V_1_payload_B[15]_i_2 
       (.I0(xStreamOut_V_V_1_sel_wr),
        .I1(xStreamOut_V_V_TVALID),
        .I2(xStreamOut_V_V_1_ack_in),
        .O(xStreamOut_V_V_1_load_B));
  FDRE \xStreamOut_V_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(xStreamOut_V_V_1_load_B),
        .D(tmp_2_fu_162_p2__0),
        .Q(xStreamOut_V_V_1_payload_B[0]),
        .R(\xStreamOut_V_V_1_payload_B[15]_i_1_n_0 ));
  FDRE \xStreamOut_V_V_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(xStreamOut_V_V_1_load_B),
        .D(tmp_2_fu_162_p2[10]),
        .Q(xStreamOut_V_V_1_payload_B[10]),
        .R(\xStreamOut_V_V_1_payload_B[15]_i_1_n_0 ));
  FDRE \xStreamOut_V_V_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(xStreamOut_V_V_1_load_B),
        .D(tmp_2_fu_162_p2[11]),
        .Q(xStreamOut_V_V_1_payload_B[11]),
        .R(\xStreamOut_V_V_1_payload_B[15]_i_1_n_0 ));
  FDRE \xStreamOut_V_V_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(xStreamOut_V_V_1_load_B),
        .D(tmp_2_fu_162_p2[12]),
        .Q(xStreamOut_V_V_1_payload_B[12]),
        .R(\xStreamOut_V_V_1_payload_B[15]_i_1_n_0 ));
  FDRE \xStreamOut_V_V_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(xStreamOut_V_V_1_load_B),
        .D(tmp_2_fu_162_p2[13]),
        .Q(xStreamOut_V_V_1_payload_B[13]),
        .R(\xStreamOut_V_V_1_payload_B[15]_i_1_n_0 ));
  FDRE \xStreamOut_V_V_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(xStreamOut_V_V_1_load_B),
        .D(tmp_2_fu_162_p2[14]),
        .Q(xStreamOut_V_V_1_payload_B[14]),
        .R(\xStreamOut_V_V_1_payload_B[15]_i_1_n_0 ));
  FDRE \xStreamOut_V_V_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(xStreamOut_V_V_1_load_B),
        .D(tmp_2_fu_162_p2[15]),
        .Q(xStreamOut_V_V_1_payload_B[15]),
        .R(\xStreamOut_V_V_1_payload_B[15]_i_1_n_0 ));
  FDRE \xStreamOut_V_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(xStreamOut_V_V_1_load_B),
        .D(tmp_2_fu_162_p2[1]),
        .Q(xStreamOut_V_V_1_payload_B[1]),
        .R(\xStreamOut_V_V_1_payload_B[15]_i_1_n_0 ));
  FDRE \xStreamOut_V_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(xStreamOut_V_V_1_load_B),
        .D(tmp_2_fu_162_p2[2]),
        .Q(xStreamOut_V_V_1_payload_B[2]),
        .R(\xStreamOut_V_V_1_payload_B[15]_i_1_n_0 ));
  FDRE \xStreamOut_V_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(xStreamOut_V_V_1_load_B),
        .D(tmp_2_fu_162_p2[3]),
        .Q(xStreamOut_V_V_1_payload_B[3]),
        .R(\xStreamOut_V_V_1_payload_B[15]_i_1_n_0 ));
  FDRE \xStreamOut_V_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(xStreamOut_V_V_1_load_B),
        .D(tmp_2_fu_162_p2[4]),
        .Q(xStreamOut_V_V_1_payload_B[4]),
        .R(\xStreamOut_V_V_1_payload_B[15]_i_1_n_0 ));
  FDRE \xStreamOut_V_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(xStreamOut_V_V_1_load_B),
        .D(tmp_2_fu_162_p2[5]),
        .Q(xStreamOut_V_V_1_payload_B[5]),
        .R(\xStreamOut_V_V_1_payload_B[15]_i_1_n_0 ));
  FDRE \xStreamOut_V_V_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(xStreamOut_V_V_1_load_B),
        .D(tmp_2_fu_162_p2[6]),
        .Q(xStreamOut_V_V_1_payload_B[6]),
        .R(\xStreamOut_V_V_1_payload_B[15]_i_1_n_0 ));
  FDRE \xStreamOut_V_V_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(xStreamOut_V_V_1_load_B),
        .D(tmp_2_fu_162_p2[7]),
        .Q(xStreamOut_V_V_1_payload_B[7]),
        .R(\xStreamOut_V_V_1_payload_B[15]_i_1_n_0 ));
  FDRE \xStreamOut_V_V_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(xStreamOut_V_V_1_load_B),
        .D(tmp_2_fu_162_p2[8]),
        .Q(xStreamOut_V_V_1_payload_B[8]),
        .R(\xStreamOut_V_V_1_payload_B[15]_i_1_n_0 ));
  FDRE \xStreamOut_V_V_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(xStreamOut_V_V_1_load_B),
        .D(tmp_2_fu_162_p2[9]),
        .Q(xStreamOut_V_V_1_payload_B[9]),
        .R(\xStreamOut_V_V_1_payload_B[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    xStreamOut_V_V_1_sel_rd_i_1
       (.I0(xStreamOut_V_V_TREADY),
        .I1(xStreamOut_V_V_TVALID),
        .I2(xStreamOut_V_V_1_sel),
        .O(xStreamOut_V_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    xStreamOut_V_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(xStreamOut_V_V_1_sel_rd_i_1_n_0),
        .Q(xStreamOut_V_V_1_sel),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    xStreamOut_V_V_1_sel_wr_i_1
       (.I0(xStreamOut_V_V_1_ack_in),
        .I1(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I2(xStreamOut_V_V_1_sel_wr),
        .O(xStreamOut_V_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    xStreamOut_V_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(xStreamOut_V_V_1_sel_wr_i_1_n_0),
        .Q(xStreamOut_V_V_1_sel_wr),
        .R(ap_rst));
  LUT5 #(
    .INIT(32'hA8A80888)) 
    \xStreamOut_V_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(xStreamOut_V_V_TVALID),
        .I2(xStreamOut_V_V_1_ack_in),
        .I3(xStreamOut_V_V_TREADY),
        .I4(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .O(\xStreamOut_V_V_1_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFF5D)) 
    \xStreamOut_V_V_1_state[1]_i_1 
       (.I0(xStreamOut_V_V_TVALID),
        .I1(xStreamOut_V_V_1_ack_in),
        .I2(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I3(xStreamOut_V_V_TREADY),
        .O(\xStreamOut_V_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \xStreamOut_V_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\xStreamOut_V_V_1_state[0]_i_1_n_0 ),
        .Q(xStreamOut_V_V_TVALID),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \xStreamOut_V_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\xStreamOut_V_V_1_state[1]_i_1_n_0 ),
        .Q(xStreamOut_V_V_1_ack_in),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut_V_V_TDATA[0]_INST_0 
       (.I0(xStreamOut_V_V_1_payload_B[0]),
        .I1(xStreamOut_V_V_1_payload_A[0]),
        .I2(xStreamOut_V_V_1_sel),
        .O(xStreamOut_V_V_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut_V_V_TDATA[10]_INST_0 
       (.I0(xStreamOut_V_V_1_payload_B[10]),
        .I1(xStreamOut_V_V_1_payload_A[10]),
        .I2(xStreamOut_V_V_1_sel),
        .O(xStreamOut_V_V_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut_V_V_TDATA[11]_INST_0 
       (.I0(xStreamOut_V_V_1_payload_B[11]),
        .I1(xStreamOut_V_V_1_payload_A[11]),
        .I2(xStreamOut_V_V_1_sel),
        .O(xStreamOut_V_V_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut_V_V_TDATA[12]_INST_0 
       (.I0(xStreamOut_V_V_1_payload_B[12]),
        .I1(xStreamOut_V_V_1_payload_A[12]),
        .I2(xStreamOut_V_V_1_sel),
        .O(xStreamOut_V_V_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut_V_V_TDATA[13]_INST_0 
       (.I0(xStreamOut_V_V_1_payload_B[13]),
        .I1(xStreamOut_V_V_1_payload_A[13]),
        .I2(xStreamOut_V_V_1_sel),
        .O(xStreamOut_V_V_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut_V_V_TDATA[14]_INST_0 
       (.I0(xStreamOut_V_V_1_payload_B[14]),
        .I1(xStreamOut_V_V_1_payload_A[14]),
        .I2(xStreamOut_V_V_1_sel),
        .O(xStreamOut_V_V_TDATA[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut_V_V_TDATA[15]_INST_0 
       (.I0(xStreamOut_V_V_1_payload_B[15]),
        .I1(xStreamOut_V_V_1_payload_A[15]),
        .I2(xStreamOut_V_V_1_sel),
        .O(xStreamOut_V_V_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut_V_V_TDATA[1]_INST_0 
       (.I0(xStreamOut_V_V_1_payload_B[1]),
        .I1(xStreamOut_V_V_1_payload_A[1]),
        .I2(xStreamOut_V_V_1_sel),
        .O(xStreamOut_V_V_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut_V_V_TDATA[2]_INST_0 
       (.I0(xStreamOut_V_V_1_payload_B[2]),
        .I1(xStreamOut_V_V_1_payload_A[2]),
        .I2(xStreamOut_V_V_1_sel),
        .O(xStreamOut_V_V_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut_V_V_TDATA[3]_INST_0 
       (.I0(xStreamOut_V_V_1_payload_B[3]),
        .I1(xStreamOut_V_V_1_payload_A[3]),
        .I2(xStreamOut_V_V_1_sel),
        .O(xStreamOut_V_V_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut_V_V_TDATA[4]_INST_0 
       (.I0(xStreamOut_V_V_1_payload_B[4]),
        .I1(xStreamOut_V_V_1_payload_A[4]),
        .I2(xStreamOut_V_V_1_sel),
        .O(xStreamOut_V_V_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut_V_V_TDATA[5]_INST_0 
       (.I0(xStreamOut_V_V_1_payload_B[5]),
        .I1(xStreamOut_V_V_1_payload_A[5]),
        .I2(xStreamOut_V_V_1_sel),
        .O(xStreamOut_V_V_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut_V_V_TDATA[6]_INST_0 
       (.I0(xStreamOut_V_V_1_payload_B[6]),
        .I1(xStreamOut_V_V_1_payload_A[6]),
        .I2(xStreamOut_V_V_1_sel),
        .O(xStreamOut_V_V_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut_V_V_TDATA[7]_INST_0 
       (.I0(xStreamOut_V_V_1_payload_B[7]),
        .I1(xStreamOut_V_V_1_payload_A[7]),
        .I2(xStreamOut_V_V_1_sel),
        .O(xStreamOut_V_V_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut_V_V_TDATA[8]_INST_0 
       (.I0(xStreamOut_V_V_1_payload_B[8]),
        .I1(xStreamOut_V_V_1_payload_A[8]),
        .I2(xStreamOut_V_V_1_sel),
        .O(xStreamOut_V_V_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \xStreamOut_V_V_TDATA[9]_INST_0 
       (.I0(xStreamOut_V_V_1_payload_B[9]),
        .I1(xStreamOut_V_V_1_payload_A[9]),
        .I2(xStreamOut_V_V_1_sel),
        .O(xStreamOut_V_V_TDATA[9]));
  LUT2 #(
    .INIT(4'h2)) 
    \x_V[0]_i_2 
       (.I0(x_V_reg[0]),
        .I1(tmp_s_fu_151_p2),
        .O(\x_V[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \x_V[0]_i_3 
       (.I0(x_V_reg[3]),
        .I1(tmp_s_fu_151_p2),
        .O(\x_V[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \x_V[0]_i_4 
       (.I0(x_V_reg[2]),
        .I1(tmp_s_fu_151_p2),
        .O(\x_V[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \x_V[0]_i_5 
       (.I0(x_V_reg[1]),
        .I1(tmp_s_fu_151_p2),
        .O(\x_V[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \x_V[0]_i_6 
       (.I0(x_V_reg[0]),
        .I1(tmp_s_fu_151_p2),
        .O(\x_V[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \x_V[12]_i_2 
       (.I0(x_V_reg[15]),
        .I1(tmp_s_fu_151_p2),
        .O(\x_V[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \x_V[12]_i_3 
       (.I0(x_V_reg[14]),
        .I1(tmp_s_fu_151_p2),
        .O(\x_V[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \x_V[12]_i_4 
       (.I0(x_V_reg[13]),
        .I1(tmp_s_fu_151_p2),
        .O(\x_V[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \x_V[12]_i_5 
       (.I0(x_V_reg[12]),
        .I1(tmp_s_fu_151_p2),
        .O(\x_V[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \x_V[4]_i_2 
       (.I0(x_V_reg[7]),
        .I1(tmp_s_fu_151_p2),
        .O(\x_V[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \x_V[4]_i_3 
       (.I0(x_V_reg[6]),
        .I1(tmp_s_fu_151_p2),
        .O(\x_V[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \x_V[4]_i_4 
       (.I0(x_V_reg[5]),
        .I1(tmp_s_fu_151_p2),
        .O(\x_V[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \x_V[4]_i_5 
       (.I0(x_V_reg[4]),
        .I1(tmp_s_fu_151_p2),
        .O(\x_V[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \x_V[8]_i_2 
       (.I0(x_V_reg[11]),
        .I1(tmp_s_fu_151_p2),
        .O(\x_V[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \x_V[8]_i_3 
       (.I0(x_V_reg[10]),
        .I1(tmp_s_fu_151_p2),
        .O(\x_V[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \x_V[8]_i_4 
       (.I0(x_V_reg[9]),
        .I1(tmp_s_fu_151_p2),
        .O(\x_V[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \x_V[8]_i_5 
       (.I0(x_V_reg[8]),
        .I1(tmp_s_fu_151_p2),
        .O(\x_V[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \x_V_reg[0] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(\x_V_reg[0]_i_1_n_7 ),
        .Q(x_V_reg[0]),
        .R(1'b0));
  CARRY4 \x_V_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\x_V_reg[0]_i_1_n_0 ,\x_V_reg[0]_i_1_n_1 ,\x_V_reg[0]_i_1_n_2 ,\x_V_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\x_V[0]_i_2_n_0 }),
        .O({\x_V_reg[0]_i_1_n_4 ,\x_V_reg[0]_i_1_n_5 ,\x_V_reg[0]_i_1_n_6 ,\x_V_reg[0]_i_1_n_7 }),
        .S({\x_V[0]_i_3_n_0 ,\x_V[0]_i_4_n_0 ,\x_V[0]_i_5_n_0 ,\x_V[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \x_V_reg[10] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(\x_V_reg[8]_i_1_n_5 ),
        .Q(x_V_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_V_reg[11] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(\x_V_reg[8]_i_1_n_4 ),
        .Q(x_V_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_V_reg[12] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(\x_V_reg[12]_i_1_n_7 ),
        .Q(x_V_reg[12]),
        .R(1'b0));
  CARRY4 \x_V_reg[12]_i_1 
       (.CI(\x_V_reg[8]_i_1_n_0 ),
        .CO({\NLW_x_V_reg[12]_i_1_CO_UNCONNECTED [3],\x_V_reg[12]_i_1_n_1 ,\x_V_reg[12]_i_1_n_2 ,\x_V_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_V_reg[12]_i_1_n_4 ,\x_V_reg[12]_i_1_n_5 ,\x_V_reg[12]_i_1_n_6 ,\x_V_reg[12]_i_1_n_7 }),
        .S({\x_V[12]_i_2_n_0 ,\x_V[12]_i_3_n_0 ,\x_V[12]_i_4_n_0 ,\x_V[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \x_V_reg[13] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(\x_V_reg[12]_i_1_n_6 ),
        .Q(x_V_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_V_reg[14] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(\x_V_reg[12]_i_1_n_5 ),
        .Q(x_V_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_V_reg[15] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(\x_V_reg[12]_i_1_n_4 ),
        .Q(x_V_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_V_reg[1] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(\x_V_reg[0]_i_1_n_6 ),
        .Q(x_V_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_V_reg[2] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(\x_V_reg[0]_i_1_n_5 ),
        .Q(x_V_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_V_reg[3] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(\x_V_reg[0]_i_1_n_4 ),
        .Q(x_V_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_V_reg[4] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(\x_V_reg[4]_i_1_n_7 ),
        .Q(x_V_reg[4]),
        .R(1'b0));
  CARRY4 \x_V_reg[4]_i_1 
       (.CI(\x_V_reg[0]_i_1_n_0 ),
        .CO({\x_V_reg[4]_i_1_n_0 ,\x_V_reg[4]_i_1_n_1 ,\x_V_reg[4]_i_1_n_2 ,\x_V_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_V_reg[4]_i_1_n_4 ,\x_V_reg[4]_i_1_n_5 ,\x_V_reg[4]_i_1_n_6 ,\x_V_reg[4]_i_1_n_7 }),
        .S({\x_V[4]_i_2_n_0 ,\x_V[4]_i_3_n_0 ,\x_V[4]_i_4_n_0 ,\x_V[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \x_V_reg[5] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(\x_V_reg[4]_i_1_n_6 ),
        .Q(x_V_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_V_reg[6] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(\x_V_reg[4]_i_1_n_5 ),
        .Q(x_V_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_V_reg[7] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(\x_V_reg[4]_i_1_n_4 ),
        .Q(x_V_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_V_reg[8] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(\x_V_reg[8]_i_1_n_7 ),
        .Q(x_V_reg[8]),
        .R(1'b0));
  CARRY4 \x_V_reg[8]_i_1 
       (.CI(\x_V_reg[4]_i_1_n_0 ),
        .CO({\x_V_reg[8]_i_1_n_0 ,\x_V_reg[8]_i_1_n_1 ,\x_V_reg[8]_i_1_n_2 ,\x_V_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_V_reg[8]_i_1_n_4 ,\x_V_reg[8]_i_1_n_5 ,\x_V_reg[8]_i_1_n_6 ,\x_V_reg[8]_i_1_n_7 }),
        .S({\x_V[8]_i_2_n_0 ,\x_V[8]_i_3_n_0 ,\x_V[8]_i_4_n_0 ,\x_V[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \x_V_reg[9] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(\x_V_reg[8]_i_1_n_6 ),
        .Q(x_V_reg[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h34)) 
    \yStreamOut_V_V_1_payload_A[0]_i_1 
       (.I0(tmp_1_fu_181_p2),
        .I1(tmp_s_fu_151_p2),
        .I2(y_V_reg[0]),
        .O(\yStreamOut_V_V_1_payload_A[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \yStreamOut_V_V_1_payload_A[10]_i_1 
       (.I0(tmp_3_fu_187_p2[10]),
        .I1(tmp_1_fu_181_p2),
        .I2(tmp_s_fu_151_p2),
        .I3(y_V_reg[10]),
        .O(\yStreamOut_V_V_1_payload_A[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \yStreamOut_V_V_1_payload_A[11]_i_1 
       (.I0(tmp_3_fu_187_p2[11]),
        .I1(tmp_1_fu_181_p2),
        .I2(tmp_s_fu_151_p2),
        .I3(y_V_reg[11]),
        .O(\yStreamOut_V_V_1_payload_A[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \yStreamOut_V_V_1_payload_A[12]_i_1 
       (.I0(tmp_3_fu_187_p2[12]),
        .I1(tmp_1_fu_181_p2),
        .I2(tmp_s_fu_151_p2),
        .I3(y_V_reg[12]),
        .O(\yStreamOut_V_V_1_payload_A[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \yStreamOut_V_V_1_payload_A[13]_i_1 
       (.I0(tmp_3_fu_187_p2[13]),
        .I1(tmp_1_fu_181_p2),
        .I2(tmp_s_fu_151_p2),
        .I3(y_V_reg[13]),
        .O(\yStreamOut_V_V_1_payload_A[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \yStreamOut_V_V_1_payload_A[14]_i_1 
       (.I0(tmp_3_fu_187_p2[14]),
        .I1(tmp_1_fu_181_p2),
        .I2(tmp_s_fu_151_p2),
        .I3(y_V_reg[14]),
        .O(\yStreamOut_V_V_1_payload_A[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h0D)) 
    \yStreamOut_V_V_1_payload_A[15]_i_1 
       (.I0(yStreamOut_V_V_TVALID),
        .I1(yStreamOut_V_V_1_ack_in),
        .I2(yStreamOut_V_V_1_sel_wr),
        .O(\yStreamOut_V_V_1_payload_A[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \yStreamOut_V_V_1_payload_A[15]_i_2 
       (.I0(tmp_3_fu_187_p2[15]),
        .I1(tmp_1_fu_181_p2),
        .I2(tmp_s_fu_151_p2),
        .I3(y_V_reg[15]),
        .O(\yStreamOut_V_V_1_payload_A[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \yStreamOut_V_V_1_payload_A[15]_i_4 
       (.I0(\yStreamOut_V_V_1_payload_A[15]_i_5_n_0 ),
        .I1(\yStreamOut_V_V_1_payload_A[15]_i_6_n_0 ),
        .I2(\yStreamOut_V_V_1_payload_A[15]_i_7_n_0 ),
        .I3(\yStreamOut_V_V_1_payload_A[15]_i_8_n_0 ),
        .O(tmp_1_fu_181_p2));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \yStreamOut_V_V_1_payload_A[15]_i_5 
       (.I0(y_V_reg[10]),
        .I1(y_V_reg[11]),
        .I2(y_V_reg[8]),
        .I3(y_V_reg[9]),
        .O(\yStreamOut_V_V_1_payload_A[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \yStreamOut_V_V_1_payload_A[15]_i_6 
       (.I0(y_V_reg[15]),
        .I1(y_V_reg[14]),
        .I2(y_V_reg[12]),
        .I3(y_V_reg[13]),
        .O(\yStreamOut_V_V_1_payload_A[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \yStreamOut_V_V_1_payload_A[15]_i_7 
       (.I0(y_V_reg[7]),
        .I1(y_V_reg[1]),
        .I2(y_V_reg[6]),
        .I3(y_V_reg[3]),
        .O(\yStreamOut_V_V_1_payload_A[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \yStreamOut_V_V_1_payload_A[15]_i_8 
       (.I0(y_V_reg[0]),
        .I1(y_V_reg[2]),
        .I2(y_V_reg[4]),
        .I3(y_V_reg[5]),
        .O(\yStreamOut_V_V_1_payload_A[15]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \yStreamOut_V_V_1_payload_A[1]_i_1 
       (.I0(tmp_3_fu_187_p2[1]),
        .I1(tmp_1_fu_181_p2),
        .I2(tmp_s_fu_151_p2),
        .I3(y_V_reg[1]),
        .O(\yStreamOut_V_V_1_payload_A[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \yStreamOut_V_V_1_payload_A[2]_i_1 
       (.I0(tmp_3_fu_187_p2[2]),
        .I1(tmp_1_fu_181_p2),
        .I2(tmp_s_fu_151_p2),
        .I3(y_V_reg[2]),
        .O(\yStreamOut_V_V_1_payload_A[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \yStreamOut_V_V_1_payload_A[3]_i_1 
       (.I0(tmp_3_fu_187_p2[3]),
        .I1(tmp_1_fu_181_p2),
        .I2(tmp_s_fu_151_p2),
        .I3(y_V_reg[3]),
        .O(\yStreamOut_V_V_1_payload_A[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \yStreamOut_V_V_1_payload_A[4]_i_1 
       (.I0(tmp_3_fu_187_p2[4]),
        .I1(tmp_1_fu_181_p2),
        .I2(tmp_s_fu_151_p2),
        .I3(y_V_reg[4]),
        .O(\yStreamOut_V_V_1_payload_A[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \yStreamOut_V_V_1_payload_A[5]_i_1 
       (.I0(tmp_3_fu_187_p2[5]),
        .I1(tmp_1_fu_181_p2),
        .I2(tmp_s_fu_151_p2),
        .I3(y_V_reg[5]),
        .O(\yStreamOut_V_V_1_payload_A[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \yStreamOut_V_V_1_payload_A[6]_i_1 
       (.I0(tmp_3_fu_187_p2[6]),
        .I1(tmp_1_fu_181_p2),
        .I2(tmp_s_fu_151_p2),
        .I3(y_V_reg[6]),
        .O(\yStreamOut_V_V_1_payload_A[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \yStreamOut_V_V_1_payload_A[7]_i_1 
       (.I0(tmp_3_fu_187_p2[7]),
        .I1(tmp_1_fu_181_p2),
        .I2(tmp_s_fu_151_p2),
        .I3(y_V_reg[7]),
        .O(\yStreamOut_V_V_1_payload_A[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \yStreamOut_V_V_1_payload_A[8]_i_1 
       (.I0(tmp_3_fu_187_p2[8]),
        .I1(tmp_1_fu_181_p2),
        .I2(tmp_s_fu_151_p2),
        .I3(y_V_reg[8]),
        .O(\yStreamOut_V_V_1_payload_A[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \yStreamOut_V_V_1_payload_A[9]_i_1 
       (.I0(tmp_3_fu_187_p2[9]),
        .I1(tmp_1_fu_181_p2),
        .I2(tmp_s_fu_151_p2),
        .I3(y_V_reg[9]),
        .O(\yStreamOut_V_V_1_payload_A[9]_i_1_n_0 ));
  FDRE \yStreamOut_V_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(\yStreamOut_V_V_1_payload_A[15]_i_1_n_0 ),
        .D(\yStreamOut_V_V_1_payload_A[0]_i_1_n_0 ),
        .Q(yStreamOut_V_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \yStreamOut_V_V_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(\yStreamOut_V_V_1_payload_A[15]_i_1_n_0 ),
        .D(\yStreamOut_V_V_1_payload_A[10]_i_1_n_0 ),
        .Q(yStreamOut_V_V_1_payload_A[10]),
        .R(1'b0));
  FDRE \yStreamOut_V_V_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(\yStreamOut_V_V_1_payload_A[15]_i_1_n_0 ),
        .D(\yStreamOut_V_V_1_payload_A[11]_i_1_n_0 ),
        .Q(yStreamOut_V_V_1_payload_A[11]),
        .R(1'b0));
  FDRE \yStreamOut_V_V_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(\yStreamOut_V_V_1_payload_A[15]_i_1_n_0 ),
        .D(\yStreamOut_V_V_1_payload_A[12]_i_1_n_0 ),
        .Q(yStreamOut_V_V_1_payload_A[12]),
        .R(1'b0));
  CARRY4 \yStreamOut_V_V_1_payload_A_reg[12]_i_2 
       (.CI(\yStreamOut_V_V_1_payload_A_reg[8]_i_2_n_0 ),
        .CO({\yStreamOut_V_V_1_payload_A_reg[12]_i_2_n_0 ,\yStreamOut_V_V_1_payload_A_reg[12]_i_2_n_1 ,\yStreamOut_V_V_1_payload_A_reg[12]_i_2_n_2 ,\yStreamOut_V_V_1_payload_A_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_3_fu_187_p2[12:9]),
        .S(y_V_reg[12:9]));
  FDRE \yStreamOut_V_V_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(\yStreamOut_V_V_1_payload_A[15]_i_1_n_0 ),
        .D(\yStreamOut_V_V_1_payload_A[13]_i_1_n_0 ),
        .Q(yStreamOut_V_V_1_payload_A[13]),
        .R(1'b0));
  FDRE \yStreamOut_V_V_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(\yStreamOut_V_V_1_payload_A[15]_i_1_n_0 ),
        .D(\yStreamOut_V_V_1_payload_A[14]_i_1_n_0 ),
        .Q(yStreamOut_V_V_1_payload_A[14]),
        .R(1'b0));
  FDRE \yStreamOut_V_V_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(\yStreamOut_V_V_1_payload_A[15]_i_1_n_0 ),
        .D(\yStreamOut_V_V_1_payload_A[15]_i_2_n_0 ),
        .Q(yStreamOut_V_V_1_payload_A[15]),
        .R(1'b0));
  CARRY4 \yStreamOut_V_V_1_payload_A_reg[15]_i_3 
       (.CI(\yStreamOut_V_V_1_payload_A_reg[12]_i_2_n_0 ),
        .CO({\NLW_yStreamOut_V_V_1_payload_A_reg[15]_i_3_CO_UNCONNECTED [3:2],\yStreamOut_V_V_1_payload_A_reg[15]_i_3_n_2 ,\yStreamOut_V_V_1_payload_A_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_yStreamOut_V_V_1_payload_A_reg[15]_i_3_O_UNCONNECTED [3],tmp_3_fu_187_p2[15:13]}),
        .S({1'b0,y_V_reg[15:13]}));
  FDRE \yStreamOut_V_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(\yStreamOut_V_V_1_payload_A[15]_i_1_n_0 ),
        .D(\yStreamOut_V_V_1_payload_A[1]_i_1_n_0 ),
        .Q(yStreamOut_V_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \yStreamOut_V_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(\yStreamOut_V_V_1_payload_A[15]_i_1_n_0 ),
        .D(\yStreamOut_V_V_1_payload_A[2]_i_1_n_0 ),
        .Q(yStreamOut_V_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \yStreamOut_V_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(\yStreamOut_V_V_1_payload_A[15]_i_1_n_0 ),
        .D(\yStreamOut_V_V_1_payload_A[3]_i_1_n_0 ),
        .Q(yStreamOut_V_V_1_payload_A[3]),
        .R(1'b0));
  FDRE \yStreamOut_V_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(\yStreamOut_V_V_1_payload_A[15]_i_1_n_0 ),
        .D(\yStreamOut_V_V_1_payload_A[4]_i_1_n_0 ),
        .Q(yStreamOut_V_V_1_payload_A[4]),
        .R(1'b0));
  CARRY4 \yStreamOut_V_V_1_payload_A_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\yStreamOut_V_V_1_payload_A_reg[4]_i_2_n_0 ,\yStreamOut_V_V_1_payload_A_reg[4]_i_2_n_1 ,\yStreamOut_V_V_1_payload_A_reg[4]_i_2_n_2 ,\yStreamOut_V_V_1_payload_A_reg[4]_i_2_n_3 }),
        .CYINIT(y_V_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_3_fu_187_p2[4:1]),
        .S(y_V_reg[4:1]));
  FDRE \yStreamOut_V_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(\yStreamOut_V_V_1_payload_A[15]_i_1_n_0 ),
        .D(\yStreamOut_V_V_1_payload_A[5]_i_1_n_0 ),
        .Q(yStreamOut_V_V_1_payload_A[5]),
        .R(1'b0));
  FDRE \yStreamOut_V_V_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(\yStreamOut_V_V_1_payload_A[15]_i_1_n_0 ),
        .D(\yStreamOut_V_V_1_payload_A[6]_i_1_n_0 ),
        .Q(yStreamOut_V_V_1_payload_A[6]),
        .R(1'b0));
  FDRE \yStreamOut_V_V_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(\yStreamOut_V_V_1_payload_A[15]_i_1_n_0 ),
        .D(\yStreamOut_V_V_1_payload_A[7]_i_1_n_0 ),
        .Q(yStreamOut_V_V_1_payload_A[7]),
        .R(1'b0));
  FDRE \yStreamOut_V_V_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(\yStreamOut_V_V_1_payload_A[15]_i_1_n_0 ),
        .D(\yStreamOut_V_V_1_payload_A[8]_i_1_n_0 ),
        .Q(yStreamOut_V_V_1_payload_A[8]),
        .R(1'b0));
  CARRY4 \yStreamOut_V_V_1_payload_A_reg[8]_i_2 
       (.CI(\yStreamOut_V_V_1_payload_A_reg[4]_i_2_n_0 ),
        .CO({\yStreamOut_V_V_1_payload_A_reg[8]_i_2_n_0 ,\yStreamOut_V_V_1_payload_A_reg[8]_i_2_n_1 ,\yStreamOut_V_V_1_payload_A_reg[8]_i_2_n_2 ,\yStreamOut_V_V_1_payload_A_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_3_fu_187_p2[8:5]),
        .S(y_V_reg[8:5]));
  FDRE \yStreamOut_V_V_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(\yStreamOut_V_V_1_payload_A[15]_i_1_n_0 ),
        .D(\yStreamOut_V_V_1_payload_A[9]_i_1_n_0 ),
        .Q(yStreamOut_V_V_1_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA2)) 
    \yStreamOut_V_V_1_payload_B[15]_i_1 
       (.I0(yStreamOut_V_V_1_sel_wr),
        .I1(yStreamOut_V_V_TVALID),
        .I2(yStreamOut_V_V_1_ack_in),
        .O(yStreamOut_V_V_1_load_B));
  FDRE \yStreamOut_V_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(yStreamOut_V_V_1_load_B),
        .D(\yStreamOut_V_V_1_payload_A[0]_i_1_n_0 ),
        .Q(yStreamOut_V_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \yStreamOut_V_V_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(yStreamOut_V_V_1_load_B),
        .D(\yStreamOut_V_V_1_payload_A[10]_i_1_n_0 ),
        .Q(yStreamOut_V_V_1_payload_B[10]),
        .R(1'b0));
  FDRE \yStreamOut_V_V_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(yStreamOut_V_V_1_load_B),
        .D(\yStreamOut_V_V_1_payload_A[11]_i_1_n_0 ),
        .Q(yStreamOut_V_V_1_payload_B[11]),
        .R(1'b0));
  FDRE \yStreamOut_V_V_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(yStreamOut_V_V_1_load_B),
        .D(\yStreamOut_V_V_1_payload_A[12]_i_1_n_0 ),
        .Q(yStreamOut_V_V_1_payload_B[12]),
        .R(1'b0));
  FDRE \yStreamOut_V_V_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(yStreamOut_V_V_1_load_B),
        .D(\yStreamOut_V_V_1_payload_A[13]_i_1_n_0 ),
        .Q(yStreamOut_V_V_1_payload_B[13]),
        .R(1'b0));
  FDRE \yStreamOut_V_V_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(yStreamOut_V_V_1_load_B),
        .D(\yStreamOut_V_V_1_payload_A[14]_i_1_n_0 ),
        .Q(yStreamOut_V_V_1_payload_B[14]),
        .R(1'b0));
  FDRE \yStreamOut_V_V_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(yStreamOut_V_V_1_load_B),
        .D(\yStreamOut_V_V_1_payload_A[15]_i_2_n_0 ),
        .Q(yStreamOut_V_V_1_payload_B[15]),
        .R(1'b0));
  FDRE \yStreamOut_V_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(yStreamOut_V_V_1_load_B),
        .D(\yStreamOut_V_V_1_payload_A[1]_i_1_n_0 ),
        .Q(yStreamOut_V_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \yStreamOut_V_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(yStreamOut_V_V_1_load_B),
        .D(\yStreamOut_V_V_1_payload_A[2]_i_1_n_0 ),
        .Q(yStreamOut_V_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \yStreamOut_V_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(yStreamOut_V_V_1_load_B),
        .D(\yStreamOut_V_V_1_payload_A[3]_i_1_n_0 ),
        .Q(yStreamOut_V_V_1_payload_B[3]),
        .R(1'b0));
  FDRE \yStreamOut_V_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(yStreamOut_V_V_1_load_B),
        .D(\yStreamOut_V_V_1_payload_A[4]_i_1_n_0 ),
        .Q(yStreamOut_V_V_1_payload_B[4]),
        .R(1'b0));
  FDRE \yStreamOut_V_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(yStreamOut_V_V_1_load_B),
        .D(\yStreamOut_V_V_1_payload_A[5]_i_1_n_0 ),
        .Q(yStreamOut_V_V_1_payload_B[5]),
        .R(1'b0));
  FDRE \yStreamOut_V_V_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(yStreamOut_V_V_1_load_B),
        .D(\yStreamOut_V_V_1_payload_A[6]_i_1_n_0 ),
        .Q(yStreamOut_V_V_1_payload_B[6]),
        .R(1'b0));
  FDRE \yStreamOut_V_V_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(yStreamOut_V_V_1_load_B),
        .D(\yStreamOut_V_V_1_payload_A[7]_i_1_n_0 ),
        .Q(yStreamOut_V_V_1_payload_B[7]),
        .R(1'b0));
  FDRE \yStreamOut_V_V_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(yStreamOut_V_V_1_load_B),
        .D(\yStreamOut_V_V_1_payload_A[8]_i_1_n_0 ),
        .Q(yStreamOut_V_V_1_payload_B[8]),
        .R(1'b0));
  FDRE \yStreamOut_V_V_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(yStreamOut_V_V_1_load_B),
        .D(\yStreamOut_V_V_1_payload_A[9]_i_1_n_0 ),
        .Q(yStreamOut_V_V_1_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    yStreamOut_V_V_1_sel_rd_i_1
       (.I0(yStreamOut_V_V_TVALID),
        .I1(yStreamOut_V_V_TREADY),
        .I2(yStreamOut_V_V_1_sel),
        .O(yStreamOut_V_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    yStreamOut_V_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(yStreamOut_V_V_1_sel_rd_i_1_n_0),
        .Q(yStreamOut_V_V_1_sel),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    yStreamOut_V_V_1_sel_wr_i_1
       (.I0(yStreamOut_V_V_1_ack_in),
        .I1(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I2(yStreamOut_V_V_1_sel_wr),
        .O(yStreamOut_V_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    yStreamOut_V_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(yStreamOut_V_V_1_sel_wr_i_1_n_0),
        .Q(yStreamOut_V_V_1_sel_wr),
        .R(ap_rst));
  LUT5 #(
    .INIT(32'hA8A80888)) 
    \yStreamOut_V_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(yStreamOut_V_V_TVALID),
        .I2(yStreamOut_V_V_1_ack_in),
        .I3(yStreamOut_V_V_TREADY),
        .I4(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .O(\yStreamOut_V_V_1_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFF5D)) 
    \yStreamOut_V_V_1_state[1]_i_1 
       (.I0(yStreamOut_V_V_TVALID),
        .I1(yStreamOut_V_V_1_ack_in),
        .I2(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I3(yStreamOut_V_V_TREADY),
        .O(\yStreamOut_V_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \yStreamOut_V_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\yStreamOut_V_V_1_state[0]_i_1_n_0 ),
        .Q(yStreamOut_V_V_TVALID),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \yStreamOut_V_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\yStreamOut_V_V_1_state[1]_i_1_n_0 ),
        .Q(yStreamOut_V_V_1_ack_in),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut_V_V_TDATA[0]_INST_0 
       (.I0(yStreamOut_V_V_1_payload_B[0]),
        .I1(yStreamOut_V_V_1_payload_A[0]),
        .I2(yStreamOut_V_V_1_sel),
        .O(yStreamOut_V_V_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut_V_V_TDATA[10]_INST_0 
       (.I0(yStreamOut_V_V_1_payload_B[10]),
        .I1(yStreamOut_V_V_1_payload_A[10]),
        .I2(yStreamOut_V_V_1_sel),
        .O(yStreamOut_V_V_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut_V_V_TDATA[11]_INST_0 
       (.I0(yStreamOut_V_V_1_payload_B[11]),
        .I1(yStreamOut_V_V_1_payload_A[11]),
        .I2(yStreamOut_V_V_1_sel),
        .O(yStreamOut_V_V_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut_V_V_TDATA[12]_INST_0 
       (.I0(yStreamOut_V_V_1_payload_B[12]),
        .I1(yStreamOut_V_V_1_payload_A[12]),
        .I2(yStreamOut_V_V_1_sel),
        .O(yStreamOut_V_V_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut_V_V_TDATA[13]_INST_0 
       (.I0(yStreamOut_V_V_1_payload_B[13]),
        .I1(yStreamOut_V_V_1_payload_A[13]),
        .I2(yStreamOut_V_V_1_sel),
        .O(yStreamOut_V_V_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut_V_V_TDATA[14]_INST_0 
       (.I0(yStreamOut_V_V_1_payload_B[14]),
        .I1(yStreamOut_V_V_1_payload_A[14]),
        .I2(yStreamOut_V_V_1_sel),
        .O(yStreamOut_V_V_TDATA[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut_V_V_TDATA[15]_INST_0 
       (.I0(yStreamOut_V_V_1_payload_B[15]),
        .I1(yStreamOut_V_V_1_payload_A[15]),
        .I2(yStreamOut_V_V_1_sel),
        .O(yStreamOut_V_V_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut_V_V_TDATA[1]_INST_0 
       (.I0(yStreamOut_V_V_1_payload_B[1]),
        .I1(yStreamOut_V_V_1_payload_A[1]),
        .I2(yStreamOut_V_V_1_sel),
        .O(yStreamOut_V_V_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut_V_V_TDATA[2]_INST_0 
       (.I0(yStreamOut_V_V_1_payload_B[2]),
        .I1(yStreamOut_V_V_1_payload_A[2]),
        .I2(yStreamOut_V_V_1_sel),
        .O(yStreamOut_V_V_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut_V_V_TDATA[3]_INST_0 
       (.I0(yStreamOut_V_V_1_payload_B[3]),
        .I1(yStreamOut_V_V_1_payload_A[3]),
        .I2(yStreamOut_V_V_1_sel),
        .O(yStreamOut_V_V_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut_V_V_TDATA[4]_INST_0 
       (.I0(yStreamOut_V_V_1_payload_B[4]),
        .I1(yStreamOut_V_V_1_payload_A[4]),
        .I2(yStreamOut_V_V_1_sel),
        .O(yStreamOut_V_V_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut_V_V_TDATA[5]_INST_0 
       (.I0(yStreamOut_V_V_1_payload_B[5]),
        .I1(yStreamOut_V_V_1_payload_A[5]),
        .I2(yStreamOut_V_V_1_sel),
        .O(yStreamOut_V_V_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut_V_V_TDATA[6]_INST_0 
       (.I0(yStreamOut_V_V_1_payload_B[6]),
        .I1(yStreamOut_V_V_1_payload_A[6]),
        .I2(yStreamOut_V_V_1_sel),
        .O(yStreamOut_V_V_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut_V_V_TDATA[7]_INST_0 
       (.I0(yStreamOut_V_V_1_payload_B[7]),
        .I1(yStreamOut_V_V_1_payload_A[7]),
        .I2(yStreamOut_V_V_1_sel),
        .O(yStreamOut_V_V_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut_V_V_TDATA[8]_INST_0 
       (.I0(yStreamOut_V_V_1_payload_B[8]),
        .I1(yStreamOut_V_V_1_payload_A[8]),
        .I2(yStreamOut_V_V_1_sel),
        .O(yStreamOut_V_V_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \yStreamOut_V_V_TDATA[9]_INST_0 
       (.I0(yStreamOut_V_V_1_payload_B[9]),
        .I1(yStreamOut_V_V_1_payload_A[9]),
        .I2(yStreamOut_V_V_1_sel),
        .O(yStreamOut_V_V_TDATA[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \y_V[0]_i_1 
       (.I0(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I1(tmp_s_fu_151_p2),
        .O(y_V0));
  LUT2 #(
    .INIT(4'h2)) 
    \y_V[0]_i_3 
       (.I0(y_V_reg[0]),
        .I1(tmp_1_fu_181_p2),
        .O(\y_V[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \y_V[0]_i_4 
       (.I0(y_V_reg[3]),
        .I1(tmp_1_fu_181_p2),
        .O(\y_V[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \y_V[0]_i_5 
       (.I0(y_V_reg[2]),
        .I1(tmp_1_fu_181_p2),
        .O(\y_V[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \y_V[0]_i_6 
       (.I0(y_V_reg[1]),
        .I1(tmp_1_fu_181_p2),
        .O(\y_V[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \y_V[0]_i_7 
       (.I0(y_V_reg[0]),
        .I1(tmp_1_fu_181_p2),
        .O(\y_V[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \y_V[12]_i_2 
       (.I0(y_V_reg[15]),
        .I1(tmp_1_fu_181_p2),
        .O(\y_V[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \y_V[12]_i_3 
       (.I0(y_V_reg[14]),
        .I1(tmp_1_fu_181_p2),
        .O(\y_V[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \y_V[12]_i_4 
       (.I0(y_V_reg[13]),
        .I1(tmp_1_fu_181_p2),
        .O(\y_V[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \y_V[12]_i_5 
       (.I0(y_V_reg[12]),
        .I1(tmp_1_fu_181_p2),
        .O(\y_V[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \y_V[4]_i_2 
       (.I0(y_V_reg[7]),
        .I1(tmp_1_fu_181_p2),
        .O(\y_V[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \y_V[4]_i_3 
       (.I0(y_V_reg[6]),
        .I1(tmp_1_fu_181_p2),
        .O(\y_V[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \y_V[4]_i_4 
       (.I0(y_V_reg[5]),
        .I1(tmp_1_fu_181_p2),
        .O(\y_V[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \y_V[4]_i_5 
       (.I0(y_V_reg[4]),
        .I1(tmp_1_fu_181_p2),
        .O(\y_V[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \y_V[8]_i_2 
       (.I0(y_V_reg[11]),
        .I1(tmp_1_fu_181_p2),
        .O(\y_V[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \y_V[8]_i_3 
       (.I0(y_V_reg[10]),
        .I1(tmp_1_fu_181_p2),
        .O(\y_V[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \y_V[8]_i_4 
       (.I0(y_V_reg[9]),
        .I1(tmp_1_fu_181_p2),
        .O(\y_V[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \y_V[8]_i_5 
       (.I0(y_V_reg[8]),
        .I1(tmp_1_fu_181_p2),
        .O(\y_V[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_V_reg[0] 
       (.C(ap_clk),
        .CE(y_V0),
        .D(\y_V_reg[0]_i_2_n_7 ),
        .Q(y_V_reg[0]),
        .R(1'b0));
  CARRY4 \y_V_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\y_V_reg[0]_i_2_n_0 ,\y_V_reg[0]_i_2_n_1 ,\y_V_reg[0]_i_2_n_2 ,\y_V_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\y_V[0]_i_3_n_0 }),
        .O({\y_V_reg[0]_i_2_n_4 ,\y_V_reg[0]_i_2_n_5 ,\y_V_reg[0]_i_2_n_6 ,\y_V_reg[0]_i_2_n_7 }),
        .S({\y_V[0]_i_4_n_0 ,\y_V[0]_i_5_n_0 ,\y_V[0]_i_6_n_0 ,\y_V[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \y_V_reg[10] 
       (.C(ap_clk),
        .CE(y_V0),
        .D(\y_V_reg[8]_i_1_n_5 ),
        .Q(y_V_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_V_reg[11] 
       (.C(ap_clk),
        .CE(y_V0),
        .D(\y_V_reg[8]_i_1_n_4 ),
        .Q(y_V_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_V_reg[12] 
       (.C(ap_clk),
        .CE(y_V0),
        .D(\y_V_reg[12]_i_1_n_7 ),
        .Q(y_V_reg[12]),
        .R(1'b0));
  CARRY4 \y_V_reg[12]_i_1 
       (.CI(\y_V_reg[8]_i_1_n_0 ),
        .CO({\NLW_y_V_reg[12]_i_1_CO_UNCONNECTED [3],\y_V_reg[12]_i_1_n_1 ,\y_V_reg[12]_i_1_n_2 ,\y_V_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\y_V_reg[12]_i_1_n_4 ,\y_V_reg[12]_i_1_n_5 ,\y_V_reg[12]_i_1_n_6 ,\y_V_reg[12]_i_1_n_7 }),
        .S({\y_V[12]_i_2_n_0 ,\y_V[12]_i_3_n_0 ,\y_V[12]_i_4_n_0 ,\y_V[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \y_V_reg[13] 
       (.C(ap_clk),
        .CE(y_V0),
        .D(\y_V_reg[12]_i_1_n_6 ),
        .Q(y_V_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_V_reg[14] 
       (.C(ap_clk),
        .CE(y_V0),
        .D(\y_V_reg[12]_i_1_n_5 ),
        .Q(y_V_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_V_reg[15] 
       (.C(ap_clk),
        .CE(y_V0),
        .D(\y_V_reg[12]_i_1_n_4 ),
        .Q(y_V_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_V_reg[1] 
       (.C(ap_clk),
        .CE(y_V0),
        .D(\y_V_reg[0]_i_2_n_6 ),
        .Q(y_V_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_V_reg[2] 
       (.C(ap_clk),
        .CE(y_V0),
        .D(\y_V_reg[0]_i_2_n_5 ),
        .Q(y_V_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_V_reg[3] 
       (.C(ap_clk),
        .CE(y_V0),
        .D(\y_V_reg[0]_i_2_n_4 ),
        .Q(y_V_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_V_reg[4] 
       (.C(ap_clk),
        .CE(y_V0),
        .D(\y_V_reg[4]_i_1_n_7 ),
        .Q(y_V_reg[4]),
        .R(1'b0));
  CARRY4 \y_V_reg[4]_i_1 
       (.CI(\y_V_reg[0]_i_2_n_0 ),
        .CO({\y_V_reg[4]_i_1_n_0 ,\y_V_reg[4]_i_1_n_1 ,\y_V_reg[4]_i_1_n_2 ,\y_V_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\y_V_reg[4]_i_1_n_4 ,\y_V_reg[4]_i_1_n_5 ,\y_V_reg[4]_i_1_n_6 ,\y_V_reg[4]_i_1_n_7 }),
        .S({\y_V[4]_i_2_n_0 ,\y_V[4]_i_3_n_0 ,\y_V[4]_i_4_n_0 ,\y_V[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \y_V_reg[5] 
       (.C(ap_clk),
        .CE(y_V0),
        .D(\y_V_reg[4]_i_1_n_6 ),
        .Q(y_V_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_V_reg[6] 
       (.C(ap_clk),
        .CE(y_V0),
        .D(\y_V_reg[4]_i_1_n_5 ),
        .Q(y_V_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_V_reg[7] 
       (.C(ap_clk),
        .CE(y_V0),
        .D(\y_V_reg[4]_i_1_n_4 ),
        .Q(y_V_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_V_reg[8] 
       (.C(ap_clk),
        .CE(y_V0),
        .D(\y_V_reg[8]_i_1_n_7 ),
        .Q(y_V_reg[8]),
        .R(1'b0));
  CARRY4 \y_V_reg[8]_i_1 
       (.CI(\y_V_reg[4]_i_1_n_0 ),
        .CO({\y_V_reg[8]_i_1_n_0 ,\y_V_reg[8]_i_1_n_1 ,\y_V_reg[8]_i_1_n_2 ,\y_V_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\y_V_reg[8]_i_1_n_4 ,\y_V_reg[8]_i_1_n_5 ,\y_V_reg[8]_i_1_n_6 ,\y_V_reg[8]_i_1_n_7 }),
        .S({\y_V[8]_i_2_n_0 ,\y_V[8]_i_3_n_0 ,\y_V[8]_i_4_n_0 ,\y_V[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \y_V_reg[9] 
       (.C(ap_clk),
        .CE(y_V0),
        .D(\y_V_reg[8]_i_1_n_6 ),
        .Q(y_V_reg[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "randomGenerator" *) 
module brd_eventSimulator_0_0_randomGenerator
   (ap_reg_ioackin_deltaTsReg_dummy_ack0_out,
    O,
    \ts_V_reg[7] ,
    \ts_V_reg[11] ,
    \ts_V_reg[15] ,
    \ts_V_reg[19] ,
    \ts_V_reg[23] ,
    \ts_V_reg[27] ,
    \ts_V_reg[31] ,
    \ts_V_reg[35] ,
    \ts_V_reg[39] ,
    \ts_V_reg[43] ,
    \ts_V_reg[47] ,
    \ts_V_reg[51] ,
    \ts_V_reg[55] ,
    \ts_V_reg[59] ,
    \ts_V_reg[63] ,
    D,
    ap_rst,
    deltaTsReg,
    ts_V_reg,
    ap_rst_n,
    Q,
    ap_start,
    tsStreamOut_V_V_1_ack_in,
    yStreamOut_V_V_1_ack_in,
    xStreamOut_V_V_1_ack_in,
    \polStreamOut_V_V_1_state_reg[1] ,
    ap_clk);
  output ap_reg_ioackin_deltaTsReg_dummy_ack0_out;
  output [3:0]O;
  output [3:0]\ts_V_reg[7] ;
  output [3:0]\ts_V_reg[11] ;
  output [3:0]\ts_V_reg[15] ;
  output [3:0]\ts_V_reg[19] ;
  output [3:0]\ts_V_reg[23] ;
  output [3:0]\ts_V_reg[27] ;
  output [3:0]\ts_V_reg[31] ;
  output [3:0]\ts_V_reg[35] ;
  output [3:0]\ts_V_reg[39] ;
  output [3:0]\ts_V_reg[43] ;
  output [3:0]\ts_V_reg[47] ;
  output [3:0]\ts_V_reg[51] ;
  output [3:0]\ts_V_reg[55] ;
  output [3:0]\ts_V_reg[59] ;
  output [3:0]\ts_V_reg[63] ;
  output [63:0]D;
  output ap_rst;
  output [7:0]deltaTsReg;
  input [63:0]ts_V_reg;
  input ap_rst_n;
  input [0:0]Q;
  input ap_start;
  input tsStreamOut_V_V_1_ack_in;
  input yStreamOut_V_V_1_ack_in;
  input xStreamOut_V_V_1_ack_in;
  input \polStreamOut_V_V_1_state_reg[1] ;
  input ap_clk;

  wire [63:0]D;
  wire [3:0]O;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_reg_ioackin_deltaTsReg_dummy_ack0_out;
  wire [15:0]ap_return_preg;
  wire ap_rst;
  wire ap_rst_n;
  wire ap_start;
  wire [7:0]deltaTsReg;
  wire \lfsr_reg_n_0_[0] ;
  wire \polStreamOut_V_V_1_state_reg[1] ;
  wire [14:5]randomRet_write_assi_fu_78_p3;
  wire [15:0]randomRet_write_assi_fu_78_p3_0;
  wire tsStreamOut_V_V_1_ack_in;
  wire \tsStreamOut_V_V_1_payload_A[11]_i_2_n_0 ;
  wire \tsStreamOut_V_V_1_payload_A[11]_i_3_n_0 ;
  wire \tsStreamOut_V_V_1_payload_A[11]_i_4_n_0 ;
  wire \tsStreamOut_V_V_1_payload_A[11]_i_5_n_0 ;
  wire \tsStreamOut_V_V_1_payload_A[15]_i_2_n_0 ;
  wire \tsStreamOut_V_V_1_payload_A[15]_i_3_n_0 ;
  wire \tsStreamOut_V_V_1_payload_A[15]_i_4_n_0 ;
  wire \tsStreamOut_V_V_1_payload_A[15]_i_5_n_0 ;
  wire \tsStreamOut_V_V_1_payload_A[3]_i_2_n_0 ;
  wire \tsStreamOut_V_V_1_payload_A[3]_i_3_n_0 ;
  wire \tsStreamOut_V_V_1_payload_A[3]_i_4_n_0 ;
  wire \tsStreamOut_V_V_1_payload_A[3]_i_5_n_0 ;
  wire \tsStreamOut_V_V_1_payload_A[7]_i_2_n_0 ;
  wire \tsStreamOut_V_V_1_payload_A[7]_i_3_n_0 ;
  wire \tsStreamOut_V_V_1_payload_A[7]_i_4_n_0 ;
  wire \tsStreamOut_V_V_1_payload_A[7]_i_5_n_0 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[11]_i_1_n_0 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[11]_i_1_n_1 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[11]_i_1_n_2 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[11]_i_1_n_3 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[15]_i_1_n_0 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[15]_i_1_n_1 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[15]_i_1_n_2 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[15]_i_1_n_3 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[19]_i_1_n_0 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[19]_i_1_n_1 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[19]_i_1_n_2 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[19]_i_1_n_3 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[23]_i_1_n_0 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[23]_i_1_n_1 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[23]_i_1_n_2 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[23]_i_1_n_3 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[27]_i_1_n_0 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[27]_i_1_n_1 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[27]_i_1_n_2 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[27]_i_1_n_3 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[31]_i_1_n_0 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[31]_i_1_n_1 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[31]_i_1_n_2 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[31]_i_1_n_3 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[35]_i_1_n_0 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[35]_i_1_n_1 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[35]_i_1_n_2 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[35]_i_1_n_3 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[39]_i_1_n_0 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[39]_i_1_n_1 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[39]_i_1_n_2 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[39]_i_1_n_3 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[3]_i_1_n_0 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[3]_i_1_n_1 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[3]_i_1_n_2 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[3]_i_1_n_3 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[43]_i_1_n_0 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[43]_i_1_n_1 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[43]_i_1_n_2 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[43]_i_1_n_3 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[47]_i_1_n_0 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[47]_i_1_n_1 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[47]_i_1_n_2 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[47]_i_1_n_3 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[51]_i_1_n_0 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[51]_i_1_n_1 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[51]_i_1_n_2 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[51]_i_1_n_3 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[55]_i_1_n_0 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[55]_i_1_n_1 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[55]_i_1_n_2 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[55]_i_1_n_3 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[59]_i_1_n_0 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[59]_i_1_n_1 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[59]_i_1_n_2 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[59]_i_1_n_3 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[63]_i_2_n_1 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[63]_i_2_n_2 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[63]_i_2_n_3 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[7]_i_1_n_0 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[7]_i_1_n_1 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[7]_i_1_n_2 ;
  wire \tsStreamOut_V_V_1_payload_A_reg[7]_i_1_n_3 ;
  wire \ts_V[0]_i_2_n_0 ;
  wire \ts_V[0]_i_3_n_0 ;
  wire \ts_V[0]_i_4_n_0 ;
  wire \ts_V[0]_i_5_n_0 ;
  wire \ts_V[12]_i_2_n_0 ;
  wire \ts_V[12]_i_3_n_0 ;
  wire \ts_V[12]_i_4_n_0 ;
  wire \ts_V[12]_i_5_n_0 ;
  wire \ts_V[4]_i_2_n_0 ;
  wire \ts_V[4]_i_3_n_0 ;
  wire \ts_V[4]_i_4_n_0 ;
  wire \ts_V[4]_i_5_n_0 ;
  wire \ts_V[8]_i_2_n_0 ;
  wire \ts_V[8]_i_3_n_0 ;
  wire \ts_V[8]_i_4_n_0 ;
  wire \ts_V[8]_i_5_n_0 ;
  wire [63:0]ts_V_reg;
  wire \ts_V_reg[0]_i_1_n_0 ;
  wire \ts_V_reg[0]_i_1_n_1 ;
  wire \ts_V_reg[0]_i_1_n_2 ;
  wire \ts_V_reg[0]_i_1_n_3 ;
  wire [3:0]\ts_V_reg[11] ;
  wire \ts_V_reg[12]_i_1_n_0 ;
  wire \ts_V_reg[12]_i_1_n_1 ;
  wire \ts_V_reg[12]_i_1_n_2 ;
  wire \ts_V_reg[12]_i_1_n_3 ;
  wire [3:0]\ts_V_reg[15] ;
  wire \ts_V_reg[16]_i_1_n_0 ;
  wire \ts_V_reg[16]_i_1_n_1 ;
  wire \ts_V_reg[16]_i_1_n_2 ;
  wire \ts_V_reg[16]_i_1_n_3 ;
  wire [3:0]\ts_V_reg[19] ;
  wire \ts_V_reg[20]_i_1_n_0 ;
  wire \ts_V_reg[20]_i_1_n_1 ;
  wire \ts_V_reg[20]_i_1_n_2 ;
  wire \ts_V_reg[20]_i_1_n_3 ;
  wire [3:0]\ts_V_reg[23] ;
  wire \ts_V_reg[24]_i_1_n_0 ;
  wire \ts_V_reg[24]_i_1_n_1 ;
  wire \ts_V_reg[24]_i_1_n_2 ;
  wire \ts_V_reg[24]_i_1_n_3 ;
  wire [3:0]\ts_V_reg[27] ;
  wire \ts_V_reg[28]_i_1_n_0 ;
  wire \ts_V_reg[28]_i_1_n_1 ;
  wire \ts_V_reg[28]_i_1_n_2 ;
  wire \ts_V_reg[28]_i_1_n_3 ;
  wire [3:0]\ts_V_reg[31] ;
  wire \ts_V_reg[32]_i_1_n_0 ;
  wire \ts_V_reg[32]_i_1_n_1 ;
  wire \ts_V_reg[32]_i_1_n_2 ;
  wire \ts_V_reg[32]_i_1_n_3 ;
  wire [3:0]\ts_V_reg[35] ;
  wire \ts_V_reg[36]_i_1_n_0 ;
  wire \ts_V_reg[36]_i_1_n_1 ;
  wire \ts_V_reg[36]_i_1_n_2 ;
  wire \ts_V_reg[36]_i_1_n_3 ;
  wire [3:0]\ts_V_reg[39] ;
  wire \ts_V_reg[40]_i_1_n_0 ;
  wire \ts_V_reg[40]_i_1_n_1 ;
  wire \ts_V_reg[40]_i_1_n_2 ;
  wire \ts_V_reg[40]_i_1_n_3 ;
  wire [3:0]\ts_V_reg[43] ;
  wire \ts_V_reg[44]_i_1_n_0 ;
  wire \ts_V_reg[44]_i_1_n_1 ;
  wire \ts_V_reg[44]_i_1_n_2 ;
  wire \ts_V_reg[44]_i_1_n_3 ;
  wire [3:0]\ts_V_reg[47] ;
  wire \ts_V_reg[48]_i_1_n_0 ;
  wire \ts_V_reg[48]_i_1_n_1 ;
  wire \ts_V_reg[48]_i_1_n_2 ;
  wire \ts_V_reg[48]_i_1_n_3 ;
  wire \ts_V_reg[4]_i_1_n_0 ;
  wire \ts_V_reg[4]_i_1_n_1 ;
  wire \ts_V_reg[4]_i_1_n_2 ;
  wire \ts_V_reg[4]_i_1_n_3 ;
  wire [3:0]\ts_V_reg[51] ;
  wire \ts_V_reg[52]_i_1_n_0 ;
  wire \ts_V_reg[52]_i_1_n_1 ;
  wire \ts_V_reg[52]_i_1_n_2 ;
  wire \ts_V_reg[52]_i_1_n_3 ;
  wire [3:0]\ts_V_reg[55] ;
  wire \ts_V_reg[56]_i_1_n_0 ;
  wire \ts_V_reg[56]_i_1_n_1 ;
  wire \ts_V_reg[56]_i_1_n_2 ;
  wire \ts_V_reg[56]_i_1_n_3 ;
  wire [3:0]\ts_V_reg[59] ;
  wire \ts_V_reg[60]_i_1_n_1 ;
  wire \ts_V_reg[60]_i_1_n_2 ;
  wire \ts_V_reg[60]_i_1_n_3 ;
  wire [3:0]\ts_V_reg[63] ;
  wire [3:0]\ts_V_reg[7] ;
  wire \ts_V_reg[8]_i_1_n_0 ;
  wire \ts_V_reg[8]_i_1_n_1 ;
  wire \ts_V_reg[8]_i_1_n_2 ;
  wire \ts_V_reg[8]_i_1_n_3 ;
  wire xStreamOut_V_V_1_ack_in;
  wire yStreamOut_V_V_1_ack_in;
  wire [3:3]\NLW_tsStreamOut_V_V_1_payload_A_reg[63]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_ts_V_reg[60]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \ap_return_preg[15]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[0] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(randomRet_write_assi_fu_78_p3_0[0]),
        .Q(ap_return_preg[0]),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[10] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(randomRet_write_assi_fu_78_p3[10]),
        .Q(ap_return_preg[10]),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[11] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(randomRet_write_assi_fu_78_p3[11]),
        .Q(ap_return_preg[11]),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[12] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(randomRet_write_assi_fu_78_p3[12]),
        .Q(ap_return_preg[12]),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[13] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(randomRet_write_assi_fu_78_p3[13]),
        .Q(ap_return_preg[13]),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[14] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(randomRet_write_assi_fu_78_p3[14]),
        .Q(ap_return_preg[14]),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[15] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(randomRet_write_assi_fu_78_p3_0[15]),
        .Q(ap_return_preg[15]),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[1] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(randomRet_write_assi_fu_78_p3_0[1]),
        .Q(ap_return_preg[1]),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[2] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(randomRet_write_assi_fu_78_p3_0[2]),
        .Q(ap_return_preg[2]),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[3] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(randomRet_write_assi_fu_78_p3_0[3]),
        .Q(ap_return_preg[3]),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[4] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(randomRet_write_assi_fu_78_p3_0[4]),
        .Q(ap_return_preg[4]),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[5] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(randomRet_write_assi_fu_78_p3[5]),
        .Q(ap_return_preg[5]),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[6] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(randomRet_write_assi_fu_78_p3[6]),
        .Q(ap_return_preg[6]),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[7] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(randomRet_write_assi_fu_78_p3[7]),
        .Q(ap_return_preg[7]),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[8] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(randomRet_write_assi_fu_78_p3[8]),
        .Q(ap_return_preg[8]),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[9] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(randomRet_write_assi_fu_78_p3[9]),
        .Q(ap_return_preg[9]),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \deltaTsReg[0]_INST_0 
       (.I0(randomRet_write_assi_fu_78_p3_0[0]),
        .I1(ap_return_preg[0]),
        .I2(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .O(deltaTsReg[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \deltaTsReg[1]_INST_0 
       (.I0(randomRet_write_assi_fu_78_p3_0[1]),
        .I1(ap_return_preg[1]),
        .I2(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .O(deltaTsReg[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \deltaTsReg[2]_INST_0 
       (.I0(randomRet_write_assi_fu_78_p3_0[2]),
        .I1(ap_return_preg[2]),
        .I2(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .O(deltaTsReg[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \deltaTsReg[3]_INST_0 
       (.I0(randomRet_write_assi_fu_78_p3_0[3]),
        .I1(ap_return_preg[3]),
        .I2(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .O(deltaTsReg[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \deltaTsReg[4]_INST_0 
       (.I0(randomRet_write_assi_fu_78_p3_0[4]),
        .I1(ap_return_preg[4]),
        .I2(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .O(deltaTsReg[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \deltaTsReg[5]_INST_0 
       (.I0(randomRet_write_assi_fu_78_p3[5]),
        .I1(ap_return_preg[5]),
        .I2(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .O(deltaTsReg[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \deltaTsReg[6]_INST_0 
       (.I0(randomRet_write_assi_fu_78_p3[6]),
        .I1(ap_return_preg[6]),
        .I2(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .O(deltaTsReg[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \deltaTsReg[7]_INST_0 
       (.I0(randomRet_write_assi_fu_78_p3[7]),
        .I1(ap_return_preg[7]),
        .I2(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .O(deltaTsReg[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \deltaTsReg[7]_INST_0_i_1 
       (.I0(Q),
        .I1(ap_start),
        .I2(tsStreamOut_V_V_1_ack_in),
        .I3(yStreamOut_V_V_1_ack_in),
        .I4(xStreamOut_V_V_1_ack_in),
        .I5(\polStreamOut_V_V_1_state_reg[1] ),
        .O(ap_reg_ioackin_deltaTsReg_dummy_ack0_out));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[15]_i_1 
       (.I0(randomRet_write_assi_fu_78_p3_0[2]),
        .I1(randomRet_write_assi_fu_78_p3_0[1]),
        .I2(randomRet_write_assi_fu_78_p3_0[4]),
        .I3(\lfsr_reg_n_0_[0] ),
        .O(randomRet_write_assi_fu_78_p3_0[15]));
  FDRE #(
    .INIT(1'b1)) 
    \lfsr_reg[0] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(randomRet_write_assi_fu_78_p3_0[0]),
        .Q(\lfsr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \lfsr_reg[10] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(randomRet_write_assi_fu_78_p3[10]),
        .Q(randomRet_write_assi_fu_78_p3[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \lfsr_reg[11] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(randomRet_write_assi_fu_78_p3[11]),
        .Q(randomRet_write_assi_fu_78_p3[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[12] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(randomRet_write_assi_fu_78_p3[12]),
        .Q(randomRet_write_assi_fu_78_p3[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \lfsr_reg[13] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(randomRet_write_assi_fu_78_p3[13]),
        .Q(randomRet_write_assi_fu_78_p3[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[14] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(randomRet_write_assi_fu_78_p3[14]),
        .Q(randomRet_write_assi_fu_78_p3[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \lfsr_reg[15] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(randomRet_write_assi_fu_78_p3_0[15]),
        .Q(randomRet_write_assi_fu_78_p3[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[1] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(randomRet_write_assi_fu_78_p3_0[1]),
        .Q(randomRet_write_assi_fu_78_p3_0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[2] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(randomRet_write_assi_fu_78_p3_0[2]),
        .Q(randomRet_write_assi_fu_78_p3_0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[3] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(randomRet_write_assi_fu_78_p3_0[3]),
        .Q(randomRet_write_assi_fu_78_p3_0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[4] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(randomRet_write_assi_fu_78_p3_0[4]),
        .Q(randomRet_write_assi_fu_78_p3_0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \lfsr_reg[5] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(randomRet_write_assi_fu_78_p3[5]),
        .Q(randomRet_write_assi_fu_78_p3_0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \lfsr_reg[6] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(randomRet_write_assi_fu_78_p3[6]),
        .Q(randomRet_write_assi_fu_78_p3[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \lfsr_reg[7] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(randomRet_write_assi_fu_78_p3[7]),
        .Q(randomRet_write_assi_fu_78_p3[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[8] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(randomRet_write_assi_fu_78_p3[8]),
        .Q(randomRet_write_assi_fu_78_p3[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[9] 
       (.C(ap_clk),
        .CE(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .D(randomRet_write_assi_fu_78_p3[9]),
        .Q(randomRet_write_assi_fu_78_p3[8]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h569A)) 
    \tsStreamOut_V_V_1_payload_A[11]_i_2 
       (.I0(ts_V_reg[11]),
        .I1(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I2(ap_return_preg[11]),
        .I3(randomRet_write_assi_fu_78_p3[11]),
        .O(\tsStreamOut_V_V_1_payload_A[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \tsStreamOut_V_V_1_payload_A[11]_i_3 
       (.I0(ts_V_reg[10]),
        .I1(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I2(ap_return_preg[10]),
        .I3(randomRet_write_assi_fu_78_p3[10]),
        .O(\tsStreamOut_V_V_1_payload_A[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \tsStreamOut_V_V_1_payload_A[11]_i_4 
       (.I0(ts_V_reg[9]),
        .I1(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I2(ap_return_preg[9]),
        .I3(randomRet_write_assi_fu_78_p3[9]),
        .O(\tsStreamOut_V_V_1_payload_A[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \tsStreamOut_V_V_1_payload_A[11]_i_5 
       (.I0(ts_V_reg[8]),
        .I1(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I2(ap_return_preg[8]),
        .I3(randomRet_write_assi_fu_78_p3[8]),
        .O(\tsStreamOut_V_V_1_payload_A[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \tsStreamOut_V_V_1_payload_A[15]_i_2 
       (.I0(ts_V_reg[15]),
        .I1(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I2(ap_return_preg[15]),
        .I3(randomRet_write_assi_fu_78_p3_0[15]),
        .O(\tsStreamOut_V_V_1_payload_A[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \tsStreamOut_V_V_1_payload_A[15]_i_3 
       (.I0(ts_V_reg[14]),
        .I1(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I2(ap_return_preg[14]),
        .I3(randomRet_write_assi_fu_78_p3[14]),
        .O(\tsStreamOut_V_V_1_payload_A[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \tsStreamOut_V_V_1_payload_A[15]_i_4 
       (.I0(ts_V_reg[13]),
        .I1(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I2(ap_return_preg[13]),
        .I3(randomRet_write_assi_fu_78_p3[13]),
        .O(\tsStreamOut_V_V_1_payload_A[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \tsStreamOut_V_V_1_payload_A[15]_i_5 
       (.I0(ts_V_reg[12]),
        .I1(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I2(ap_return_preg[12]),
        .I3(randomRet_write_assi_fu_78_p3[12]),
        .O(\tsStreamOut_V_V_1_payload_A[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \tsStreamOut_V_V_1_payload_A[3]_i_2 
       (.I0(ts_V_reg[3]),
        .I1(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I2(ap_return_preg[3]),
        .I3(randomRet_write_assi_fu_78_p3_0[3]),
        .O(\tsStreamOut_V_V_1_payload_A[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \tsStreamOut_V_V_1_payload_A[3]_i_3 
       (.I0(ts_V_reg[2]),
        .I1(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I2(ap_return_preg[2]),
        .I3(randomRet_write_assi_fu_78_p3_0[2]),
        .O(\tsStreamOut_V_V_1_payload_A[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \tsStreamOut_V_V_1_payload_A[3]_i_4 
       (.I0(ts_V_reg[1]),
        .I1(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I2(ap_return_preg[1]),
        .I3(randomRet_write_assi_fu_78_p3_0[1]),
        .O(\tsStreamOut_V_V_1_payload_A[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \tsStreamOut_V_V_1_payload_A[3]_i_5 
       (.I0(ts_V_reg[0]),
        .I1(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I2(ap_return_preg[0]),
        .I3(randomRet_write_assi_fu_78_p3_0[0]),
        .O(\tsStreamOut_V_V_1_payload_A[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \tsStreamOut_V_V_1_payload_A[7]_i_2 
       (.I0(ts_V_reg[7]),
        .I1(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I2(ap_return_preg[7]),
        .I3(randomRet_write_assi_fu_78_p3[7]),
        .O(\tsStreamOut_V_V_1_payload_A[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \tsStreamOut_V_V_1_payload_A[7]_i_3 
       (.I0(ts_V_reg[6]),
        .I1(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I2(ap_return_preg[6]),
        .I3(randomRet_write_assi_fu_78_p3[6]),
        .O(\tsStreamOut_V_V_1_payload_A[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \tsStreamOut_V_V_1_payload_A[7]_i_4 
       (.I0(ts_V_reg[5]),
        .I1(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I2(ap_return_preg[5]),
        .I3(randomRet_write_assi_fu_78_p3[5]),
        .O(\tsStreamOut_V_V_1_payload_A[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \tsStreamOut_V_V_1_payload_A[7]_i_5 
       (.I0(ts_V_reg[4]),
        .I1(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I2(ap_return_preg[4]),
        .I3(randomRet_write_assi_fu_78_p3_0[4]),
        .O(\tsStreamOut_V_V_1_payload_A[7]_i_5_n_0 ));
  CARRY4 \tsStreamOut_V_V_1_payload_A_reg[11]_i_1 
       (.CI(\tsStreamOut_V_V_1_payload_A_reg[7]_i_1_n_0 ),
        .CO({\tsStreamOut_V_V_1_payload_A_reg[11]_i_1_n_0 ,\tsStreamOut_V_V_1_payload_A_reg[11]_i_1_n_1 ,\tsStreamOut_V_V_1_payload_A_reg[11]_i_1_n_2 ,\tsStreamOut_V_V_1_payload_A_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(ts_V_reg[11:8]),
        .O(D[11:8]),
        .S({\tsStreamOut_V_V_1_payload_A[11]_i_2_n_0 ,\tsStreamOut_V_V_1_payload_A[11]_i_3_n_0 ,\tsStreamOut_V_V_1_payload_A[11]_i_4_n_0 ,\tsStreamOut_V_V_1_payload_A[11]_i_5_n_0 }));
  CARRY4 \tsStreamOut_V_V_1_payload_A_reg[15]_i_1 
       (.CI(\tsStreamOut_V_V_1_payload_A_reg[11]_i_1_n_0 ),
        .CO({\tsStreamOut_V_V_1_payload_A_reg[15]_i_1_n_0 ,\tsStreamOut_V_V_1_payload_A_reg[15]_i_1_n_1 ,\tsStreamOut_V_V_1_payload_A_reg[15]_i_1_n_2 ,\tsStreamOut_V_V_1_payload_A_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(ts_V_reg[15:12]),
        .O(D[15:12]),
        .S({\tsStreamOut_V_V_1_payload_A[15]_i_2_n_0 ,\tsStreamOut_V_V_1_payload_A[15]_i_3_n_0 ,\tsStreamOut_V_V_1_payload_A[15]_i_4_n_0 ,\tsStreamOut_V_V_1_payload_A[15]_i_5_n_0 }));
  CARRY4 \tsStreamOut_V_V_1_payload_A_reg[19]_i_1 
       (.CI(\tsStreamOut_V_V_1_payload_A_reg[15]_i_1_n_0 ),
        .CO({\tsStreamOut_V_V_1_payload_A_reg[19]_i_1_n_0 ,\tsStreamOut_V_V_1_payload_A_reg[19]_i_1_n_1 ,\tsStreamOut_V_V_1_payload_A_reg[19]_i_1_n_2 ,\tsStreamOut_V_V_1_payload_A_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[19:16]),
        .S(ts_V_reg[19:16]));
  CARRY4 \tsStreamOut_V_V_1_payload_A_reg[23]_i_1 
       (.CI(\tsStreamOut_V_V_1_payload_A_reg[19]_i_1_n_0 ),
        .CO({\tsStreamOut_V_V_1_payload_A_reg[23]_i_1_n_0 ,\tsStreamOut_V_V_1_payload_A_reg[23]_i_1_n_1 ,\tsStreamOut_V_V_1_payload_A_reg[23]_i_1_n_2 ,\tsStreamOut_V_V_1_payload_A_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[23:20]),
        .S(ts_V_reg[23:20]));
  CARRY4 \tsStreamOut_V_V_1_payload_A_reg[27]_i_1 
       (.CI(\tsStreamOut_V_V_1_payload_A_reg[23]_i_1_n_0 ),
        .CO({\tsStreamOut_V_V_1_payload_A_reg[27]_i_1_n_0 ,\tsStreamOut_V_V_1_payload_A_reg[27]_i_1_n_1 ,\tsStreamOut_V_V_1_payload_A_reg[27]_i_1_n_2 ,\tsStreamOut_V_V_1_payload_A_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[27:24]),
        .S(ts_V_reg[27:24]));
  CARRY4 \tsStreamOut_V_V_1_payload_A_reg[31]_i_1 
       (.CI(\tsStreamOut_V_V_1_payload_A_reg[27]_i_1_n_0 ),
        .CO({\tsStreamOut_V_V_1_payload_A_reg[31]_i_1_n_0 ,\tsStreamOut_V_V_1_payload_A_reg[31]_i_1_n_1 ,\tsStreamOut_V_V_1_payload_A_reg[31]_i_1_n_2 ,\tsStreamOut_V_V_1_payload_A_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[31:28]),
        .S(ts_V_reg[31:28]));
  CARRY4 \tsStreamOut_V_V_1_payload_A_reg[35]_i_1 
       (.CI(\tsStreamOut_V_V_1_payload_A_reg[31]_i_1_n_0 ),
        .CO({\tsStreamOut_V_V_1_payload_A_reg[35]_i_1_n_0 ,\tsStreamOut_V_V_1_payload_A_reg[35]_i_1_n_1 ,\tsStreamOut_V_V_1_payload_A_reg[35]_i_1_n_2 ,\tsStreamOut_V_V_1_payload_A_reg[35]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[35:32]),
        .S(ts_V_reg[35:32]));
  CARRY4 \tsStreamOut_V_V_1_payload_A_reg[39]_i_1 
       (.CI(\tsStreamOut_V_V_1_payload_A_reg[35]_i_1_n_0 ),
        .CO({\tsStreamOut_V_V_1_payload_A_reg[39]_i_1_n_0 ,\tsStreamOut_V_V_1_payload_A_reg[39]_i_1_n_1 ,\tsStreamOut_V_V_1_payload_A_reg[39]_i_1_n_2 ,\tsStreamOut_V_V_1_payload_A_reg[39]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[39:36]),
        .S(ts_V_reg[39:36]));
  CARRY4 \tsStreamOut_V_V_1_payload_A_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\tsStreamOut_V_V_1_payload_A_reg[3]_i_1_n_0 ,\tsStreamOut_V_V_1_payload_A_reg[3]_i_1_n_1 ,\tsStreamOut_V_V_1_payload_A_reg[3]_i_1_n_2 ,\tsStreamOut_V_V_1_payload_A_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(ts_V_reg[3:0]),
        .O(D[3:0]),
        .S({\tsStreamOut_V_V_1_payload_A[3]_i_2_n_0 ,\tsStreamOut_V_V_1_payload_A[3]_i_3_n_0 ,\tsStreamOut_V_V_1_payload_A[3]_i_4_n_0 ,\tsStreamOut_V_V_1_payload_A[3]_i_5_n_0 }));
  CARRY4 \tsStreamOut_V_V_1_payload_A_reg[43]_i_1 
       (.CI(\tsStreamOut_V_V_1_payload_A_reg[39]_i_1_n_0 ),
        .CO({\tsStreamOut_V_V_1_payload_A_reg[43]_i_1_n_0 ,\tsStreamOut_V_V_1_payload_A_reg[43]_i_1_n_1 ,\tsStreamOut_V_V_1_payload_A_reg[43]_i_1_n_2 ,\tsStreamOut_V_V_1_payload_A_reg[43]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[43:40]),
        .S(ts_V_reg[43:40]));
  CARRY4 \tsStreamOut_V_V_1_payload_A_reg[47]_i_1 
       (.CI(\tsStreamOut_V_V_1_payload_A_reg[43]_i_1_n_0 ),
        .CO({\tsStreamOut_V_V_1_payload_A_reg[47]_i_1_n_0 ,\tsStreamOut_V_V_1_payload_A_reg[47]_i_1_n_1 ,\tsStreamOut_V_V_1_payload_A_reg[47]_i_1_n_2 ,\tsStreamOut_V_V_1_payload_A_reg[47]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[47:44]),
        .S(ts_V_reg[47:44]));
  CARRY4 \tsStreamOut_V_V_1_payload_A_reg[51]_i_1 
       (.CI(\tsStreamOut_V_V_1_payload_A_reg[47]_i_1_n_0 ),
        .CO({\tsStreamOut_V_V_1_payload_A_reg[51]_i_1_n_0 ,\tsStreamOut_V_V_1_payload_A_reg[51]_i_1_n_1 ,\tsStreamOut_V_V_1_payload_A_reg[51]_i_1_n_2 ,\tsStreamOut_V_V_1_payload_A_reg[51]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[51:48]),
        .S(ts_V_reg[51:48]));
  CARRY4 \tsStreamOut_V_V_1_payload_A_reg[55]_i_1 
       (.CI(\tsStreamOut_V_V_1_payload_A_reg[51]_i_1_n_0 ),
        .CO({\tsStreamOut_V_V_1_payload_A_reg[55]_i_1_n_0 ,\tsStreamOut_V_V_1_payload_A_reg[55]_i_1_n_1 ,\tsStreamOut_V_V_1_payload_A_reg[55]_i_1_n_2 ,\tsStreamOut_V_V_1_payload_A_reg[55]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[55:52]),
        .S(ts_V_reg[55:52]));
  CARRY4 \tsStreamOut_V_V_1_payload_A_reg[59]_i_1 
       (.CI(\tsStreamOut_V_V_1_payload_A_reg[55]_i_1_n_0 ),
        .CO({\tsStreamOut_V_V_1_payload_A_reg[59]_i_1_n_0 ,\tsStreamOut_V_V_1_payload_A_reg[59]_i_1_n_1 ,\tsStreamOut_V_V_1_payload_A_reg[59]_i_1_n_2 ,\tsStreamOut_V_V_1_payload_A_reg[59]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[59:56]),
        .S(ts_V_reg[59:56]));
  CARRY4 \tsStreamOut_V_V_1_payload_A_reg[63]_i_2 
       (.CI(\tsStreamOut_V_V_1_payload_A_reg[59]_i_1_n_0 ),
        .CO({\NLW_tsStreamOut_V_V_1_payload_A_reg[63]_i_2_CO_UNCONNECTED [3],\tsStreamOut_V_V_1_payload_A_reg[63]_i_2_n_1 ,\tsStreamOut_V_V_1_payload_A_reg[63]_i_2_n_2 ,\tsStreamOut_V_V_1_payload_A_reg[63]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[63:60]),
        .S(ts_V_reg[63:60]));
  CARRY4 \tsStreamOut_V_V_1_payload_A_reg[7]_i_1 
       (.CI(\tsStreamOut_V_V_1_payload_A_reg[3]_i_1_n_0 ),
        .CO({\tsStreamOut_V_V_1_payload_A_reg[7]_i_1_n_0 ,\tsStreamOut_V_V_1_payload_A_reg[7]_i_1_n_1 ,\tsStreamOut_V_V_1_payload_A_reg[7]_i_1_n_2 ,\tsStreamOut_V_V_1_payload_A_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(ts_V_reg[7:4]),
        .O(D[7:4]),
        .S({\tsStreamOut_V_V_1_payload_A[7]_i_2_n_0 ,\tsStreamOut_V_V_1_payload_A[7]_i_3_n_0 ,\tsStreamOut_V_V_1_payload_A[7]_i_4_n_0 ,\tsStreamOut_V_V_1_payload_A[7]_i_5_n_0 }));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \ts_V[0]_i_2 
       (.I0(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I1(ap_return_preg[3]),
        .I2(randomRet_write_assi_fu_78_p3_0[3]),
        .I3(ts_V_reg[3]),
        .O(\ts_V[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \ts_V[0]_i_3 
       (.I0(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I1(ap_return_preg[2]),
        .I2(randomRet_write_assi_fu_78_p3_0[2]),
        .I3(ts_V_reg[2]),
        .O(\ts_V[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \ts_V[0]_i_4 
       (.I0(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I1(ap_return_preg[1]),
        .I2(randomRet_write_assi_fu_78_p3_0[1]),
        .I3(ts_V_reg[1]),
        .O(\ts_V[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \ts_V[0]_i_5 
       (.I0(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I1(ap_return_preg[0]),
        .I2(randomRet_write_assi_fu_78_p3_0[0]),
        .I3(ts_V_reg[0]),
        .O(\ts_V[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \ts_V[12]_i_2 
       (.I0(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I1(ap_return_preg[15]),
        .I2(randomRet_write_assi_fu_78_p3_0[15]),
        .I3(ts_V_reg[15]),
        .O(\ts_V[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \ts_V[12]_i_3 
       (.I0(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I1(ap_return_preg[14]),
        .I2(randomRet_write_assi_fu_78_p3[14]),
        .I3(ts_V_reg[14]),
        .O(\ts_V[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \ts_V[12]_i_4 
       (.I0(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I1(ap_return_preg[13]),
        .I2(randomRet_write_assi_fu_78_p3[13]),
        .I3(ts_V_reg[13]),
        .O(\ts_V[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \ts_V[12]_i_5 
       (.I0(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I1(ap_return_preg[12]),
        .I2(randomRet_write_assi_fu_78_p3[12]),
        .I3(ts_V_reg[12]),
        .O(\ts_V[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \ts_V[4]_i_2 
       (.I0(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I1(ap_return_preg[7]),
        .I2(randomRet_write_assi_fu_78_p3[7]),
        .I3(ts_V_reg[7]),
        .O(\ts_V[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \ts_V[4]_i_3 
       (.I0(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I1(ap_return_preg[6]),
        .I2(randomRet_write_assi_fu_78_p3[6]),
        .I3(ts_V_reg[6]),
        .O(\ts_V[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \ts_V[4]_i_4 
       (.I0(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I1(ap_return_preg[5]),
        .I2(randomRet_write_assi_fu_78_p3[5]),
        .I3(ts_V_reg[5]),
        .O(\ts_V[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \ts_V[4]_i_5 
       (.I0(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I1(ap_return_preg[4]),
        .I2(randomRet_write_assi_fu_78_p3_0[4]),
        .I3(ts_V_reg[4]),
        .O(\ts_V[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \ts_V[8]_i_2 
       (.I0(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I1(ap_return_preg[11]),
        .I2(randomRet_write_assi_fu_78_p3[11]),
        .I3(ts_V_reg[11]),
        .O(\ts_V[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \ts_V[8]_i_3 
       (.I0(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I1(ap_return_preg[10]),
        .I2(randomRet_write_assi_fu_78_p3[10]),
        .I3(ts_V_reg[10]),
        .O(\ts_V[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \ts_V[8]_i_4 
       (.I0(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I1(ap_return_preg[9]),
        .I2(randomRet_write_assi_fu_78_p3[9]),
        .I3(ts_V_reg[9]),
        .O(\ts_V[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \ts_V[8]_i_5 
       (.I0(ap_reg_ioackin_deltaTsReg_dummy_ack0_out),
        .I1(ap_return_preg[8]),
        .I2(randomRet_write_assi_fu_78_p3[8]),
        .I3(ts_V_reg[8]),
        .O(\ts_V[8]_i_5_n_0 ));
  CARRY4 \ts_V_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\ts_V_reg[0]_i_1_n_0 ,\ts_V_reg[0]_i_1_n_1 ,\ts_V_reg[0]_i_1_n_2 ,\ts_V_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(ts_V_reg[3:0]),
        .O(O),
        .S({\ts_V[0]_i_2_n_0 ,\ts_V[0]_i_3_n_0 ,\ts_V[0]_i_4_n_0 ,\ts_V[0]_i_5_n_0 }));
  CARRY4 \ts_V_reg[12]_i_1 
       (.CI(\ts_V_reg[8]_i_1_n_0 ),
        .CO({\ts_V_reg[12]_i_1_n_0 ,\ts_V_reg[12]_i_1_n_1 ,\ts_V_reg[12]_i_1_n_2 ,\ts_V_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(ts_V_reg[15:12]),
        .O(\ts_V_reg[15] ),
        .S({\ts_V[12]_i_2_n_0 ,\ts_V[12]_i_3_n_0 ,\ts_V[12]_i_4_n_0 ,\ts_V[12]_i_5_n_0 }));
  CARRY4 \ts_V_reg[16]_i_1 
       (.CI(\ts_V_reg[12]_i_1_n_0 ),
        .CO({\ts_V_reg[16]_i_1_n_0 ,\ts_V_reg[16]_i_1_n_1 ,\ts_V_reg[16]_i_1_n_2 ,\ts_V_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ts_V_reg[19] ),
        .S(ts_V_reg[19:16]));
  CARRY4 \ts_V_reg[20]_i_1 
       (.CI(\ts_V_reg[16]_i_1_n_0 ),
        .CO({\ts_V_reg[20]_i_1_n_0 ,\ts_V_reg[20]_i_1_n_1 ,\ts_V_reg[20]_i_1_n_2 ,\ts_V_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ts_V_reg[23] ),
        .S(ts_V_reg[23:20]));
  CARRY4 \ts_V_reg[24]_i_1 
       (.CI(\ts_V_reg[20]_i_1_n_0 ),
        .CO({\ts_V_reg[24]_i_1_n_0 ,\ts_V_reg[24]_i_1_n_1 ,\ts_V_reg[24]_i_1_n_2 ,\ts_V_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ts_V_reg[27] ),
        .S(ts_V_reg[27:24]));
  CARRY4 \ts_V_reg[28]_i_1 
       (.CI(\ts_V_reg[24]_i_1_n_0 ),
        .CO({\ts_V_reg[28]_i_1_n_0 ,\ts_V_reg[28]_i_1_n_1 ,\ts_V_reg[28]_i_1_n_2 ,\ts_V_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ts_V_reg[31] ),
        .S(ts_V_reg[31:28]));
  CARRY4 \ts_V_reg[32]_i_1 
       (.CI(\ts_V_reg[28]_i_1_n_0 ),
        .CO({\ts_V_reg[32]_i_1_n_0 ,\ts_V_reg[32]_i_1_n_1 ,\ts_V_reg[32]_i_1_n_2 ,\ts_V_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ts_V_reg[35] ),
        .S(ts_V_reg[35:32]));
  CARRY4 \ts_V_reg[36]_i_1 
       (.CI(\ts_V_reg[32]_i_1_n_0 ),
        .CO({\ts_V_reg[36]_i_1_n_0 ,\ts_V_reg[36]_i_1_n_1 ,\ts_V_reg[36]_i_1_n_2 ,\ts_V_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ts_V_reg[39] ),
        .S(ts_V_reg[39:36]));
  CARRY4 \ts_V_reg[40]_i_1 
       (.CI(\ts_V_reg[36]_i_1_n_0 ),
        .CO({\ts_V_reg[40]_i_1_n_0 ,\ts_V_reg[40]_i_1_n_1 ,\ts_V_reg[40]_i_1_n_2 ,\ts_V_reg[40]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ts_V_reg[43] ),
        .S(ts_V_reg[43:40]));
  CARRY4 \ts_V_reg[44]_i_1 
       (.CI(\ts_V_reg[40]_i_1_n_0 ),
        .CO({\ts_V_reg[44]_i_1_n_0 ,\ts_V_reg[44]_i_1_n_1 ,\ts_V_reg[44]_i_1_n_2 ,\ts_V_reg[44]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ts_V_reg[47] ),
        .S(ts_V_reg[47:44]));
  CARRY4 \ts_V_reg[48]_i_1 
       (.CI(\ts_V_reg[44]_i_1_n_0 ),
        .CO({\ts_V_reg[48]_i_1_n_0 ,\ts_V_reg[48]_i_1_n_1 ,\ts_V_reg[48]_i_1_n_2 ,\ts_V_reg[48]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ts_V_reg[51] ),
        .S(ts_V_reg[51:48]));
  CARRY4 \ts_V_reg[4]_i_1 
       (.CI(\ts_V_reg[0]_i_1_n_0 ),
        .CO({\ts_V_reg[4]_i_1_n_0 ,\ts_V_reg[4]_i_1_n_1 ,\ts_V_reg[4]_i_1_n_2 ,\ts_V_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(ts_V_reg[7:4]),
        .O(\ts_V_reg[7] ),
        .S({\ts_V[4]_i_2_n_0 ,\ts_V[4]_i_3_n_0 ,\ts_V[4]_i_4_n_0 ,\ts_V[4]_i_5_n_0 }));
  CARRY4 \ts_V_reg[52]_i_1 
       (.CI(\ts_V_reg[48]_i_1_n_0 ),
        .CO({\ts_V_reg[52]_i_1_n_0 ,\ts_V_reg[52]_i_1_n_1 ,\ts_V_reg[52]_i_1_n_2 ,\ts_V_reg[52]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ts_V_reg[55] ),
        .S(ts_V_reg[55:52]));
  CARRY4 \ts_V_reg[56]_i_1 
       (.CI(\ts_V_reg[52]_i_1_n_0 ),
        .CO({\ts_V_reg[56]_i_1_n_0 ,\ts_V_reg[56]_i_1_n_1 ,\ts_V_reg[56]_i_1_n_2 ,\ts_V_reg[56]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ts_V_reg[59] ),
        .S(ts_V_reg[59:56]));
  CARRY4 \ts_V_reg[60]_i_1 
       (.CI(\ts_V_reg[56]_i_1_n_0 ),
        .CO({\NLW_ts_V_reg[60]_i_1_CO_UNCONNECTED [3],\ts_V_reg[60]_i_1_n_1 ,\ts_V_reg[60]_i_1_n_2 ,\ts_V_reg[60]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ts_V_reg[63] ),
        .S(ts_V_reg[63:60]));
  CARRY4 \ts_V_reg[8]_i_1 
       (.CI(\ts_V_reg[4]_i_1_n_0 ),
        .CO({\ts_V_reg[8]_i_1_n_0 ,\ts_V_reg[8]_i_1_n_1 ,\ts_V_reg[8]_i_1_n_2 ,\ts_V_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(ts_V_reg[11:8]),
        .O(\ts_V_reg[11] ),
        .S({\ts_V[8]_i_2_n_0 ,\ts_V[8]_i_3_n_0 ,\ts_V[8]_i_4_n_0 ,\ts_V[8]_i_5_n_0 }));
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
