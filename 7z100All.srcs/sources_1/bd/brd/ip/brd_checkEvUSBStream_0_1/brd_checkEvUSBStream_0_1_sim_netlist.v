// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sat Feb 29 09:40:14 2020
// Host        : DESKTOP-MC69HMJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top brd_checkEvUSBStream_0_1 -prefix
//               brd_checkEvUSBStream_0_1_ brd_checkEvUSBStream_0_1_sim_netlist.v
// Design      : brd_checkEvUSBStream_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "brd_checkEvUSBStream_0_1,checkEvUSBStream,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "checkEvUSBStream,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module brd_checkEvUSBStream_0_1
   (dataReg_V_ap_vld,
    nonMonTSDiffFlgReg_V_ap_vld,
    tsReg_V_ap_vld,
    glLastTSReg_V_ap_vld,
    ap_clk,
    ap_rst_n,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    evUSBStreamIn_V_V_TVALID,
    evUSBStreamIn_V_V_TREADY,
    evUSBStreamIn_V_V_TDATA,
    dataReg_V,
    nonMonTSDiffFlgReg_V,
    tsReg_V,
    glLastTSReg_V);
  output dataReg_V_ap_vld;
  output nonMonTSDiffFlgReg_V_ap_vld;
  output tsReg_V_ap_vld;
  output glLastTSReg_V_ap_vld;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF evUSBStreamIn_V_V, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000" *) input ap_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) input ap_rst_n;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) input ap_start;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 evUSBStreamIn_V_V TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME evUSBStreamIn_V_V, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *) input evUSBStreamIn_V_V_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 evUSBStreamIn_V_V TREADY" *) output evUSBStreamIn_V_V_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 evUSBStreamIn_V_V TDATA" *) input [7:0]evUSBStreamIn_V_V_TDATA;
  (* x_interface_info = "xilinx.com:signal:data:1.0 dataReg_V DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME dataReg_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [15:0]dataReg_V;
  (* x_interface_info = "xilinx.com:signal:data:1.0 nonMonTSDiffFlgReg_V DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME nonMonTSDiffFlgReg_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [0:0]nonMonTSDiffFlgReg_V;
  (* x_interface_info = "xilinx.com:signal:data:1.0 tsReg_V DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME tsReg_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [63:0]tsReg_V;
  (* x_interface_info = "xilinx.com:signal:data:1.0 glLastTSReg_V DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME glLastTSReg_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [63:0]glLastTSReg_V;

  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_start;
  wire [15:0]dataReg_V;
  wire dataReg_V_ap_vld;
  wire [7:0]evUSBStreamIn_V_V_TDATA;
  wire evUSBStreamIn_V_V_TREADY;
  wire evUSBStreamIn_V_V_TVALID;
  wire [63:0]glLastTSReg_V;
  wire glLastTSReg_V_ap_vld;
  wire [0:0]nonMonTSDiffFlgReg_V;
  wire nonMonTSDiffFlgReg_V_ap_vld;
  wire [63:0]tsReg_V;
  wire tsReg_V_ap_vld;

  brd_checkEvUSBStream_0_1_checkEvUSBStream U0
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .dataReg_V(dataReg_V),
        .dataReg_V_ap_vld(dataReg_V_ap_vld),
        .evUSBStreamIn_V_V_TDATA(evUSBStreamIn_V_V_TDATA),
        .evUSBStreamIn_V_V_TREADY(evUSBStreamIn_V_V_TREADY),
        .evUSBStreamIn_V_V_TVALID(evUSBStreamIn_V_V_TVALID),
        .glLastTSReg_V(glLastTSReg_V),
        .glLastTSReg_V_ap_vld(glLastTSReg_V_ap_vld),
        .nonMonTSDiffFlgReg_V(nonMonTSDiffFlgReg_V),
        .nonMonTSDiffFlgReg_V_ap_vld(nonMonTSDiffFlgReg_V_ap_vld),
        .tsReg_V(tsReg_V),
        .tsReg_V_ap_vld(tsReg_V_ap_vld));
endmodule

module brd_checkEvUSBStream_0_1_checkEvUSBStream
   (ap_clk,
    ap_rst_n,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    evUSBStreamIn_V_V_TDATA,
    evUSBStreamIn_V_V_TVALID,
    evUSBStreamIn_V_V_TREADY,
    dataReg_V,
    dataReg_V_ap_vld,
    nonMonTSDiffFlgReg_V,
    nonMonTSDiffFlgReg_V_ap_vld,
    tsReg_V,
    tsReg_V_ap_vld,
    glLastTSReg_V,
    glLastTSReg_V_ap_vld);
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input [7:0]evUSBStreamIn_V_V_TDATA;
  input evUSBStreamIn_V_V_TVALID;
  output evUSBStreamIn_V_V_TREADY;
  output [15:0]dataReg_V;
  output dataReg_V_ap_vld;
  output [0:0]nonMonTSDiffFlgReg_V;
  output nonMonTSDiffFlgReg_V_ap_vld;
  output [63:0]tsReg_V;
  output tsReg_V_ap_vld;
  output [63:0]glLastTSReg_V;
  output glLastTSReg_V_ap_vld;

  wire \<const0> ;
  wire \ap_CS_fsm[0]_i_1_n_0 ;
  wire \ap_CS_fsm[1]_i_1_n_0 ;
  wire ap_CS_fsm_pp0_stage1;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_clk;
  wire ap_done;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1_n_0;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire [15:0]dataReg_V;
  wire dataReg_V_ap_vld;
  wire evUSBStreamIn_V_V_0_ack_out;
  wire evUSBStreamIn_V_V_0_load_B;
  wire [7:0]evUSBStreamIn_V_V_0_payload_A;
  wire \evUSBStreamIn_V_V_0_payload_A[7]_i_1_n_0 ;
  wire [7:0]evUSBStreamIn_V_V_0_payload_B;
  wire evUSBStreamIn_V_V_0_sel;
  wire evUSBStreamIn_V_V_0_sel_rd_i_1_n_0;
  wire evUSBStreamIn_V_V_0_sel_wr;
  wire evUSBStreamIn_V_V_0_sel_wr_i_1_n_0;
  wire \evUSBStreamIn_V_V_0_state[0]_i_1_n_0 ;
  wire \evUSBStreamIn_V_V_0_state[1]_i_2_n_0 ;
  wire \evUSBStreamIn_V_V_0_state_reg_n_0_[0] ;
  wire [7:0]evUSBStreamIn_V_V_TDATA;
  wire evUSBStreamIn_V_V_TREADY;
  wire evUSBStreamIn_V_V_TVALID;
  wire [47:0]\^glLastTSReg_V ;
  wire [0:0]nonMonTSDiffFlgReg_V;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_10_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_10_n_1 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_10_n_2 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_10_n_3 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_11_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_12_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_13_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_14_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_15_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_16_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_17_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_18_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_19_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_19_n_1 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_19_n_2 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_19_n_3 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_1_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_1_n_1 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_1_n_2 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_1_n_3 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_20_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_21_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_22_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_23_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_24_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_25_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_26_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_27_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_28_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_28_n_1 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_28_n_2 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_28_n_3 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_29_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_2_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_30_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_31_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_32_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_33_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_34_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_35_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_36_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_37_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_37_n_1 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_37_n_2 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_37_n_3 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_38_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_39_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_3_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_40_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_41_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_42_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_43_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_44_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_45_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_46_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_47_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_48_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_49_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_4_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_50_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_51_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_52_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_53_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_5_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_6_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_7_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_8_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_i_9_n_0 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_n_1 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_n_2 ;
  wire \nonMonTSDiffFlgReg_V[0]_INST_0_n_3 ;
  wire nonMonTSDiffFlgReg_V_ap_vld;
  wire tmp_2_fu_130_p2;
  wire [32:0]tmp_8_fu_151_p2;
  wire [47:0]\^tsReg_V ;
  wire tsWrap_V0;
  wire \tsWrap_V[0]_i_3_n_0 ;
  wire \tsWrap_V[0]_i_4_n_0 ;
  wire \tsWrap_V[0]_i_5_n_0 ;
  wire \tsWrap_V[0]_i_6_n_0 ;
  wire \tsWrap_V[4]_i_2_n_0 ;
  wire \tsWrap_V[4]_i_3_n_0 ;
  wire \tsWrap_V[4]_i_4_n_0 ;
  wire \tsWrap_V[4]_i_5_n_0 ;
  wire \tsWrap_V[8]_i_2_n_0 ;
  wire \tsWrap_V[8]_i_3_n_0 ;
  wire \tsWrap_V[8]_i_4_n_0 ;
  wire \tsWrap_V[8]_i_5_n_0 ;
  wire [32:0]tsWrap_V_reg;
  wire \tsWrap_V_reg[0]_i_2_n_0 ;
  wire \tsWrap_V_reg[0]_i_2_n_1 ;
  wire \tsWrap_V_reg[0]_i_2_n_2 ;
  wire \tsWrap_V_reg[0]_i_2_n_3 ;
  wire \tsWrap_V_reg[0]_i_2_n_4 ;
  wire \tsWrap_V_reg[0]_i_2_n_5 ;
  wire \tsWrap_V_reg[0]_i_2_n_6 ;
  wire \tsWrap_V_reg[0]_i_2_n_7 ;
  wire \tsWrap_V_reg[12]_i_1_n_0 ;
  wire \tsWrap_V_reg[12]_i_1_n_1 ;
  wire \tsWrap_V_reg[12]_i_1_n_2 ;
  wire \tsWrap_V_reg[12]_i_1_n_3 ;
  wire \tsWrap_V_reg[12]_i_1_n_4 ;
  wire \tsWrap_V_reg[12]_i_1_n_5 ;
  wire \tsWrap_V_reg[12]_i_1_n_6 ;
  wire \tsWrap_V_reg[12]_i_1_n_7 ;
  wire \tsWrap_V_reg[16]_i_1_n_0 ;
  wire \tsWrap_V_reg[16]_i_1_n_1 ;
  wire \tsWrap_V_reg[16]_i_1_n_2 ;
  wire \tsWrap_V_reg[16]_i_1_n_3 ;
  wire \tsWrap_V_reg[16]_i_1_n_4 ;
  wire \tsWrap_V_reg[16]_i_1_n_5 ;
  wire \tsWrap_V_reg[16]_i_1_n_6 ;
  wire \tsWrap_V_reg[16]_i_1_n_7 ;
  wire \tsWrap_V_reg[20]_i_1_n_0 ;
  wire \tsWrap_V_reg[20]_i_1_n_1 ;
  wire \tsWrap_V_reg[20]_i_1_n_2 ;
  wire \tsWrap_V_reg[20]_i_1_n_3 ;
  wire \tsWrap_V_reg[20]_i_1_n_4 ;
  wire \tsWrap_V_reg[20]_i_1_n_5 ;
  wire \tsWrap_V_reg[20]_i_1_n_6 ;
  wire \tsWrap_V_reg[20]_i_1_n_7 ;
  wire \tsWrap_V_reg[24]_i_1_n_0 ;
  wire \tsWrap_V_reg[24]_i_1_n_1 ;
  wire \tsWrap_V_reg[24]_i_1_n_2 ;
  wire \tsWrap_V_reg[24]_i_1_n_3 ;
  wire \tsWrap_V_reg[24]_i_1_n_4 ;
  wire \tsWrap_V_reg[24]_i_1_n_5 ;
  wire \tsWrap_V_reg[24]_i_1_n_6 ;
  wire \tsWrap_V_reg[24]_i_1_n_7 ;
  wire \tsWrap_V_reg[28]_i_1_n_0 ;
  wire \tsWrap_V_reg[28]_i_1_n_1 ;
  wire \tsWrap_V_reg[28]_i_1_n_2 ;
  wire \tsWrap_V_reg[28]_i_1_n_3 ;
  wire \tsWrap_V_reg[28]_i_1_n_4 ;
  wire \tsWrap_V_reg[28]_i_1_n_5 ;
  wire \tsWrap_V_reg[28]_i_1_n_6 ;
  wire \tsWrap_V_reg[28]_i_1_n_7 ;
  wire \tsWrap_V_reg[32]_i_1_n_7 ;
  wire \tsWrap_V_reg[4]_i_1_n_0 ;
  wire \tsWrap_V_reg[4]_i_1_n_1 ;
  wire \tsWrap_V_reg[4]_i_1_n_2 ;
  wire \tsWrap_V_reg[4]_i_1_n_3 ;
  wire \tsWrap_V_reg[4]_i_1_n_4 ;
  wire \tsWrap_V_reg[4]_i_1_n_5 ;
  wire \tsWrap_V_reg[4]_i_1_n_6 ;
  wire \tsWrap_V_reg[4]_i_1_n_7 ;
  wire \tsWrap_V_reg[8]_i_1_n_0 ;
  wire \tsWrap_V_reg[8]_i_1_n_1 ;
  wire \tsWrap_V_reg[8]_i_1_n_2 ;
  wire \tsWrap_V_reg[8]_i_1_n_3 ;
  wire \tsWrap_V_reg[8]_i_1_n_4 ;
  wire \tsWrap_V_reg[8]_i_1_n_5 ;
  wire \tsWrap_V_reg[8]_i_1_n_6 ;
  wire \tsWrap_V_reg[8]_i_1_n_7 ;
  wire ts_V;
  wire \ts_V[14]_i_1_n_0 ;
  wire \ts_V[15]_i_1_n_0 ;
  wire \ts_V[16]_i_1_n_0 ;
  wire \ts_V[17]_i_1_n_0 ;
  wire \ts_V[18]_i_1_n_0 ;
  wire \ts_V[18]_i_3_n_0 ;
  wire \ts_V[18]_i_4_n_0 ;
  wire \ts_V[18]_i_5_n_0 ;
  wire \ts_V[18]_i_6_n_0 ;
  wire \ts_V[19]_i_1_n_0 ;
  wire \ts_V[20]_i_1_n_0 ;
  wire \ts_V[21]_i_1_n_0 ;
  wire \ts_V[22]_i_1_n_0 ;
  wire \ts_V[22]_i_3_n_0 ;
  wire \ts_V[22]_i_4_n_0 ;
  wire \ts_V[22]_i_5_n_0 ;
  wire \ts_V[22]_i_6_n_0 ;
  wire \ts_V[23]_i_1_n_0 ;
  wire \ts_V[24]_i_1_n_0 ;
  wire \ts_V[25]_i_1_n_0 ;
  wire \ts_V[26]_i_1_n_0 ;
  wire \ts_V[26]_i_3_n_0 ;
  wire \ts_V[26]_i_4_n_0 ;
  wire \ts_V[26]_i_5_n_0 ;
  wire \ts_V[26]_i_6_n_0 ;
  wire \ts_V[27]_i_1_n_0 ;
  wire \ts_V[28]_i_1_n_0 ;
  wire \ts_V[29]_i_1_n_0 ;
  wire \ts_V[30]_i_1_n_0 ;
  wire \ts_V[31]_i_1_n_0 ;
  wire \ts_V[32]_i_1_n_0 ;
  wire \ts_V[33]_i_1_n_0 ;
  wire \ts_V[34]_i_1_n_0 ;
  wire \ts_V[35]_i_1_n_0 ;
  wire \ts_V[36]_i_1_n_0 ;
  wire \ts_V[37]_i_1_n_0 ;
  wire \ts_V[38]_i_1_n_0 ;
  wire \ts_V[39]_i_1_n_0 ;
  wire \ts_V[40]_i_1_n_0 ;
  wire \ts_V[41]_i_1_n_0 ;
  wire \ts_V[42]_i_1_n_0 ;
  wire \ts_V[43]_i_1_n_0 ;
  wire \ts_V[44]_i_1_n_0 ;
  wire \ts_V[45]_i_1_n_0 ;
  wire \ts_V[46]_i_1_n_0 ;
  wire \ts_V[47]_i_2_n_0 ;
  wire \ts_V_reg[18]_i_2_n_0 ;
  wire \ts_V_reg[18]_i_2_n_1 ;
  wire \ts_V_reg[18]_i_2_n_2 ;
  wire \ts_V_reg[18]_i_2_n_3 ;
  wire \ts_V_reg[22]_i_2_n_0 ;
  wire \ts_V_reg[22]_i_2_n_1 ;
  wire \ts_V_reg[22]_i_2_n_2 ;
  wire \ts_V_reg[22]_i_2_n_3 ;
  wire \ts_V_reg[26]_i_2_n_0 ;
  wire \ts_V_reg[26]_i_2_n_1 ;
  wire \ts_V_reg[26]_i_2_n_2 ;
  wire \ts_V_reg[26]_i_2_n_3 ;
  wire \ts_V_reg[30]_i_2_n_0 ;
  wire \ts_V_reg[30]_i_2_n_1 ;
  wire \ts_V_reg[30]_i_2_n_2 ;
  wire \ts_V_reg[30]_i_2_n_3 ;
  wire \ts_V_reg[34]_i_2_n_0 ;
  wire \ts_V_reg[34]_i_2_n_1 ;
  wire \ts_V_reg[34]_i_2_n_2 ;
  wire \ts_V_reg[34]_i_2_n_3 ;
  wire \ts_V_reg[38]_i_2_n_0 ;
  wire \ts_V_reg[38]_i_2_n_1 ;
  wire \ts_V_reg[38]_i_2_n_2 ;
  wire \ts_V_reg[38]_i_2_n_3 ;
  wire \ts_V_reg[42]_i_2_n_0 ;
  wire \ts_V_reg[42]_i_2_n_1 ;
  wire \ts_V_reg[42]_i_2_n_2 ;
  wire \ts_V_reg[42]_i_2_n_3 ;
  wire \ts_V_reg[46]_i_2_n_0 ;
  wire \ts_V_reg[46]_i_2_n_1 ;
  wire \ts_V_reg[46]_i_2_n_2 ;
  wire \ts_V_reg[46]_i_2_n_3 ;
  wire [3:0]\NLW_nonMonTSDiffFlgReg_V[0]_INST_0_O_UNCONNECTED ;
  wire [3:0]\NLW_nonMonTSDiffFlgReg_V[0]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_nonMonTSDiffFlgReg_V[0]_INST_0_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_nonMonTSDiffFlgReg_V[0]_INST_0_i_19_O_UNCONNECTED ;
  wire [3:0]\NLW_nonMonTSDiffFlgReg_V[0]_INST_0_i_28_O_UNCONNECTED ;
  wire [3:0]\NLW_nonMonTSDiffFlgReg_V[0]_INST_0_i_37_O_UNCONNECTED ;
  wire [3:0]\NLW_tsWrap_V_reg[32]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_tsWrap_V_reg[32]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_ts_V_reg[47]_i_4_CO_UNCONNECTED ;
  wire [3:1]\NLW_ts_V_reg[47]_i_4_O_UNCONNECTED ;

  assign glLastTSReg_V[63] = \<const0> ;
  assign glLastTSReg_V[62] = \<const0> ;
  assign glLastTSReg_V[61] = \<const0> ;
  assign glLastTSReg_V[60] = \<const0> ;
  assign glLastTSReg_V[59] = \<const0> ;
  assign glLastTSReg_V[58] = \<const0> ;
  assign glLastTSReg_V[57] = \<const0> ;
  assign glLastTSReg_V[56] = \<const0> ;
  assign glLastTSReg_V[55] = \<const0> ;
  assign glLastTSReg_V[54] = \<const0> ;
  assign glLastTSReg_V[53] = \<const0> ;
  assign glLastTSReg_V[52] = \<const0> ;
  assign glLastTSReg_V[51] = \<const0> ;
  assign glLastTSReg_V[50] = \<const0> ;
  assign glLastTSReg_V[49] = \<const0> ;
  assign glLastTSReg_V[48] = \<const0> ;
  assign glLastTSReg_V[47:0] = \^glLastTSReg_V [47:0];
  assign glLastTSReg_V_ap_vld = nonMonTSDiffFlgReg_V_ap_vld;
  assign tsReg_V[63] = \<const0> ;
  assign tsReg_V[62] = \<const0> ;
  assign tsReg_V[61] = \<const0> ;
  assign tsReg_V[60] = \<const0> ;
  assign tsReg_V[59] = \<const0> ;
  assign tsReg_V[58] = \<const0> ;
  assign tsReg_V[57] = \<const0> ;
  assign tsReg_V[56] = \<const0> ;
  assign tsReg_V[55] = \<const0> ;
  assign tsReg_V[54] = \<const0> ;
  assign tsReg_V[53] = \<const0> ;
  assign tsReg_V[52] = \<const0> ;
  assign tsReg_V[51] = \<const0> ;
  assign tsReg_V[50] = \<const0> ;
  assign tsReg_V[49] = \<const0> ;
  assign tsReg_V[48] = \<const0> ;
  assign tsReg_V[47:0] = \^tsReg_V [47:0];
  assign tsReg_V_ap_vld = nonMonTSDiffFlgReg_V_ap_vld;
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h555FBB1B)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter0_reg),
        .I2(ap_start),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\evUSBStreamIn_V_V_0_state_reg_n_0_[0] ),
        .O(\ap_CS_fsm[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAA044E4)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter0_reg),
        .I2(ap_start),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\evUSBStreamIn_V_V_0_state_reg_n_0_[0] ),
        .O(\ap_CS_fsm[1]_i_1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[0]_i_1_n_0 ),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[1]_i_1_n_0 ),
        .Q(ap_CS_fsm_pp0_stage1),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hAAAA02A200000000)) 
    ap_done_INST_0
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(ap_enable_reg_pp0_iter0_reg),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_start),
        .I4(\evUSBStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I5(ap_CS_fsm_pp0_stage1),
        .O(ap_done));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ap_enable_reg_pp0_iter0_reg_i_1
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .O(ap_enable_reg_pp0_iter0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0),
        .Q(ap_enable_reg_pp0_iter0_reg),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hF5FFF55580888000)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(\evUSBStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I2(ap_start),
        .I3(\ap_CS_fsm_reg_n_0_[0] ),
        .I4(ap_enable_reg_pp0_iter0_reg),
        .I5(ap_enable_reg_pp0_iter1),
        .O(ap_enable_reg_pp0_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter1),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ap_idle_INST_0
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_start),
        .O(ap_idle));
  LUT5 #(
    .INIT(32'hE2000000)) 
    ap_ready_INST_0
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_start),
        .I3(\evUSBStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I4(ap_CS_fsm_pp0_stage1),
        .O(ap_ready));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dataReg_V[10]_INST_0 
       (.I0(evUSBStreamIn_V_V_0_payload_B[2]),
        .I1(evUSBStreamIn_V_V_0_payload_A[2]),
        .I2(evUSBStreamIn_V_V_0_sel),
        .O(dataReg_V[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dataReg_V[11]_INST_0 
       (.I0(evUSBStreamIn_V_V_0_payload_B[3]),
        .I1(evUSBStreamIn_V_V_0_payload_A[3]),
        .I2(evUSBStreamIn_V_V_0_sel),
        .O(dataReg_V[11]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dataReg_V[12]_INST_0 
       (.I0(evUSBStreamIn_V_V_0_payload_B[4]),
        .I1(evUSBStreamIn_V_V_0_payload_A[4]),
        .I2(evUSBStreamIn_V_V_0_sel),
        .O(dataReg_V[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dataReg_V[13]_INST_0 
       (.I0(evUSBStreamIn_V_V_0_payload_B[5]),
        .I1(evUSBStreamIn_V_V_0_payload_A[5]),
        .I2(evUSBStreamIn_V_V_0_sel),
        .O(dataReg_V[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    \dataReg_V[14]_INST_0 
       (.I0(evUSBStreamIn_V_V_0_payload_B[6]),
        .I1(evUSBStreamIn_V_V_0_payload_A[6]),
        .I2(evUSBStreamIn_V_V_0_sel),
        .O(dataReg_V[14]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dataReg_V[15]_INST_0 
       (.I0(evUSBStreamIn_V_V_0_payload_B[7]),
        .I1(evUSBStreamIn_V_V_0_payload_A[7]),
        .I2(evUSBStreamIn_V_V_0_sel),
        .O(dataReg_V[15]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dataReg_V[8]_INST_0 
       (.I0(evUSBStreamIn_V_V_0_payload_B[0]),
        .I1(evUSBStreamIn_V_V_0_payload_A[0]),
        .I2(evUSBStreamIn_V_V_0_sel),
        .O(dataReg_V[8]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dataReg_V[9]_INST_0 
       (.I0(evUSBStreamIn_V_V_0_payload_B[1]),
        .I1(evUSBStreamIn_V_V_0_payload_A[1]),
        .I2(evUSBStreamIn_V_V_0_sel),
        .O(dataReg_V[9]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    dataReg_V_ap_vld_INST_0
       (.I0(\evUSBStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .O(dataReg_V_ap_vld));
  LUT3 #(
    .INIT(8'h0D)) 
    \evUSBStreamIn_V_V_0_payload_A[7]_i_1 
       (.I0(\evUSBStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I1(evUSBStreamIn_V_V_TREADY),
        .I2(evUSBStreamIn_V_V_0_sel_wr),
        .O(\evUSBStreamIn_V_V_0_payload_A[7]_i_1_n_0 ));
  FDRE \evUSBStreamIn_V_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(\evUSBStreamIn_V_V_0_payload_A[7]_i_1_n_0 ),
        .D(evUSBStreamIn_V_V_TDATA[0]),
        .Q(evUSBStreamIn_V_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \evUSBStreamIn_V_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(\evUSBStreamIn_V_V_0_payload_A[7]_i_1_n_0 ),
        .D(evUSBStreamIn_V_V_TDATA[1]),
        .Q(evUSBStreamIn_V_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \evUSBStreamIn_V_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(\evUSBStreamIn_V_V_0_payload_A[7]_i_1_n_0 ),
        .D(evUSBStreamIn_V_V_TDATA[2]),
        .Q(evUSBStreamIn_V_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \evUSBStreamIn_V_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(\evUSBStreamIn_V_V_0_payload_A[7]_i_1_n_0 ),
        .D(evUSBStreamIn_V_V_TDATA[3]),
        .Q(evUSBStreamIn_V_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \evUSBStreamIn_V_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(\evUSBStreamIn_V_V_0_payload_A[7]_i_1_n_0 ),
        .D(evUSBStreamIn_V_V_TDATA[4]),
        .Q(evUSBStreamIn_V_V_0_payload_A[4]),
        .R(1'b0));
  FDRE \evUSBStreamIn_V_V_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(\evUSBStreamIn_V_V_0_payload_A[7]_i_1_n_0 ),
        .D(evUSBStreamIn_V_V_TDATA[5]),
        .Q(evUSBStreamIn_V_V_0_payload_A[5]),
        .R(1'b0));
  FDRE \evUSBStreamIn_V_V_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(\evUSBStreamIn_V_V_0_payload_A[7]_i_1_n_0 ),
        .D(evUSBStreamIn_V_V_TDATA[6]),
        .Q(evUSBStreamIn_V_V_0_payload_A[6]),
        .R(1'b0));
  FDRE \evUSBStreamIn_V_V_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(\evUSBStreamIn_V_V_0_payload_A[7]_i_1_n_0 ),
        .D(evUSBStreamIn_V_V_TDATA[7]),
        .Q(evUSBStreamIn_V_V_0_payload_A[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA2)) 
    \evUSBStreamIn_V_V_0_payload_B[7]_i_1 
       (.I0(evUSBStreamIn_V_V_0_sel_wr),
        .I1(\evUSBStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I2(evUSBStreamIn_V_V_TREADY),
        .O(evUSBStreamIn_V_V_0_load_B));
  FDRE \evUSBStreamIn_V_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(evUSBStreamIn_V_V_0_load_B),
        .D(evUSBStreamIn_V_V_TDATA[0]),
        .Q(evUSBStreamIn_V_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \evUSBStreamIn_V_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(evUSBStreamIn_V_V_0_load_B),
        .D(evUSBStreamIn_V_V_TDATA[1]),
        .Q(evUSBStreamIn_V_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \evUSBStreamIn_V_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(evUSBStreamIn_V_V_0_load_B),
        .D(evUSBStreamIn_V_V_TDATA[2]),
        .Q(evUSBStreamIn_V_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \evUSBStreamIn_V_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(evUSBStreamIn_V_V_0_load_B),
        .D(evUSBStreamIn_V_V_TDATA[3]),
        .Q(evUSBStreamIn_V_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \evUSBStreamIn_V_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(evUSBStreamIn_V_V_0_load_B),
        .D(evUSBStreamIn_V_V_TDATA[4]),
        .Q(evUSBStreamIn_V_V_0_payload_B[4]),
        .R(1'b0));
  FDRE \evUSBStreamIn_V_V_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(evUSBStreamIn_V_V_0_load_B),
        .D(evUSBStreamIn_V_V_TDATA[5]),
        .Q(evUSBStreamIn_V_V_0_payload_B[5]),
        .R(1'b0));
  FDRE \evUSBStreamIn_V_V_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(evUSBStreamIn_V_V_0_load_B),
        .D(evUSBStreamIn_V_V_TDATA[6]),
        .Q(evUSBStreamIn_V_V_0_payload_B[6]),
        .R(1'b0));
  FDRE \evUSBStreamIn_V_V_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(evUSBStreamIn_V_V_0_load_B),
        .D(evUSBStreamIn_V_V_TDATA[7]),
        .Q(evUSBStreamIn_V_V_0_payload_B[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    evUSBStreamIn_V_V_0_sel_rd_i_1
       (.I0(evUSBStreamIn_V_V_0_ack_out),
        .I1(\evUSBStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I2(evUSBStreamIn_V_V_0_sel),
        .O(evUSBStreamIn_V_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    evUSBStreamIn_V_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(evUSBStreamIn_V_V_0_sel_rd_i_1_n_0),
        .Q(evUSBStreamIn_V_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    evUSBStreamIn_V_V_0_sel_wr_i_1
       (.I0(evUSBStreamIn_V_V_TREADY),
        .I1(evUSBStreamIn_V_V_TVALID),
        .I2(evUSBStreamIn_V_V_0_sel_wr),
        .O(evUSBStreamIn_V_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    evUSBStreamIn_V_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(evUSBStreamIn_V_V_0_sel_wr_i_1_n_0),
        .Q(evUSBStreamIn_V_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA8A80888)) 
    \evUSBStreamIn_V_V_0_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(\evUSBStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I2(evUSBStreamIn_V_V_TREADY),
        .I3(evUSBStreamIn_V_V_0_ack_out),
        .I4(evUSBStreamIn_V_V_TVALID),
        .O(\evUSBStreamIn_V_V_0_state[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \evUSBStreamIn_V_V_0_state[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hBAFF)) 
    \evUSBStreamIn_V_V_0_state[1]_i_2 
       (.I0(evUSBStreamIn_V_V_0_ack_out),
        .I1(evUSBStreamIn_V_V_TVALID),
        .I2(evUSBStreamIn_V_V_TREADY),
        .I3(\evUSBStreamIn_V_V_0_state_reg_n_0_[0] ),
        .O(\evUSBStreamIn_V_V_0_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8A80800000000)) 
    \evUSBStreamIn_V_V_0_state[1]_i_3 
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(ap_enable_reg_pp0_iter0_reg),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_start),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(\evUSBStreamIn_V_V_0_state_reg_n_0_[0] ),
        .O(evUSBStreamIn_V_V_0_ack_out));
  FDRE #(
    .INIT(1'b0)) 
    \evUSBStreamIn_V_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\evUSBStreamIn_V_V_0_state[0]_i_1_n_0 ),
        .Q(\evUSBStreamIn_V_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \evUSBStreamIn_V_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\evUSBStreamIn_V_V_0_state[1]_i_2_n_0 ),
        .Q(evUSBStreamIn_V_V_TREADY),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFF1D000000000000)) 
    glLastTSReg_V_ap_vld_INST_0
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_start),
        .I3(\evUSBStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I4(ap_CS_fsm_pp0_stage1),
        .I5(ap_enable_reg_pp0_iter1),
        .O(nonMonTSDiffFlgReg_V_ap_vld));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[0] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [0]),
        .Q(\^glLastTSReg_V [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[10] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [10]),
        .Q(\^glLastTSReg_V [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[11] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [11]),
        .Q(\^glLastTSReg_V [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[12] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [12]),
        .Q(\^glLastTSReg_V [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[13] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [13]),
        .Q(\^glLastTSReg_V [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[14] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [14]),
        .Q(\^glLastTSReg_V [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[15] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [15]),
        .Q(\^glLastTSReg_V [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[16] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [16]),
        .Q(\^glLastTSReg_V [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[17] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [17]),
        .Q(\^glLastTSReg_V [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[18] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [18]),
        .Q(\^glLastTSReg_V [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[19] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [19]),
        .Q(\^glLastTSReg_V [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[1] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [1]),
        .Q(\^glLastTSReg_V [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[20] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [20]),
        .Q(\^glLastTSReg_V [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[21] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [21]),
        .Q(\^glLastTSReg_V [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[22] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [22]),
        .Q(\^glLastTSReg_V [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[23] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [23]),
        .Q(\^glLastTSReg_V [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[24] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [24]),
        .Q(\^glLastTSReg_V [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[25] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [25]),
        .Q(\^glLastTSReg_V [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[26] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [26]),
        .Q(\^glLastTSReg_V [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[27] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [27]),
        .Q(\^glLastTSReg_V [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[28] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [28]),
        .Q(\^glLastTSReg_V [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[29] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [29]),
        .Q(\^glLastTSReg_V [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[2] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [2]),
        .Q(\^glLastTSReg_V [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[30] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [30]),
        .Q(\^glLastTSReg_V [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[31] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [31]),
        .Q(\^glLastTSReg_V [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[32] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [32]),
        .Q(\^glLastTSReg_V [32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[33] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [33]),
        .Q(\^glLastTSReg_V [33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[34] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [34]),
        .Q(\^glLastTSReg_V [34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[35] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [35]),
        .Q(\^glLastTSReg_V [35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[36] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [36]),
        .Q(\^glLastTSReg_V [36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[37] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [37]),
        .Q(\^glLastTSReg_V [37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[38] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [38]),
        .Q(\^glLastTSReg_V [38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[39] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [39]),
        .Q(\^glLastTSReg_V [39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[3] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [3]),
        .Q(\^glLastTSReg_V [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[40] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [40]),
        .Q(\^glLastTSReg_V [40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[41] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [41]),
        .Q(\^glLastTSReg_V [41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[42] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [42]),
        .Q(\^glLastTSReg_V [42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[43] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [43]),
        .Q(\^glLastTSReg_V [43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[44] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [44]),
        .Q(\^glLastTSReg_V [44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[45] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [45]),
        .Q(\^glLastTSReg_V [45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[46] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [46]),
        .Q(\^glLastTSReg_V [46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[47] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [47]),
        .Q(\^glLastTSReg_V [47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[4] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [4]),
        .Q(\^glLastTSReg_V [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[5] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [5]),
        .Q(\^glLastTSReg_V [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[6] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [6]),
        .Q(\^glLastTSReg_V [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[7] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [7]),
        .Q(\^glLastTSReg_V [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[8] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [8]),
        .Q(\^glLastTSReg_V [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[9] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\^tsReg_V [9]),
        .Q(\^glLastTSReg_V [9]),
        .R(1'b0));
  CARRY4 \nonMonTSDiffFlgReg_V[0]_INST_0 
       (.CI(\nonMonTSDiffFlgReg_V[0]_INST_0_i_1_n_0 ),
        .CO({nonMonTSDiffFlgReg_V,\nonMonTSDiffFlgReg_V[0]_INST_0_n_1 ,\nonMonTSDiffFlgReg_V[0]_INST_0_n_2 ,\nonMonTSDiffFlgReg_V[0]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({\nonMonTSDiffFlgReg_V[0]_INST_0_i_2_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_3_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_4_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_5_n_0 }),
        .O(\NLW_nonMonTSDiffFlgReg_V[0]_INST_0_O_UNCONNECTED [3:0]),
        .S({\nonMonTSDiffFlgReg_V[0]_INST_0_i_6_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_7_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_8_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_9_n_0 }));
  CARRY4 \nonMonTSDiffFlgReg_V[0]_INST_0_i_1 
       (.CI(\nonMonTSDiffFlgReg_V[0]_INST_0_i_10_n_0 ),
        .CO({\nonMonTSDiffFlgReg_V[0]_INST_0_i_1_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_1_n_1 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_1_n_2 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\nonMonTSDiffFlgReg_V[0]_INST_0_i_11_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_12_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_13_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_14_n_0 }),
        .O(\NLW_nonMonTSDiffFlgReg_V[0]_INST_0_i_1_O_UNCONNECTED [3:0]),
        .S({\nonMonTSDiffFlgReg_V[0]_INST_0_i_15_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_16_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_17_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_18_n_0 }));
  CARRY4 \nonMonTSDiffFlgReg_V[0]_INST_0_i_10 
       (.CI(\nonMonTSDiffFlgReg_V[0]_INST_0_i_19_n_0 ),
        .CO({\nonMonTSDiffFlgReg_V[0]_INST_0_i_10_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_10_n_1 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_10_n_2 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\nonMonTSDiffFlgReg_V[0]_INST_0_i_20_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_21_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_22_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_23_n_0 }),
        .O(\NLW_nonMonTSDiffFlgReg_V[0]_INST_0_i_10_O_UNCONNECTED [3:0]),
        .S({\nonMonTSDiffFlgReg_V[0]_INST_0_i_24_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_25_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_26_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_27_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_11 
       (.I0(\^glLastTSReg_V [38]),
        .I1(\^tsReg_V [38]),
        .I2(\^tsReg_V [39]),
        .I3(\^glLastTSReg_V [39]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_12 
       (.I0(\^glLastTSReg_V [36]),
        .I1(\^tsReg_V [36]),
        .I2(\^tsReg_V [37]),
        .I3(\^glLastTSReg_V [37]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_13 
       (.I0(\^glLastTSReg_V [34]),
        .I1(\^tsReg_V [34]),
        .I2(\^tsReg_V [35]),
        .I3(\^glLastTSReg_V [35]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_14 
       (.I0(\^glLastTSReg_V [32]),
        .I1(\^tsReg_V [32]),
        .I2(\^tsReg_V [33]),
        .I3(\^glLastTSReg_V [33]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_15 
       (.I0(\^glLastTSReg_V [38]),
        .I1(\^tsReg_V [38]),
        .I2(\^glLastTSReg_V [39]),
        .I3(\^tsReg_V [39]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_16 
       (.I0(\^glLastTSReg_V [36]),
        .I1(\^tsReg_V [36]),
        .I2(\^glLastTSReg_V [37]),
        .I3(\^tsReg_V [37]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_17 
       (.I0(\^glLastTSReg_V [34]),
        .I1(\^tsReg_V [34]),
        .I2(\^glLastTSReg_V [35]),
        .I3(\^tsReg_V [35]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_18 
       (.I0(\^glLastTSReg_V [32]),
        .I1(\^tsReg_V [32]),
        .I2(\^glLastTSReg_V [33]),
        .I3(\^tsReg_V [33]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_18_n_0 ));
  CARRY4 \nonMonTSDiffFlgReg_V[0]_INST_0_i_19 
       (.CI(\nonMonTSDiffFlgReg_V[0]_INST_0_i_28_n_0 ),
        .CO({\nonMonTSDiffFlgReg_V[0]_INST_0_i_19_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_19_n_1 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_19_n_2 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_19_n_3 }),
        .CYINIT(1'b0),
        .DI({\nonMonTSDiffFlgReg_V[0]_INST_0_i_29_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_30_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_31_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_32_n_0 }),
        .O(\NLW_nonMonTSDiffFlgReg_V[0]_INST_0_i_19_O_UNCONNECTED [3:0]),
        .S({\nonMonTSDiffFlgReg_V[0]_INST_0_i_33_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_34_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_35_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_36_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_2 
       (.I0(\^glLastTSReg_V [46]),
        .I1(\^tsReg_V [46]),
        .I2(\^tsReg_V [47]),
        .I3(\^glLastTSReg_V [47]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_20 
       (.I0(\^glLastTSReg_V [30]),
        .I1(\^tsReg_V [30]),
        .I2(\^tsReg_V [31]),
        .I3(\^glLastTSReg_V [31]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_21 
       (.I0(\^glLastTSReg_V [28]),
        .I1(\^tsReg_V [28]),
        .I2(\^tsReg_V [29]),
        .I3(\^glLastTSReg_V [29]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_22 
       (.I0(\^glLastTSReg_V [26]),
        .I1(\^tsReg_V [26]),
        .I2(\^tsReg_V [27]),
        .I3(\^glLastTSReg_V [27]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_23 
       (.I0(\^glLastTSReg_V [24]),
        .I1(\^tsReg_V [24]),
        .I2(\^tsReg_V [25]),
        .I3(\^glLastTSReg_V [25]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_24 
       (.I0(\^glLastTSReg_V [30]),
        .I1(\^tsReg_V [30]),
        .I2(\^glLastTSReg_V [31]),
        .I3(\^tsReg_V [31]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_25 
       (.I0(\^glLastTSReg_V [28]),
        .I1(\^tsReg_V [28]),
        .I2(\^glLastTSReg_V [29]),
        .I3(\^tsReg_V [29]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_26 
       (.I0(\^glLastTSReg_V [26]),
        .I1(\^tsReg_V [26]),
        .I2(\^glLastTSReg_V [27]),
        .I3(\^tsReg_V [27]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_27 
       (.I0(\^glLastTSReg_V [24]),
        .I1(\^tsReg_V [24]),
        .I2(\^glLastTSReg_V [25]),
        .I3(\^tsReg_V [25]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_27_n_0 ));
  CARRY4 \nonMonTSDiffFlgReg_V[0]_INST_0_i_28 
       (.CI(\nonMonTSDiffFlgReg_V[0]_INST_0_i_37_n_0 ),
        .CO({\nonMonTSDiffFlgReg_V[0]_INST_0_i_28_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_28_n_1 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_28_n_2 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_28_n_3 }),
        .CYINIT(1'b0),
        .DI({\nonMonTSDiffFlgReg_V[0]_INST_0_i_38_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_39_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_40_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_41_n_0 }),
        .O(\NLW_nonMonTSDiffFlgReg_V[0]_INST_0_i_28_O_UNCONNECTED [3:0]),
        .S({\nonMonTSDiffFlgReg_V[0]_INST_0_i_42_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_43_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_44_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_45_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_29 
       (.I0(\^glLastTSReg_V [22]),
        .I1(\^tsReg_V [22]),
        .I2(\^tsReg_V [23]),
        .I3(\^glLastTSReg_V [23]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_3 
       (.I0(\^glLastTSReg_V [44]),
        .I1(\^tsReg_V [44]),
        .I2(\^tsReg_V [45]),
        .I3(\^glLastTSReg_V [45]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_30 
       (.I0(\^glLastTSReg_V [20]),
        .I1(\^tsReg_V [20]),
        .I2(\^tsReg_V [21]),
        .I3(\^glLastTSReg_V [21]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_31 
       (.I0(\^glLastTSReg_V [18]),
        .I1(\^tsReg_V [18]),
        .I2(\^tsReg_V [19]),
        .I3(\^glLastTSReg_V [19]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_32 
       (.I0(\^glLastTSReg_V [16]),
        .I1(\^tsReg_V [16]),
        .I2(\^tsReg_V [17]),
        .I3(\^glLastTSReg_V [17]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_33 
       (.I0(\^glLastTSReg_V [22]),
        .I1(\^tsReg_V [22]),
        .I2(\^glLastTSReg_V [23]),
        .I3(\^tsReg_V [23]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_34 
       (.I0(\^glLastTSReg_V [20]),
        .I1(\^tsReg_V [20]),
        .I2(\^glLastTSReg_V [21]),
        .I3(\^tsReg_V [21]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_35 
       (.I0(\^glLastTSReg_V [18]),
        .I1(\^tsReg_V [18]),
        .I2(\^glLastTSReg_V [19]),
        .I3(\^tsReg_V [19]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_36 
       (.I0(\^glLastTSReg_V [16]),
        .I1(\^tsReg_V [16]),
        .I2(\^glLastTSReg_V [17]),
        .I3(\^tsReg_V [17]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_36_n_0 ));
  CARRY4 \nonMonTSDiffFlgReg_V[0]_INST_0_i_37 
       (.CI(1'b0),
        .CO({\nonMonTSDiffFlgReg_V[0]_INST_0_i_37_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_37_n_1 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_37_n_2 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_37_n_3 }),
        .CYINIT(1'b0),
        .DI({\nonMonTSDiffFlgReg_V[0]_INST_0_i_46_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_47_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_48_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_49_n_0 }),
        .O(\NLW_nonMonTSDiffFlgReg_V[0]_INST_0_i_37_O_UNCONNECTED [3:0]),
        .S({\nonMonTSDiffFlgReg_V[0]_INST_0_i_50_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_51_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_52_n_0 ,\nonMonTSDiffFlgReg_V[0]_INST_0_i_53_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_38 
       (.I0(\^glLastTSReg_V [14]),
        .I1(\^tsReg_V [14]),
        .I2(\^tsReg_V [15]),
        .I3(\^glLastTSReg_V [15]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_39 
       (.I0(\^glLastTSReg_V [12]),
        .I1(\^tsReg_V [12]),
        .I2(\^tsReg_V [13]),
        .I3(\^glLastTSReg_V [13]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_39_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_4 
       (.I0(\^glLastTSReg_V [42]),
        .I1(\^tsReg_V [42]),
        .I2(\^tsReg_V [43]),
        .I3(\^glLastTSReg_V [43]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_40 
       (.I0(\^glLastTSReg_V [10]),
        .I1(\^tsReg_V [10]),
        .I2(\^tsReg_V [11]),
        .I3(\^glLastTSReg_V [11]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_41 
       (.I0(\^glLastTSReg_V [8]),
        .I1(\^tsReg_V [8]),
        .I2(\^tsReg_V [9]),
        .I3(\^glLastTSReg_V [9]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_42 
       (.I0(\^glLastTSReg_V [14]),
        .I1(\^tsReg_V [14]),
        .I2(\^glLastTSReg_V [15]),
        .I3(\^tsReg_V [15]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_43 
       (.I0(\^glLastTSReg_V [12]),
        .I1(\^tsReg_V [12]),
        .I2(\^glLastTSReg_V [13]),
        .I3(\^tsReg_V [13]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_44 
       (.I0(\^glLastTSReg_V [10]),
        .I1(\^tsReg_V [10]),
        .I2(\^glLastTSReg_V [11]),
        .I3(\^tsReg_V [11]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_45 
       (.I0(\^glLastTSReg_V [8]),
        .I1(\^tsReg_V [8]),
        .I2(\^glLastTSReg_V [9]),
        .I3(\^tsReg_V [9]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_46 
       (.I0(\^glLastTSReg_V [6]),
        .I1(\^tsReg_V [6]),
        .I2(\^tsReg_V [7]),
        .I3(\^glLastTSReg_V [7]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_47 
       (.I0(\^glLastTSReg_V [4]),
        .I1(\^tsReg_V [4]),
        .I2(\^tsReg_V [5]),
        .I3(\^glLastTSReg_V [5]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_48 
       (.I0(\^glLastTSReg_V [2]),
        .I1(\^tsReg_V [2]),
        .I2(\^tsReg_V [3]),
        .I3(\^glLastTSReg_V [3]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_48_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_49 
       (.I0(\^glLastTSReg_V [0]),
        .I1(\^tsReg_V [0]),
        .I2(\^tsReg_V [1]),
        .I3(\^glLastTSReg_V [1]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_49_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_5 
       (.I0(\^glLastTSReg_V [40]),
        .I1(\^tsReg_V [40]),
        .I2(\^tsReg_V [41]),
        .I3(\^glLastTSReg_V [41]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_50 
       (.I0(\^glLastTSReg_V [6]),
        .I1(\^tsReg_V [6]),
        .I2(\^glLastTSReg_V [7]),
        .I3(\^tsReg_V [7]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_50_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_51 
       (.I0(\^glLastTSReg_V [4]),
        .I1(\^tsReg_V [4]),
        .I2(\^glLastTSReg_V [5]),
        .I3(\^tsReg_V [5]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_52 
       (.I0(\^glLastTSReg_V [2]),
        .I1(\^tsReg_V [2]),
        .I2(\^glLastTSReg_V [3]),
        .I3(\^tsReg_V [3]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_53 
       (.I0(\^glLastTSReg_V [0]),
        .I1(\^tsReg_V [0]),
        .I2(\^glLastTSReg_V [1]),
        .I3(\^tsReg_V [1]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_6 
       (.I0(\^glLastTSReg_V [46]),
        .I1(\^tsReg_V [46]),
        .I2(\^glLastTSReg_V [47]),
        .I3(\^tsReg_V [47]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_7 
       (.I0(\^glLastTSReg_V [44]),
        .I1(\^tsReg_V [44]),
        .I2(\^glLastTSReg_V [45]),
        .I3(\^tsReg_V [45]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_8 
       (.I0(\^glLastTSReg_V [42]),
        .I1(\^tsReg_V [42]),
        .I2(\^glLastTSReg_V [43]),
        .I3(\^tsReg_V [43]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nonMonTSDiffFlgReg_V[0]_INST_0_i_9 
       (.I0(\^glLastTSReg_V [40]),
        .I1(\^tsReg_V [40]),
        .I2(\^glLastTSReg_V [41]),
        .I3(\^tsReg_V [41]),
        .O(\nonMonTSDiffFlgReg_V[0]_INST_0_i_9_n_0 ));
  FDRE \tmp_V_reg_229_reg[0] 
       (.C(ap_clk),
        .CE(ap_ready),
        .D(dataReg_V[8]),
        .Q(dataReg_V[0]),
        .R(1'b0));
  FDRE \tmp_V_reg_229_reg[1] 
       (.C(ap_clk),
        .CE(ap_ready),
        .D(dataReg_V[9]),
        .Q(dataReg_V[1]),
        .R(1'b0));
  FDRE \tmp_V_reg_229_reg[2] 
       (.C(ap_clk),
        .CE(ap_ready),
        .D(dataReg_V[10]),
        .Q(dataReg_V[2]),
        .R(1'b0));
  FDRE \tmp_V_reg_229_reg[3] 
       (.C(ap_clk),
        .CE(ap_ready),
        .D(dataReg_V[11]),
        .Q(dataReg_V[3]),
        .R(1'b0));
  FDRE \tmp_V_reg_229_reg[4] 
       (.C(ap_clk),
        .CE(ap_ready),
        .D(dataReg_V[12]),
        .Q(dataReg_V[4]),
        .R(1'b0));
  FDRE \tmp_V_reg_229_reg[5] 
       (.C(ap_clk),
        .CE(ap_ready),
        .D(dataReg_V[13]),
        .Q(dataReg_V[5]),
        .R(1'b0));
  FDRE \tmp_V_reg_229_reg[6] 
       (.C(ap_clk),
        .CE(ap_ready),
        .D(dataReg_V[14]),
        .Q(dataReg_V[6]),
        .R(1'b0));
  FDRE \tmp_V_reg_229_reg[7] 
       (.C(ap_clk),
        .CE(ap_ready),
        .D(dataReg_V[15]),
        .Q(dataReg_V[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h220A0000)) 
    \tsWrap_V[0]_i_1 
       (.I0(dataReg_V_ap_vld),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_2_fu_130_p2),
        .O(tsWrap_V0));
  LUT2 #(
    .INIT(4'h6)) 
    \tsWrap_V[0]_i_3 
       (.I0(dataReg_V[3]),
        .I1(tsWrap_V_reg[3]),
        .O(\tsWrap_V[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tsWrap_V[0]_i_4 
       (.I0(dataReg_V[2]),
        .I1(tsWrap_V_reg[2]),
        .O(\tsWrap_V[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tsWrap_V[0]_i_5 
       (.I0(dataReg_V[1]),
        .I1(tsWrap_V_reg[1]),
        .O(\tsWrap_V[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tsWrap_V[0]_i_6 
       (.I0(dataReg_V[0]),
        .I1(tsWrap_V_reg[0]),
        .O(\tsWrap_V[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tsWrap_V[4]_i_2 
       (.I0(dataReg_V[7]),
        .I1(tsWrap_V_reg[7]),
        .O(\tsWrap_V[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tsWrap_V[4]_i_3 
       (.I0(dataReg_V[6]),
        .I1(tsWrap_V_reg[6]),
        .O(\tsWrap_V[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tsWrap_V[4]_i_4 
       (.I0(dataReg_V[5]),
        .I1(tsWrap_V_reg[5]),
        .O(\tsWrap_V[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tsWrap_V[4]_i_5 
       (.I0(dataReg_V[4]),
        .I1(tsWrap_V_reg[4]),
        .O(\tsWrap_V[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \tsWrap_V[8]_i_2 
       (.I0(evUSBStreamIn_V_V_0_sel),
        .I1(evUSBStreamIn_V_V_0_payload_A[3]),
        .I2(evUSBStreamIn_V_V_0_payload_B[3]),
        .I3(tsWrap_V_reg[11]),
        .O(\tsWrap_V[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \tsWrap_V[8]_i_3 
       (.I0(evUSBStreamIn_V_V_0_sel),
        .I1(evUSBStreamIn_V_V_0_payload_A[2]),
        .I2(evUSBStreamIn_V_V_0_payload_B[2]),
        .I3(tsWrap_V_reg[10]),
        .O(\tsWrap_V[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \tsWrap_V[8]_i_4 
       (.I0(evUSBStreamIn_V_V_0_sel),
        .I1(evUSBStreamIn_V_V_0_payload_A[1]),
        .I2(evUSBStreamIn_V_V_0_payload_B[1]),
        .I3(tsWrap_V_reg[9]),
        .O(\tsWrap_V[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1BE4)) 
    \tsWrap_V[8]_i_5 
       (.I0(evUSBStreamIn_V_V_0_sel),
        .I1(evUSBStreamIn_V_V_0_payload_A[0]),
        .I2(evUSBStreamIn_V_V_0_payload_B[0]),
        .I3(tsWrap_V_reg[8]),
        .O(\tsWrap_V[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[0] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[0]_i_2_n_7 ),
        .Q(tsWrap_V_reg[0]),
        .R(1'b0));
  CARRY4 \tsWrap_V_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\tsWrap_V_reg[0]_i_2_n_0 ,\tsWrap_V_reg[0]_i_2_n_1 ,\tsWrap_V_reg[0]_i_2_n_2 ,\tsWrap_V_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(dataReg_V[3:0]),
        .O({\tsWrap_V_reg[0]_i_2_n_4 ,\tsWrap_V_reg[0]_i_2_n_5 ,\tsWrap_V_reg[0]_i_2_n_6 ,\tsWrap_V_reg[0]_i_2_n_7 }),
        .S({\tsWrap_V[0]_i_3_n_0 ,\tsWrap_V[0]_i_4_n_0 ,\tsWrap_V[0]_i_5_n_0 ,\tsWrap_V[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[10] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[8]_i_1_n_5 ),
        .Q(tsWrap_V_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[11] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[8]_i_1_n_4 ),
        .Q(tsWrap_V_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[12] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[12]_i_1_n_7 ),
        .Q(tsWrap_V_reg[12]),
        .R(1'b0));
  CARRY4 \tsWrap_V_reg[12]_i_1 
       (.CI(\tsWrap_V_reg[8]_i_1_n_0 ),
        .CO({\tsWrap_V_reg[12]_i_1_n_0 ,\tsWrap_V_reg[12]_i_1_n_1 ,\tsWrap_V_reg[12]_i_1_n_2 ,\tsWrap_V_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tsWrap_V_reg[12]_i_1_n_4 ,\tsWrap_V_reg[12]_i_1_n_5 ,\tsWrap_V_reg[12]_i_1_n_6 ,\tsWrap_V_reg[12]_i_1_n_7 }),
        .S(tsWrap_V_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[13] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[12]_i_1_n_6 ),
        .Q(tsWrap_V_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[14] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[12]_i_1_n_5 ),
        .Q(tsWrap_V_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[15] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[12]_i_1_n_4 ),
        .Q(tsWrap_V_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[16] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[16]_i_1_n_7 ),
        .Q(tsWrap_V_reg[16]),
        .R(1'b0));
  CARRY4 \tsWrap_V_reg[16]_i_1 
       (.CI(\tsWrap_V_reg[12]_i_1_n_0 ),
        .CO({\tsWrap_V_reg[16]_i_1_n_0 ,\tsWrap_V_reg[16]_i_1_n_1 ,\tsWrap_V_reg[16]_i_1_n_2 ,\tsWrap_V_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tsWrap_V_reg[16]_i_1_n_4 ,\tsWrap_V_reg[16]_i_1_n_5 ,\tsWrap_V_reg[16]_i_1_n_6 ,\tsWrap_V_reg[16]_i_1_n_7 }),
        .S(tsWrap_V_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[17] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[16]_i_1_n_6 ),
        .Q(tsWrap_V_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[18] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[16]_i_1_n_5 ),
        .Q(tsWrap_V_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[19] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[16]_i_1_n_4 ),
        .Q(tsWrap_V_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[1] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[0]_i_2_n_6 ),
        .Q(tsWrap_V_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[20] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[20]_i_1_n_7 ),
        .Q(tsWrap_V_reg[20]),
        .R(1'b0));
  CARRY4 \tsWrap_V_reg[20]_i_1 
       (.CI(\tsWrap_V_reg[16]_i_1_n_0 ),
        .CO({\tsWrap_V_reg[20]_i_1_n_0 ,\tsWrap_V_reg[20]_i_1_n_1 ,\tsWrap_V_reg[20]_i_1_n_2 ,\tsWrap_V_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tsWrap_V_reg[20]_i_1_n_4 ,\tsWrap_V_reg[20]_i_1_n_5 ,\tsWrap_V_reg[20]_i_1_n_6 ,\tsWrap_V_reg[20]_i_1_n_7 }),
        .S(tsWrap_V_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[21] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[20]_i_1_n_6 ),
        .Q(tsWrap_V_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[22] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[20]_i_1_n_5 ),
        .Q(tsWrap_V_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[23] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[20]_i_1_n_4 ),
        .Q(tsWrap_V_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[24] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[24]_i_1_n_7 ),
        .Q(tsWrap_V_reg[24]),
        .R(1'b0));
  CARRY4 \tsWrap_V_reg[24]_i_1 
       (.CI(\tsWrap_V_reg[20]_i_1_n_0 ),
        .CO({\tsWrap_V_reg[24]_i_1_n_0 ,\tsWrap_V_reg[24]_i_1_n_1 ,\tsWrap_V_reg[24]_i_1_n_2 ,\tsWrap_V_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tsWrap_V_reg[24]_i_1_n_4 ,\tsWrap_V_reg[24]_i_1_n_5 ,\tsWrap_V_reg[24]_i_1_n_6 ,\tsWrap_V_reg[24]_i_1_n_7 }),
        .S(tsWrap_V_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[25] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[24]_i_1_n_6 ),
        .Q(tsWrap_V_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[26] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[24]_i_1_n_5 ),
        .Q(tsWrap_V_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[27] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[24]_i_1_n_4 ),
        .Q(tsWrap_V_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[28] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[28]_i_1_n_7 ),
        .Q(tsWrap_V_reg[28]),
        .R(1'b0));
  CARRY4 \tsWrap_V_reg[28]_i_1 
       (.CI(\tsWrap_V_reg[24]_i_1_n_0 ),
        .CO({\tsWrap_V_reg[28]_i_1_n_0 ,\tsWrap_V_reg[28]_i_1_n_1 ,\tsWrap_V_reg[28]_i_1_n_2 ,\tsWrap_V_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tsWrap_V_reg[28]_i_1_n_4 ,\tsWrap_V_reg[28]_i_1_n_5 ,\tsWrap_V_reg[28]_i_1_n_6 ,\tsWrap_V_reg[28]_i_1_n_7 }),
        .S(tsWrap_V_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[29] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[28]_i_1_n_6 ),
        .Q(tsWrap_V_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[2] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[0]_i_2_n_5 ),
        .Q(tsWrap_V_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[30] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[28]_i_1_n_5 ),
        .Q(tsWrap_V_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[31] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[28]_i_1_n_4 ),
        .Q(tsWrap_V_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[32] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[32]_i_1_n_7 ),
        .Q(tsWrap_V_reg[32]),
        .R(1'b0));
  CARRY4 \tsWrap_V_reg[32]_i_1 
       (.CI(\tsWrap_V_reg[28]_i_1_n_0 ),
        .CO(\NLW_tsWrap_V_reg[32]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tsWrap_V_reg[32]_i_1_O_UNCONNECTED [3:1],\tsWrap_V_reg[32]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,tsWrap_V_reg[32]}));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[3] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[0]_i_2_n_4 ),
        .Q(tsWrap_V_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[4] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[4]_i_1_n_7 ),
        .Q(tsWrap_V_reg[4]),
        .R(1'b0));
  CARRY4 \tsWrap_V_reg[4]_i_1 
       (.CI(\tsWrap_V_reg[0]_i_2_n_0 ),
        .CO({\tsWrap_V_reg[4]_i_1_n_0 ,\tsWrap_V_reg[4]_i_1_n_1 ,\tsWrap_V_reg[4]_i_1_n_2 ,\tsWrap_V_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(dataReg_V[7:4]),
        .O({\tsWrap_V_reg[4]_i_1_n_4 ,\tsWrap_V_reg[4]_i_1_n_5 ,\tsWrap_V_reg[4]_i_1_n_6 ,\tsWrap_V_reg[4]_i_1_n_7 }),
        .S({\tsWrap_V[4]_i_2_n_0 ,\tsWrap_V[4]_i_3_n_0 ,\tsWrap_V[4]_i_4_n_0 ,\tsWrap_V[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[5] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[4]_i_1_n_6 ),
        .Q(tsWrap_V_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[6] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[4]_i_1_n_5 ),
        .Q(tsWrap_V_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[7] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[4]_i_1_n_4 ),
        .Q(tsWrap_V_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[8] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[8]_i_1_n_7 ),
        .Q(tsWrap_V_reg[8]),
        .R(1'b0));
  CARRY4 \tsWrap_V_reg[8]_i_1 
       (.CI(\tsWrap_V_reg[4]_i_1_n_0 ),
        .CO({\tsWrap_V_reg[8]_i_1_n_0 ,\tsWrap_V_reg[8]_i_1_n_1 ,\tsWrap_V_reg[8]_i_1_n_2 ,\tsWrap_V_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(tsWrap_V_reg[11:8]),
        .O({\tsWrap_V_reg[8]_i_1_n_4 ,\tsWrap_V_reg[8]_i_1_n_5 ,\tsWrap_V_reg[8]_i_1_n_6 ,\tsWrap_V_reg[8]_i_1_n_7 }),
        .S({\tsWrap_V[8]_i_2_n_0 ,\tsWrap_V[8]_i_3_n_0 ,\tsWrap_V[8]_i_4_n_0 ,\tsWrap_V[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tsWrap_V_reg[9] 
       (.C(ap_clk),
        .CE(tsWrap_V0),
        .D(\tsWrap_V_reg[8]_i_1_n_6 ),
        .Q(tsWrap_V_reg[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00088088)) 
    \ts_V[14]_i_1 
       (.I0(tmp_2_fu_130_p2),
        .I1(dataReg_V_ap_vld),
        .I2(evUSBStreamIn_V_V_0_sel),
        .I3(evUSBStreamIn_V_V_0_payload_A[7]),
        .I4(evUSBStreamIn_V_V_0_payload_B[7]),
        .O(\ts_V[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[15]_i_1 
       (.I0(tsWrap_V_reg[0]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[0]),
        .O(\ts_V[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[16]_i_1 
       (.I0(tsWrap_V_reg[1]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[1]),
        .O(\ts_V[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[17]_i_1 
       (.I0(tsWrap_V_reg[2]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[2]),
        .O(\ts_V[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[18]_i_1 
       (.I0(tsWrap_V_reg[3]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[3]),
        .O(\ts_V[18]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ts_V[18]_i_3 
       (.I0(tsWrap_V_reg[3]),
        .I1(dataReg_V[3]),
        .O(\ts_V[18]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ts_V[18]_i_4 
       (.I0(tsWrap_V_reg[2]),
        .I1(dataReg_V[2]),
        .O(\ts_V[18]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ts_V[18]_i_5 
       (.I0(tsWrap_V_reg[1]),
        .I1(dataReg_V[1]),
        .O(\ts_V[18]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ts_V[18]_i_6 
       (.I0(tsWrap_V_reg[0]),
        .I1(dataReg_V[0]),
        .O(\ts_V[18]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[19]_i_1 
       (.I0(tsWrap_V_reg[4]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[4]),
        .O(\ts_V[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[20]_i_1 
       (.I0(tsWrap_V_reg[5]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[5]),
        .O(\ts_V[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[21]_i_1 
       (.I0(tsWrap_V_reg[6]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[6]),
        .O(\ts_V[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[22]_i_1 
       (.I0(tsWrap_V_reg[7]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[7]),
        .O(\ts_V[22]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ts_V[22]_i_3 
       (.I0(tsWrap_V_reg[7]),
        .I1(dataReg_V[7]),
        .O(\ts_V[22]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ts_V[22]_i_4 
       (.I0(tsWrap_V_reg[6]),
        .I1(dataReg_V[6]),
        .O(\ts_V[22]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ts_V[22]_i_5 
       (.I0(tsWrap_V_reg[5]),
        .I1(dataReg_V[5]),
        .O(\ts_V[22]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ts_V[22]_i_6 
       (.I0(tsWrap_V_reg[4]),
        .I1(dataReg_V[4]),
        .O(\ts_V[22]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[23]_i_1 
       (.I0(tsWrap_V_reg[8]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[8]),
        .O(\ts_V[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[24]_i_1 
       (.I0(tsWrap_V_reg[9]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[9]),
        .O(\ts_V[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[25]_i_1 
       (.I0(tsWrap_V_reg[10]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[10]),
        .O(\ts_V[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[26]_i_1 
       (.I0(tsWrap_V_reg[11]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[11]),
        .O(\ts_V[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \ts_V[26]_i_3 
       (.I0(tsWrap_V_reg[11]),
        .I1(evUSBStreamIn_V_V_0_sel),
        .I2(evUSBStreamIn_V_V_0_payload_A[3]),
        .I3(evUSBStreamIn_V_V_0_payload_B[3]),
        .O(\ts_V[26]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \ts_V[26]_i_4 
       (.I0(tsWrap_V_reg[10]),
        .I1(evUSBStreamIn_V_V_0_sel),
        .I2(evUSBStreamIn_V_V_0_payload_A[2]),
        .I3(evUSBStreamIn_V_V_0_payload_B[2]),
        .O(\ts_V[26]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \ts_V[26]_i_5 
       (.I0(tsWrap_V_reg[9]),
        .I1(evUSBStreamIn_V_V_0_sel),
        .I2(evUSBStreamIn_V_V_0_payload_A[1]),
        .I3(evUSBStreamIn_V_V_0_payload_B[1]),
        .O(\ts_V[26]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \ts_V[26]_i_6 
       (.I0(tsWrap_V_reg[8]),
        .I1(evUSBStreamIn_V_V_0_sel),
        .I2(evUSBStreamIn_V_V_0_payload_A[0]),
        .I3(evUSBStreamIn_V_V_0_payload_B[0]),
        .O(\ts_V[26]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[27]_i_1 
       (.I0(tsWrap_V_reg[12]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[12]),
        .O(\ts_V[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[28]_i_1 
       (.I0(tsWrap_V_reg[13]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[13]),
        .O(\ts_V[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[29]_i_1 
       (.I0(tsWrap_V_reg[14]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[14]),
        .O(\ts_V[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[30]_i_1 
       (.I0(tsWrap_V_reg[15]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[15]),
        .O(\ts_V[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[31]_i_1 
       (.I0(tsWrap_V_reg[16]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[16]),
        .O(\ts_V[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[32]_i_1 
       (.I0(tsWrap_V_reg[17]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[17]),
        .O(\ts_V[32]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[33]_i_1 
       (.I0(tsWrap_V_reg[18]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[18]),
        .O(\ts_V[33]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[34]_i_1 
       (.I0(tsWrap_V_reg[19]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[19]),
        .O(\ts_V[34]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[35]_i_1 
       (.I0(tsWrap_V_reg[20]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[20]),
        .O(\ts_V[35]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[36]_i_1 
       (.I0(tsWrap_V_reg[21]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[21]),
        .O(\ts_V[36]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[37]_i_1 
       (.I0(tsWrap_V_reg[22]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[22]),
        .O(\ts_V[37]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[38]_i_1 
       (.I0(tsWrap_V_reg[23]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[23]),
        .O(\ts_V[38]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[39]_i_1 
       (.I0(tsWrap_V_reg[24]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[24]),
        .O(\ts_V[39]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[40]_i_1 
       (.I0(tsWrap_V_reg[25]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[25]),
        .O(\ts_V[40]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[41]_i_1 
       (.I0(tsWrap_V_reg[26]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[26]),
        .O(\ts_V[41]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[42]_i_1 
       (.I0(tsWrap_V_reg[27]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[27]),
        .O(\ts_V[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[43]_i_1 
       (.I0(tsWrap_V_reg[28]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[28]),
        .O(\ts_V[43]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[44]_i_1 
       (.I0(tsWrap_V_reg[29]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[29]),
        .O(\ts_V[44]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[45]_i_1 
       (.I0(tsWrap_V_reg[30]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[30]),
        .O(\ts_V[45]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[46]_i_1 
       (.I0(tsWrap_V_reg[31]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[31]),
        .O(\ts_V[46]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA8A8AA88)) 
    \ts_V[47]_i_1 
       (.I0(dataReg_V_ap_vld),
        .I1(tmp_2_fu_130_p2),
        .I2(evUSBStreamIn_V_V_0_payload_B[7]),
        .I3(evUSBStreamIn_V_V_0_payload_A[7]),
        .I4(evUSBStreamIn_V_V_0_sel),
        .O(ts_V));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ts_V[47]_i_2 
       (.I0(tsWrap_V_reg[32]),
        .I1(evUSBStreamIn_V_V_0_payload_B[7]),
        .I2(evUSBStreamIn_V_V_0_payload_A[7]),
        .I3(evUSBStreamIn_V_V_0_sel),
        .I4(tmp_8_fu_151_p2[32]),
        .O(\ts_V[47]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC000C000A0A00000)) 
    \ts_V[47]_i_3 
       (.I0(evUSBStreamIn_V_V_0_payload_A[5]),
        .I1(evUSBStreamIn_V_V_0_payload_B[5]),
        .I2(dataReg_V[12]),
        .I3(evUSBStreamIn_V_V_0_payload_B[6]),
        .I4(evUSBStreamIn_V_V_0_payload_A[6]),
        .I5(evUSBStreamIn_V_V_0_sel),
        .O(tmp_2_fu_130_p2));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[0] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(dataReg_V[0]),
        .Q(\^tsReg_V [0]),
        .R(\ts_V[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[10] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(dataReg_V[10]),
        .Q(\^tsReg_V [10]),
        .R(\ts_V[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[11] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(dataReg_V[11]),
        .Q(\^tsReg_V [11]),
        .R(\ts_V[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[12] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(dataReg_V[12]),
        .Q(\^tsReg_V [12]),
        .R(\ts_V[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[13] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(dataReg_V[13]),
        .Q(\^tsReg_V [13]),
        .R(\ts_V[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[14] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(dataReg_V[14]),
        .Q(\^tsReg_V [14]),
        .R(\ts_V[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[15] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[15]_i_1_n_0 ),
        .Q(\^tsReg_V [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[16] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[16]_i_1_n_0 ),
        .Q(\^tsReg_V [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[17] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[17]_i_1_n_0 ),
        .Q(\^tsReg_V [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[18] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[18]_i_1_n_0 ),
        .Q(\^tsReg_V [18]),
        .R(1'b0));
  CARRY4 \ts_V_reg[18]_i_2 
       (.CI(1'b0),
        .CO({\ts_V_reg[18]_i_2_n_0 ,\ts_V_reg[18]_i_2_n_1 ,\ts_V_reg[18]_i_2_n_2 ,\ts_V_reg[18]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(tsWrap_V_reg[3:0]),
        .O(tmp_8_fu_151_p2[3:0]),
        .S({\ts_V[18]_i_3_n_0 ,\ts_V[18]_i_4_n_0 ,\ts_V[18]_i_5_n_0 ,\ts_V[18]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[19] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[19]_i_1_n_0 ),
        .Q(\^tsReg_V [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[1] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(dataReg_V[1]),
        .Q(\^tsReg_V [1]),
        .R(\ts_V[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[20] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[20]_i_1_n_0 ),
        .Q(\^tsReg_V [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[21] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[21]_i_1_n_0 ),
        .Q(\^tsReg_V [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[22] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[22]_i_1_n_0 ),
        .Q(\^tsReg_V [22]),
        .R(1'b0));
  CARRY4 \ts_V_reg[22]_i_2 
       (.CI(\ts_V_reg[18]_i_2_n_0 ),
        .CO({\ts_V_reg[22]_i_2_n_0 ,\ts_V_reg[22]_i_2_n_1 ,\ts_V_reg[22]_i_2_n_2 ,\ts_V_reg[22]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(tsWrap_V_reg[7:4]),
        .O(tmp_8_fu_151_p2[7:4]),
        .S({\ts_V[22]_i_3_n_0 ,\ts_V[22]_i_4_n_0 ,\ts_V[22]_i_5_n_0 ,\ts_V[22]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[23] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[23]_i_1_n_0 ),
        .Q(\^tsReg_V [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[24] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[24]_i_1_n_0 ),
        .Q(\^tsReg_V [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[25] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[25]_i_1_n_0 ),
        .Q(\^tsReg_V [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[26] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[26]_i_1_n_0 ),
        .Q(\^tsReg_V [26]),
        .R(1'b0));
  CARRY4 \ts_V_reg[26]_i_2 
       (.CI(\ts_V_reg[22]_i_2_n_0 ),
        .CO({\ts_V_reg[26]_i_2_n_0 ,\ts_V_reg[26]_i_2_n_1 ,\ts_V_reg[26]_i_2_n_2 ,\ts_V_reg[26]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(tsWrap_V_reg[11:8]),
        .O(tmp_8_fu_151_p2[11:8]),
        .S({\ts_V[26]_i_3_n_0 ,\ts_V[26]_i_4_n_0 ,\ts_V[26]_i_5_n_0 ,\ts_V[26]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[27] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[27]_i_1_n_0 ),
        .Q(\^tsReg_V [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[28] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[28]_i_1_n_0 ),
        .Q(\^tsReg_V [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[29] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[29]_i_1_n_0 ),
        .Q(\^tsReg_V [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[2] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(dataReg_V[2]),
        .Q(\^tsReg_V [2]),
        .R(\ts_V[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[30] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[30]_i_1_n_0 ),
        .Q(\^tsReg_V [30]),
        .R(1'b0));
  CARRY4 \ts_V_reg[30]_i_2 
       (.CI(\ts_V_reg[26]_i_2_n_0 ),
        .CO({\ts_V_reg[30]_i_2_n_0 ,\ts_V_reg[30]_i_2_n_1 ,\ts_V_reg[30]_i_2_n_2 ,\ts_V_reg[30]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_8_fu_151_p2[15:12]),
        .S(tsWrap_V_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[31] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[31]_i_1_n_0 ),
        .Q(\^tsReg_V [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[32] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[32]_i_1_n_0 ),
        .Q(\^tsReg_V [32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[33] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[33]_i_1_n_0 ),
        .Q(\^tsReg_V [33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[34] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[34]_i_1_n_0 ),
        .Q(\^tsReg_V [34]),
        .R(1'b0));
  CARRY4 \ts_V_reg[34]_i_2 
       (.CI(\ts_V_reg[30]_i_2_n_0 ),
        .CO({\ts_V_reg[34]_i_2_n_0 ,\ts_V_reg[34]_i_2_n_1 ,\ts_V_reg[34]_i_2_n_2 ,\ts_V_reg[34]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_8_fu_151_p2[19:16]),
        .S(tsWrap_V_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[35] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[35]_i_1_n_0 ),
        .Q(\^tsReg_V [35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[36] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[36]_i_1_n_0 ),
        .Q(\^tsReg_V [36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[37] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[37]_i_1_n_0 ),
        .Q(\^tsReg_V [37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[38] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[38]_i_1_n_0 ),
        .Q(\^tsReg_V [38]),
        .R(1'b0));
  CARRY4 \ts_V_reg[38]_i_2 
       (.CI(\ts_V_reg[34]_i_2_n_0 ),
        .CO({\ts_V_reg[38]_i_2_n_0 ,\ts_V_reg[38]_i_2_n_1 ,\ts_V_reg[38]_i_2_n_2 ,\ts_V_reg[38]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_8_fu_151_p2[23:20]),
        .S(tsWrap_V_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[39] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[39]_i_1_n_0 ),
        .Q(\^tsReg_V [39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[3] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(dataReg_V[3]),
        .Q(\^tsReg_V [3]),
        .R(\ts_V[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[40] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[40]_i_1_n_0 ),
        .Q(\^tsReg_V [40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[41] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[41]_i_1_n_0 ),
        .Q(\^tsReg_V [41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[42] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[42]_i_1_n_0 ),
        .Q(\^tsReg_V [42]),
        .R(1'b0));
  CARRY4 \ts_V_reg[42]_i_2 
       (.CI(\ts_V_reg[38]_i_2_n_0 ),
        .CO({\ts_V_reg[42]_i_2_n_0 ,\ts_V_reg[42]_i_2_n_1 ,\ts_V_reg[42]_i_2_n_2 ,\ts_V_reg[42]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_8_fu_151_p2[27:24]),
        .S(tsWrap_V_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[43] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[43]_i_1_n_0 ),
        .Q(\^tsReg_V [43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[44] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[44]_i_1_n_0 ),
        .Q(\^tsReg_V [44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[45] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[45]_i_1_n_0 ),
        .Q(\^tsReg_V [45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[46] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[46]_i_1_n_0 ),
        .Q(\^tsReg_V [46]),
        .R(1'b0));
  CARRY4 \ts_V_reg[46]_i_2 
       (.CI(\ts_V_reg[42]_i_2_n_0 ),
        .CO({\ts_V_reg[46]_i_2_n_0 ,\ts_V_reg[46]_i_2_n_1 ,\ts_V_reg[46]_i_2_n_2 ,\ts_V_reg[46]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_8_fu_151_p2[31:28]),
        .S(tsWrap_V_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[47] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(\ts_V[47]_i_2_n_0 ),
        .Q(\^tsReg_V [47]),
        .R(1'b0));
  CARRY4 \ts_V_reg[47]_i_4 
       (.CI(\ts_V_reg[46]_i_2_n_0 ),
        .CO(\NLW_ts_V_reg[47]_i_4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_ts_V_reg[47]_i_4_O_UNCONNECTED [3:1],tmp_8_fu_151_p2[32]}),
        .S({1'b0,1'b0,1'b0,tsWrap_V_reg[32]}));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[4] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(dataReg_V[4]),
        .Q(\^tsReg_V [4]),
        .R(\ts_V[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[5] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(dataReg_V[5]),
        .Q(\^tsReg_V [5]),
        .R(\ts_V[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[6] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(dataReg_V[6]),
        .Q(\^tsReg_V [6]),
        .R(\ts_V[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[7] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(dataReg_V[7]),
        .Q(\^tsReg_V [7]),
        .R(\ts_V[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[8] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(dataReg_V[8]),
        .Q(\^tsReg_V [8]),
        .R(\ts_V[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ts_V_reg[9] 
       (.C(ap_clk),
        .CE(ts_V),
        .D(dataReg_V[9]),
        .Q(\^tsReg_V [9]),
        .R(\ts_V[14]_i_1_n_0 ));
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
