// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Jul 20 21:21:07 2020
// Host        : mbp-win10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_XYTSStreamToRawStream_0_0/brd_XYTSStreamToRawStream_0_0_sim_netlist.v
// Design      : brd_XYTSStreamToRawStream_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "brd_XYTSStreamToRawStream_0_0,XYTSStreamToRawStream,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "XYTSStreamToRawStream,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module brd_XYTSStreamToRawStream_0_0
   (tsReg_V_ap_vld,
    glLastTSReg_V_ap_vld,
    yReg_V_ap_vld,
    glLastYReg_V_ap_vld,
    tsDiffFlgReg_V_ap_vld,
    yDiffFlgReg_V_ap_vld,
    nonMonTSDiffFlgReg_V_ap_vld,
    tsWrappedVal_V_ap_vld,
    ap_clk,
    ap_rst_n,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    streamOut_V_V_TVALID,
    streamOut_V_V_TREADY,
    streamOut_V_V_TDATA,
    xStreamIn_V_V_TVALID,
    xStreamIn_V_V_TREADY,
    xStreamIn_V_V_TDATA,
    yStreamIn_V_V_TVALID,
    yStreamIn_V_V_TREADY,
    yStreamIn_V_V_TDATA,
    tsStreamIn_V_V_TVALID,
    tsStreamIn_V_V_TREADY,
    tsStreamIn_V_V_TDATA,
    polStreamIn_V_V_TVALID,
    polStreamIn_V_V_TREADY,
    polStreamIn_V_V_TDATA,
    custDataStreamIn_V_V_TVALID,
    custDataStreamIn_V_V_TREADY,
    custDataStreamIn_V_V_TDATA,
    tsReg_V,
    glLastTSReg_V,
    yReg_V,
    glLastYReg_V,
    tsDiffFlgReg_V,
    yDiffFlgReg_V,
    nonMonTSDiffFlgReg_V,
    tsWrappedVal_V);
  output tsReg_V_ap_vld;
  output glLastTSReg_V_ap_vld;
  output yReg_V_ap_vld;
  output glLastYReg_V_ap_vld;
  output tsDiffFlgReg_V_ap_vld;
  output yDiffFlgReg_V_ap_vld;
  output nonMonTSDiffFlgReg_V_ap_vld;
  output tsWrappedVal_V_ap_vld;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF streamOut_V_V:xStreamIn_V_V:yStreamIn_V_V:tsStreamIn_V_V:polStreamIn_V_V:custDataStreamIn_V_V, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) input ap_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) input ap_rst_n;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) input ap_start;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 streamOut_V_V TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME streamOut_V_V, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 16}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) output streamOut_V_V_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 streamOut_V_V TREADY" *) input streamOut_V_V_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 streamOut_V_V TDATA" *) output [15:0]streamOut_V_V_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 xStreamIn_V_V TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME xStreamIn_V_V, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 16}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) input xStreamIn_V_V_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 xStreamIn_V_V TREADY" *) output xStreamIn_V_V_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 xStreamIn_V_V TDATA" *) input [15:0]xStreamIn_V_V_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 yStreamIn_V_V TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME yStreamIn_V_V, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 16}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) input yStreamIn_V_V_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 yStreamIn_V_V TREADY" *) output yStreamIn_V_V_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 yStreamIn_V_V TDATA" *) input [15:0]yStreamIn_V_V_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 tsStreamIn_V_V TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME tsStreamIn_V_V, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 64}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) input tsStreamIn_V_V_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 tsStreamIn_V_V TREADY" *) output tsStreamIn_V_V_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 tsStreamIn_V_V TDATA" *) input [63:0]tsStreamIn_V_V_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 polStreamIn_V_V TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME polStreamIn_V_V, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) input polStreamIn_V_V_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 polStreamIn_V_V TREADY" *) output polStreamIn_V_V_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 polStreamIn_V_V TDATA" *) input [7:0]polStreamIn_V_V_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 custDataStreamIn_V_V TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME custDataStreamIn_V_V, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 17} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 24}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) input custDataStreamIn_V_V_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 custDataStreamIn_V_V TREADY" *) output custDataStreamIn_V_V_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 custDataStreamIn_V_V TDATA" *) input [15:0]custDataStreamIn_V_V_TDATA;
  (* x_interface_info = "xilinx.com:signal:data:1.0 tsReg_V DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME tsReg_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [63:0]tsReg_V;
  (* x_interface_info = "xilinx.com:signal:data:1.0 glLastTSReg_V DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME glLastTSReg_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [63:0]glLastTSReg_V;
  (* x_interface_info = "xilinx.com:signal:data:1.0 yReg_V DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME yReg_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [15:0]yReg_V;
  (* x_interface_info = "xilinx.com:signal:data:1.0 glLastYReg_V DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME glLastYReg_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [15:0]glLastYReg_V;
  (* x_interface_info = "xilinx.com:signal:data:1.0 tsDiffFlgReg_V DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME tsDiffFlgReg_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [0:0]tsDiffFlgReg_V;
  (* x_interface_info = "xilinx.com:signal:data:1.0 yDiffFlgReg_V DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME yDiffFlgReg_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [0:0]yDiffFlgReg_V;
  (* x_interface_info = "xilinx.com:signal:data:1.0 nonMonTSDiffFlgReg_V DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME nonMonTSDiffFlgReg_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [0:0]nonMonTSDiffFlgReg_V;
  (* x_interface_info = "xilinx.com:signal:data:1.0 tsWrappedVal_V DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME tsWrappedVal_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [11:0]tsWrappedVal_V;

  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_start;
  wire [15:0]custDataStreamIn_V_V_TDATA;
  wire custDataStreamIn_V_V_TREADY;
  wire custDataStreamIn_V_V_TVALID;
  wire [63:0]glLastTSReg_V;
  wire glLastTSReg_V_ap_vld;
  wire [15:0]glLastYReg_V;
  wire glLastYReg_V_ap_vld;
  wire [0:0]nonMonTSDiffFlgReg_V;
  wire nonMonTSDiffFlgReg_V_ap_vld;
  wire [7:0]polStreamIn_V_V_TDATA;
  wire polStreamIn_V_V_TREADY;
  wire polStreamIn_V_V_TVALID;
  wire [15:0]streamOut_V_V_TDATA;
  wire streamOut_V_V_TREADY;
  wire streamOut_V_V_TVALID;
  wire [0:0]tsDiffFlgReg_V;
  wire tsDiffFlgReg_V_ap_vld;
  wire [63:0]tsReg_V;
  wire tsReg_V_ap_vld;
  wire [63:0]tsStreamIn_V_V_TDATA;
  wire tsStreamIn_V_V_TREADY;
  wire tsStreamIn_V_V_TVALID;
  wire [11:0]tsWrappedVal_V;
  wire tsWrappedVal_V_ap_vld;
  wire [15:0]xStreamIn_V_V_TDATA;
  wire xStreamIn_V_V_TREADY;
  wire xStreamIn_V_V_TVALID;
  wire [0:0]yDiffFlgReg_V;
  wire yDiffFlgReg_V_ap_vld;
  wire [15:0]yReg_V;
  wire yReg_V_ap_vld;
  wire [15:0]yStreamIn_V_V_TDATA;
  wire yStreamIn_V_V_TREADY;
  wire yStreamIn_V_V_TVALID;

  brd_XYTSStreamToRawStream_0_0_XYTSStreamToRawStream U0
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .custDataStreamIn_V_V_TDATA(custDataStreamIn_V_V_TDATA),
        .custDataStreamIn_V_V_TREADY(custDataStreamIn_V_V_TREADY),
        .custDataStreamIn_V_V_TVALID(custDataStreamIn_V_V_TVALID),
        .glLastTSReg_V(glLastTSReg_V),
        .glLastTSReg_V_ap_vld(glLastTSReg_V_ap_vld),
        .glLastYReg_V(glLastYReg_V),
        .glLastYReg_V_ap_vld(glLastYReg_V_ap_vld),
        .nonMonTSDiffFlgReg_V(nonMonTSDiffFlgReg_V),
        .nonMonTSDiffFlgReg_V_ap_vld(nonMonTSDiffFlgReg_V_ap_vld),
        .polStreamIn_V_V_TDATA(polStreamIn_V_V_TDATA),
        .polStreamIn_V_V_TREADY(polStreamIn_V_V_TREADY),
        .polStreamIn_V_V_TVALID(polStreamIn_V_V_TVALID),
        .streamOut_V_V_TDATA(streamOut_V_V_TDATA),
        .streamOut_V_V_TREADY(streamOut_V_V_TREADY),
        .streamOut_V_V_TVALID(streamOut_V_V_TVALID),
        .tsDiffFlgReg_V(tsDiffFlgReg_V),
        .tsDiffFlgReg_V_ap_vld(tsDiffFlgReg_V_ap_vld),
        .tsReg_V(tsReg_V),
        .tsReg_V_ap_vld(tsReg_V_ap_vld),
        .tsStreamIn_V_V_TDATA(tsStreamIn_V_V_TDATA),
        .tsStreamIn_V_V_TREADY(tsStreamIn_V_V_TREADY),
        .tsStreamIn_V_V_TVALID(tsStreamIn_V_V_TVALID),
        .tsWrappedVal_V(tsWrappedVal_V),
        .tsWrappedVal_V_ap_vld(tsWrappedVal_V_ap_vld),
        .xStreamIn_V_V_TDATA(xStreamIn_V_V_TDATA),
        .xStreamIn_V_V_TREADY(xStreamIn_V_V_TREADY),
        .xStreamIn_V_V_TVALID(xStreamIn_V_V_TVALID),
        .yDiffFlgReg_V(yDiffFlgReg_V),
        .yDiffFlgReg_V_ap_vld(yDiffFlgReg_V_ap_vld),
        .yReg_V(yReg_V),
        .yReg_V_ap_vld(yReg_V_ap_vld),
        .yStreamIn_V_V_TDATA(yStreamIn_V_V_TDATA),
        .yStreamIn_V_V_TREADY(yStreamIn_V_V_TREADY),
        .yStreamIn_V_V_TVALID(yStreamIn_V_V_TVALID));
endmodule

(* ORIG_REF_NAME = "XYTSStreamToRawStream" *) 
module brd_XYTSStreamToRawStream_0_0_XYTSStreamToRawStream
   (ap_clk,
    ap_rst_n,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    streamOut_V_V_TREADY,
    xStreamIn_V_V_TDATA,
    xStreamIn_V_V_TVALID,
    xStreamIn_V_V_TREADY,
    yStreamIn_V_V_TDATA,
    yStreamIn_V_V_TVALID,
    yStreamIn_V_V_TREADY,
    tsStreamIn_V_V_TDATA,
    tsStreamIn_V_V_TVALID,
    tsStreamIn_V_V_TREADY,
    polStreamIn_V_V_TDATA,
    polStreamIn_V_V_TVALID,
    polStreamIn_V_V_TREADY,
    custDataStreamIn_V_V_TDATA,
    custDataStreamIn_V_V_TVALID,
    custDataStreamIn_V_V_TREADY,
    streamOut_V_V_TDATA,
    streamOut_V_V_TVALID,
    tsReg_V,
    tsReg_V_ap_vld,
    glLastTSReg_V,
    glLastTSReg_V_ap_vld,
    yReg_V,
    yReg_V_ap_vld,
    glLastYReg_V,
    glLastYReg_V_ap_vld,
    tsDiffFlgReg_V,
    tsDiffFlgReg_V_ap_vld,
    yDiffFlgReg_V,
    yDiffFlgReg_V_ap_vld,
    nonMonTSDiffFlgReg_V,
    nonMonTSDiffFlgReg_V_ap_vld,
    tsWrappedVal_V,
    tsWrappedVal_V_ap_vld);
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input streamOut_V_V_TREADY;
  input [15:0]xStreamIn_V_V_TDATA;
  input xStreamIn_V_V_TVALID;
  output xStreamIn_V_V_TREADY;
  input [15:0]yStreamIn_V_V_TDATA;
  input yStreamIn_V_V_TVALID;
  output yStreamIn_V_V_TREADY;
  input [63:0]tsStreamIn_V_V_TDATA;
  input tsStreamIn_V_V_TVALID;
  output tsStreamIn_V_V_TREADY;
  input [7:0]polStreamIn_V_V_TDATA;
  input polStreamIn_V_V_TVALID;
  output polStreamIn_V_V_TREADY;
  input [15:0]custDataStreamIn_V_V_TDATA;
  input custDataStreamIn_V_V_TVALID;
  output custDataStreamIn_V_V_TREADY;
  output [15:0]streamOut_V_V_TDATA;
  output streamOut_V_V_TVALID;
  output [63:0]tsReg_V;
  output tsReg_V_ap_vld;
  output [63:0]glLastTSReg_V;
  output glLastTSReg_V_ap_vld;
  output [15:0]yReg_V;
  output yReg_V_ap_vld;
  output [15:0]glLastYReg_V;
  output glLastYReg_V_ap_vld;
  output [0:0]tsDiffFlgReg_V;
  output tsDiffFlgReg_V_ap_vld;
  output [0:0]yDiffFlgReg_V;
  output yDiffFlgReg_V_ap_vld;
  output [0:0]nonMonTSDiffFlgReg_V;
  output nonMonTSDiffFlgReg_V_ap_vld;
  output [11:0]tsWrappedVal_V;
  output tsWrappedVal_V_ap_vld;

  wire \ap_CS_fsm[0]_i_2_n_0 ;
  wire \ap_CS_fsm[1]_i_2_n_0 ;
  wire \ap_CS_fsm[3]_i_2_n_0 ;
  wire \ap_CS_fsm[3]_i_3_n_0 ;
  wire ap_CS_fsm_pp0_stage1;
  wire ap_CS_fsm_pp0_stage2;
  wire ap_CS_fsm_pp0_stage3;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire [3:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_done;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter1_i_1_n_0;
  wire ap_enable_reg_pp0_iter1_i_2_n_0;
  wire ap_enable_reg_pp0_iter1_reg_n_0;
  wire ap_idle;
  wire ap_phi_reg_pp0_iter0_p_0140_1_reg_2121;
  wire \ap_phi_reg_pp0_iter0_p_0140_1_reg_212[11]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0140_1_reg_212[11]_i_3_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0140_1_reg_212[11]_i_4_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0140_1_reg_212[11]_i_5_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0140_1_reg_212[11]_i_6_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0140_1_reg_212[3]_i_2_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0140_1_reg_212[3]_i_3_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0140_1_reg_212[3]_i_4_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0140_1_reg_212[3]_i_5_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0140_1_reg_212[7]_i_2_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0140_1_reg_212[7]_i_3_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0140_1_reg_212[7]_i_4_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0140_1_reg_212[7]_i_5_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[11]_i_2_n_1 ;
  wire \ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[11]_i_2_n_2 ;
  wire \ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[11]_i_2_n_3 ;
  wire \ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[3]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[3]_i_1_n_1 ;
  wire \ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[3]_i_1_n_2 ;
  wire \ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[3]_i_1_n_3 ;
  wire \ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[7]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[7]_i_1_n_1 ;
  wire \ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[7]_i_1_n_2 ;
  wire \ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[7]_i_1_n_3 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_10_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_11_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_12_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_13_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_15_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_16_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_17_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_18_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_19_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_20_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_21_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_22_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_24_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_25_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_26_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_27_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_28_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_29_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_30_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_31_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_33_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_34_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_35_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_36_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_37_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_38_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_39_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_40_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_42_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_43_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_44_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_45_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_46_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_47_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_48_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_49_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_51_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_52_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_53_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_54_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_55_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_56_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_57_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_58_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_60_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_61_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_62_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_63_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_64_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_65_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_66_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_67_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_68_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_69_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_6_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_70_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_71_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_72_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_73_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_74_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_75_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_7_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_8_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_9_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_14_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_14_n_1 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_14_n_2 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_14_n_3 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_23_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_23_n_1 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_23_n_2 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_23_n_3 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_32_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_32_n_1 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_32_n_2 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_32_n_3 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_41_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_41_n_1 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_41_n_2 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_41_n_3 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_4_n_1 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_4_n_2 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_4_n_3 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_50_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_50_n_1 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_50_n_2 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_50_n_3 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_59_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_59_n_1 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_59_n_2 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_59_n_3 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_5_n_0 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_5_n_1 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_5_n_2 ;
  wire \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_5_n_3 ;
  wire ap_phi_reg_pp0_iter0_p_078_1_reg_244;
  wire \ap_phi_reg_pp0_iter0_p_078_1_reg_244[0]_i_1_n_0 ;
  wire ap_phi_reg_pp0_iter0_p_2_reg_227;
  wire \ap_phi_reg_pp0_iter0_p_2_reg_227[0]_i_1_n_0 ;
  wire ap_ready;
  wire ap_reg_ioackin_glLastTSReg_V_dummy_ack_i_1_n_0;
  wire ap_reg_ioackin_tsDiffFlgReg_V_dummy_ack_i_1_n_0;
  wire ap_reg_ioackin_tsDiffFlgReg_V_dummy_ack_reg_n_0;
  wire ap_reg_ioackin_yReg_V_dummy_ack;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire custDataStreamIn_V_V_0_load_A;
  wire custDataStreamIn_V_V_0_load_B;
  wire [9:0]custDataStreamIn_V_V_0_payload_A;
  wire [9:0]custDataStreamIn_V_V_0_payload_B;
  wire custDataStreamIn_V_V_0_sel;
  wire custDataStreamIn_V_V_0_sel_rd_i_1_n_0;
  wire custDataStreamIn_V_V_0_sel_wr;
  wire custDataStreamIn_V_V_0_sel_wr_i_1_n_0;
  wire [1:1]custDataStreamIn_V_V_0_state;
  wire \custDataStreamIn_V_V_0_state[0]_i_1_n_0 ;
  wire \custDataStreamIn_V_V_0_state_reg_n_0_[0] ;
  wire [15:0]custDataStreamIn_V_V_TDATA;
  wire custDataStreamIn_V_V_TREADY;
  wire custDataStreamIn_V_V_TVALID;
  wire [63:0]glLastTSReg_V;
  wire [63:0]glLastTS_V;
  wire [15:0]glLastYReg_V;
  wire [0:0]nonMonTSDiffFlgReg_V;
  wire p_134_in;
  wire p_49_in;
  wire polStreamIn_V_V_0_payload_A;
  wire \polStreamIn_V_V_0_payload_A[0]_i_1_n_0 ;
  wire polStreamIn_V_V_0_payload_B;
  wire \polStreamIn_V_V_0_payload_B[0]_i_1_n_0 ;
  wire polStreamIn_V_V_0_sel;
  wire polStreamIn_V_V_0_sel_rd_i_1_n_0;
  wire polStreamIn_V_V_0_sel_wr;
  wire polStreamIn_V_V_0_sel_wr_i_1_n_0;
  wire [1:1]polStreamIn_V_V_0_state;
  wire \polStreamIn_V_V_0_state[0]_i_1_n_0 ;
  wire \polStreamIn_V_V_0_state_reg_n_0_[0] ;
  wire [7:0]polStreamIn_V_V_TDATA;
  wire polStreamIn_V_V_TREADY;
  wire polStreamIn_V_V_TVALID;
  wire rev1_fu_343_p2;
  wire streamOut_V_V_1_ack_in;
  wire streamOut_V_V_1_load_A;
  wire streamOut_V_V_1_load_B;
  wire [15:0]streamOut_V_V_1_payload_A;
  wire \streamOut_V_V_1_payload_A[0]_i_1_n_0 ;
  wire \streamOut_V_V_1_payload_A[0]_i_2_n_0 ;
  wire \streamOut_V_V_1_payload_A[0]_i_3_n_0 ;
  wire \streamOut_V_V_1_payload_A[0]_i_4_n_0 ;
  wire \streamOut_V_V_1_payload_A[10]_i_1_n_0 ;
  wire \streamOut_V_V_1_payload_A[10]_i_2_n_0 ;
  wire \streamOut_V_V_1_payload_A[10]_i_3_n_0 ;
  wire \streamOut_V_V_1_payload_A[11]_i_1_n_0 ;
  wire \streamOut_V_V_1_payload_A[11]_i_2_n_0 ;
  wire \streamOut_V_V_1_payload_A[12]_i_1_n_0 ;
  wire \streamOut_V_V_1_payload_A[12]_i_2_n_0 ;
  wire \streamOut_V_V_1_payload_A[13]_i_1_n_0 ;
  wire \streamOut_V_V_1_payload_A[14]_i_1_n_0 ;
  wire \streamOut_V_V_1_payload_A[14]_i_2_n_0 ;
  wire \streamOut_V_V_1_payload_A[15]_i_2_n_0 ;
  wire \streamOut_V_V_1_payload_A[15]_i_3_n_0 ;
  wire \streamOut_V_V_1_payload_A[15]_i_4_n_0 ;
  wire \streamOut_V_V_1_payload_A[1]_i_1_n_0 ;
  wire \streamOut_V_V_1_payload_A[1]_i_2_n_0 ;
  wire \streamOut_V_V_1_payload_A[2]_i_1_n_0 ;
  wire \streamOut_V_V_1_payload_A[2]_i_2_n_0 ;
  wire \streamOut_V_V_1_payload_A[3]_i_1_n_0 ;
  wire \streamOut_V_V_1_payload_A[3]_i_2_n_0 ;
  wire \streamOut_V_V_1_payload_A[4]_i_1_n_0 ;
  wire \streamOut_V_V_1_payload_A[4]_i_2_n_0 ;
  wire \streamOut_V_V_1_payload_A[5]_i_1_n_0 ;
  wire \streamOut_V_V_1_payload_A[5]_i_2_n_0 ;
  wire \streamOut_V_V_1_payload_A[6]_i_1_n_0 ;
  wire \streamOut_V_V_1_payload_A[6]_i_2_n_0 ;
  wire \streamOut_V_V_1_payload_A[7]_i_1_n_0 ;
  wire \streamOut_V_V_1_payload_A[7]_i_2_n_0 ;
  wire \streamOut_V_V_1_payload_A[8]_i_1_n_0 ;
  wire \streamOut_V_V_1_payload_A[8]_i_2_n_0 ;
  wire \streamOut_V_V_1_payload_A[8]_i_3_n_0 ;
  wire \streamOut_V_V_1_payload_A[9]_i_1_n_0 ;
  wire \streamOut_V_V_1_payload_A[9]_i_2_n_0 ;
  wire [15:0]streamOut_V_V_1_payload_B;
  wire \streamOut_V_V_1_payload_B[14]_i_1_n_0 ;
  wire streamOut_V_V_1_sel;
  wire streamOut_V_V_1_sel_rd_i_1_n_0;
  wire streamOut_V_V_1_sel_wr;
  wire streamOut_V_V_1_sel_wr037_out;
  wire streamOut_V_V_1_sel_wr7;
  wire streamOut_V_V_1_sel_wr_i_1_n_0;
  wire [1:1]streamOut_V_V_1_state;
  wire \streamOut_V_V_1_state[0]_i_1_n_0 ;
  wire [15:0]streamOut_V_V_TDATA;
  wire streamOut_V_V_TREADY;
  wire streamOut_V_V_TVALID;
  wire [11:0]tmpWradDiffVal_V_fu_358_p2;
  wire tmp_4_fu_300_p2;
  wire tmp_4_reg_474;
  wire \tmp_4_reg_474[0]_i_10_n_0 ;
  wire \tmp_4_reg_474[0]_i_12_n_0 ;
  wire \tmp_4_reg_474[0]_i_13_n_0 ;
  wire \tmp_4_reg_474[0]_i_14_n_0 ;
  wire \tmp_4_reg_474[0]_i_15_n_0 ;
  wire \tmp_4_reg_474[0]_i_16_n_0 ;
  wire \tmp_4_reg_474[0]_i_17_n_0 ;
  wire \tmp_4_reg_474[0]_i_18_n_0 ;
  wire \tmp_4_reg_474[0]_i_19_n_0 ;
  wire \tmp_4_reg_474[0]_i_21_n_0 ;
  wire \tmp_4_reg_474[0]_i_22_n_0 ;
  wire \tmp_4_reg_474[0]_i_23_n_0 ;
  wire \tmp_4_reg_474[0]_i_24_n_0 ;
  wire \tmp_4_reg_474[0]_i_25_n_0 ;
  wire \tmp_4_reg_474[0]_i_26_n_0 ;
  wire \tmp_4_reg_474[0]_i_27_n_0 ;
  wire \tmp_4_reg_474[0]_i_28_n_0 ;
  wire \tmp_4_reg_474[0]_i_30_n_0 ;
  wire \tmp_4_reg_474[0]_i_31_n_0 ;
  wire \tmp_4_reg_474[0]_i_32_n_0 ;
  wire \tmp_4_reg_474[0]_i_33_n_0 ;
  wire \tmp_4_reg_474[0]_i_34_n_0 ;
  wire \tmp_4_reg_474[0]_i_35_n_0 ;
  wire \tmp_4_reg_474[0]_i_36_n_0 ;
  wire \tmp_4_reg_474[0]_i_37_n_0 ;
  wire \tmp_4_reg_474[0]_i_38_n_0 ;
  wire \tmp_4_reg_474[0]_i_39_n_0 ;
  wire \tmp_4_reg_474[0]_i_3_n_0 ;
  wire \tmp_4_reg_474[0]_i_40_n_0 ;
  wire \tmp_4_reg_474[0]_i_41_n_0 ;
  wire \tmp_4_reg_474[0]_i_42_n_0 ;
  wire \tmp_4_reg_474[0]_i_43_n_0 ;
  wire \tmp_4_reg_474[0]_i_44_n_0 ;
  wire \tmp_4_reg_474[0]_i_4_n_0 ;
  wire \tmp_4_reg_474[0]_i_6_n_0 ;
  wire \tmp_4_reg_474[0]_i_7_n_0 ;
  wire \tmp_4_reg_474[0]_i_8_n_0 ;
  wire \tmp_4_reg_474[0]_i_9_n_0 ;
  wire \tmp_4_reg_474_reg[0]_i_11_n_0 ;
  wire \tmp_4_reg_474_reg[0]_i_11_n_1 ;
  wire \tmp_4_reg_474_reg[0]_i_11_n_2 ;
  wire \tmp_4_reg_474_reg[0]_i_11_n_3 ;
  wire \tmp_4_reg_474_reg[0]_i_1_n_3 ;
  wire \tmp_4_reg_474_reg[0]_i_20_n_0 ;
  wire \tmp_4_reg_474_reg[0]_i_20_n_1 ;
  wire \tmp_4_reg_474_reg[0]_i_20_n_2 ;
  wire \tmp_4_reg_474_reg[0]_i_20_n_3 ;
  wire \tmp_4_reg_474_reg[0]_i_29_n_0 ;
  wire \tmp_4_reg_474_reg[0]_i_29_n_1 ;
  wire \tmp_4_reg_474_reg[0]_i_29_n_2 ;
  wire \tmp_4_reg_474_reg[0]_i_29_n_3 ;
  wire \tmp_4_reg_474_reg[0]_i_2_n_0 ;
  wire \tmp_4_reg_474_reg[0]_i_2_n_1 ;
  wire \tmp_4_reg_474_reg[0]_i_2_n_2 ;
  wire \tmp_4_reg_474_reg[0]_i_2_n_3 ;
  wire \tmp_4_reg_474_reg[0]_i_5_n_0 ;
  wire \tmp_4_reg_474_reg[0]_i_5_n_1 ;
  wire \tmp_4_reg_474_reg[0]_i_5_n_2 ;
  wire \tmp_4_reg_474_reg[0]_i_5_n_3 ;
  wire tmp_5_fu_390_p2;
  wire tmp_5_reg_504;
  wire \tmp_5_reg_504[0]_i_1_n_0 ;
  wire \tmp_5_reg_504[0]_i_4_n_0 ;
  wire \tmp_5_reg_504[0]_i_5_n_0 ;
  wire \tmp_5_reg_504[0]_i_6_n_0 ;
  wire \tmp_5_reg_504[0]_i_7_n_0 ;
  wire \tmp_5_reg_504[0]_i_8_n_0 ;
  wire \tmp_5_reg_504[0]_i_9_n_0 ;
  wire \tmp_5_reg_504_reg[0]_i_2_n_3 ;
  wire \tmp_5_reg_504_reg[0]_i_3_n_0 ;
  wire \tmp_5_reg_504_reg[0]_i_3_n_1 ;
  wire \tmp_5_reg_504_reg[0]_i_3_n_2 ;
  wire \tmp_5_reg_504_reg[0]_i_3_n_3 ;
  wire tmp_6_fu_310_p2;
  wire tmp_6_reg_478;
  wire tmp_6_reg_4780;
  wire \tmp_6_reg_478[0]_i_10_n_0 ;
  wire \tmp_6_reg_478[0]_i_11_n_0 ;
  wire \tmp_6_reg_478[0]_i_12_n_0 ;
  wire \tmp_6_reg_478[0]_i_13_n_0 ;
  wire \tmp_6_reg_478[0]_i_14_n_0 ;
  wire \tmp_6_reg_478[0]_i_16_n_0 ;
  wire \tmp_6_reg_478[0]_i_17_n_0 ;
  wire \tmp_6_reg_478[0]_i_18_n_0 ;
  wire \tmp_6_reg_478[0]_i_19_n_0 ;
  wire \tmp_6_reg_478[0]_i_20_n_0 ;
  wire \tmp_6_reg_478[0]_i_21_n_0 ;
  wire \tmp_6_reg_478[0]_i_22_n_0 ;
  wire \tmp_6_reg_478[0]_i_23_n_0 ;
  wire \tmp_6_reg_478[0]_i_25_n_0 ;
  wire \tmp_6_reg_478[0]_i_26_n_0 ;
  wire \tmp_6_reg_478[0]_i_27_n_0 ;
  wire \tmp_6_reg_478[0]_i_28_n_0 ;
  wire \tmp_6_reg_478[0]_i_29_n_0 ;
  wire \tmp_6_reg_478[0]_i_30_n_0 ;
  wire \tmp_6_reg_478[0]_i_31_n_0 ;
  wire \tmp_6_reg_478[0]_i_32_n_0 ;
  wire \tmp_6_reg_478[0]_i_34_n_0 ;
  wire \tmp_6_reg_478[0]_i_35_n_0 ;
  wire \tmp_6_reg_478[0]_i_36_n_0 ;
  wire \tmp_6_reg_478[0]_i_37_n_0 ;
  wire \tmp_6_reg_478[0]_i_38_n_0 ;
  wire \tmp_6_reg_478[0]_i_39_n_0 ;
  wire \tmp_6_reg_478[0]_i_40_n_0 ;
  wire \tmp_6_reg_478[0]_i_41_n_0 ;
  wire \tmp_6_reg_478[0]_i_43_n_0 ;
  wire \tmp_6_reg_478[0]_i_44_n_0 ;
  wire \tmp_6_reg_478[0]_i_45_n_0 ;
  wire \tmp_6_reg_478[0]_i_46_n_0 ;
  wire \tmp_6_reg_478[0]_i_47_n_0 ;
  wire \tmp_6_reg_478[0]_i_48_n_0 ;
  wire \tmp_6_reg_478[0]_i_49_n_0 ;
  wire \tmp_6_reg_478[0]_i_4_n_0 ;
  wire \tmp_6_reg_478[0]_i_50_n_0 ;
  wire \tmp_6_reg_478[0]_i_51_n_0 ;
  wire \tmp_6_reg_478[0]_i_52_n_0 ;
  wire \tmp_6_reg_478[0]_i_53_n_0 ;
  wire \tmp_6_reg_478[0]_i_54_n_0 ;
  wire \tmp_6_reg_478[0]_i_55_n_0 ;
  wire \tmp_6_reg_478[0]_i_56_n_0 ;
  wire \tmp_6_reg_478[0]_i_57_n_0 ;
  wire \tmp_6_reg_478[0]_i_58_n_0 ;
  wire \tmp_6_reg_478[0]_i_5_n_0 ;
  wire \tmp_6_reg_478[0]_i_7_n_0 ;
  wire \tmp_6_reg_478[0]_i_8_n_0 ;
  wire \tmp_6_reg_478[0]_i_9_n_0 ;
  wire \tmp_6_reg_478_reg[0]_i_15_n_0 ;
  wire \tmp_6_reg_478_reg[0]_i_15_n_1 ;
  wire \tmp_6_reg_478_reg[0]_i_15_n_2 ;
  wire \tmp_6_reg_478_reg[0]_i_15_n_3 ;
  wire \tmp_6_reg_478_reg[0]_i_24_n_0 ;
  wire \tmp_6_reg_478_reg[0]_i_24_n_1 ;
  wire \tmp_6_reg_478_reg[0]_i_24_n_2 ;
  wire \tmp_6_reg_478_reg[0]_i_24_n_3 ;
  wire \tmp_6_reg_478_reg[0]_i_33_n_0 ;
  wire \tmp_6_reg_478_reg[0]_i_33_n_1 ;
  wire \tmp_6_reg_478_reg[0]_i_33_n_2 ;
  wire \tmp_6_reg_478_reg[0]_i_33_n_3 ;
  wire \tmp_6_reg_478_reg[0]_i_3_n_0 ;
  wire \tmp_6_reg_478_reg[0]_i_3_n_1 ;
  wire \tmp_6_reg_478_reg[0]_i_3_n_2 ;
  wire \tmp_6_reg_478_reg[0]_i_3_n_3 ;
  wire \tmp_6_reg_478_reg[0]_i_42_n_0 ;
  wire \tmp_6_reg_478_reg[0]_i_42_n_1 ;
  wire \tmp_6_reg_478_reg[0]_i_42_n_2 ;
  wire \tmp_6_reg_478_reg[0]_i_42_n_3 ;
  wire \tmp_6_reg_478_reg[0]_i_6_n_0 ;
  wire \tmp_6_reg_478_reg[0]_i_6_n_1 ;
  wire \tmp_6_reg_478_reg[0]_i_6_n_2 ;
  wire \tmp_6_reg_478_reg[0]_i_6_n_3 ;
  wire [11:0]tmp_7_fu_288_p1;
  wire [11:0]tmp_7_reg_458;
  wire [11:0]tmp_9_reg_484;
  wire \tmp_V_6_reg_429[0]_i_1_n_0 ;
  wire \tmp_V_6_reg_429[10]_i_1_n_0 ;
  wire \tmp_V_6_reg_429[11]_i_1_n_0 ;
  wire \tmp_V_6_reg_429[12]_i_1_n_0 ;
  wire \tmp_V_6_reg_429[13]_i_1_n_0 ;
  wire \tmp_V_6_reg_429[14]_i_1_n_0 ;
  wire \tmp_V_6_reg_429[1]_i_1_n_0 ;
  wire \tmp_V_6_reg_429[2]_i_1_n_0 ;
  wire \tmp_V_6_reg_429[3]_i_1_n_0 ;
  wire \tmp_V_6_reg_429[4]_i_1_n_0 ;
  wire \tmp_V_6_reg_429[5]_i_1_n_0 ;
  wire \tmp_V_6_reg_429[6]_i_1_n_0 ;
  wire \tmp_V_6_reg_429[7]_i_1_n_0 ;
  wire \tmp_V_6_reg_429[8]_i_1_n_0 ;
  wire \tmp_V_6_reg_429[9]_i_1_n_0 ;
  wire \tmp_V_8_reg_436[0]_i_1_n_0 ;
  wire \tmp_V_8_reg_436[10]_i_1_n_0 ;
  wire \tmp_V_8_reg_436[11]_i_1_n_0 ;
  wire \tmp_V_8_reg_436[12]_i_1_n_0 ;
  wire \tmp_V_8_reg_436[13]_i_1_n_0 ;
  wire \tmp_V_8_reg_436[14]_i_1_n_0 ;
  wire \tmp_V_8_reg_436[15]_i_1_n_0 ;
  wire \tmp_V_8_reg_436[1]_i_1_n_0 ;
  wire \tmp_V_8_reg_436[2]_i_1_n_0 ;
  wire \tmp_V_8_reg_436[3]_i_1_n_0 ;
  wire \tmp_V_8_reg_436[4]_i_1_n_0 ;
  wire \tmp_V_8_reg_436[5]_i_1_n_0 ;
  wire \tmp_V_8_reg_436[6]_i_1_n_0 ;
  wire \tmp_V_8_reg_436[7]_i_1_n_0 ;
  wire \tmp_V_8_reg_436[8]_i_1_n_0 ;
  wire \tmp_V_8_reg_436[9]_i_1_n_0 ;
  wire [9:0]tmp_V_9_fu_292_p1;
  wire [9:0]tmp_V_9_reg_463;
  wire tmp_V_fu_266_p1;
  wire tmp_V_reg_443;
  wire [0:0]tsDiffFlgReg_V;
  wire tsDiffFlgReg_V_ap_vld;
  wire [63:0]tsReg_V;
  wire tsReg_V_ap_vld;
  wire tsStreamIn_V_V_0_load_A;
  wire tsStreamIn_V_V_0_load_B;
  wire [63:0]tsStreamIn_V_V_0_payload_A;
  wire [63:0]tsStreamIn_V_V_0_payload_B;
  wire tsStreamIn_V_V_0_sel;
  wire tsStreamIn_V_V_0_sel_rd_i_1_n_0;
  wire tsStreamIn_V_V_0_sel_wr;
  wire tsStreamIn_V_V_0_sel_wr_i_1_n_0;
  wire [1:1]tsStreamIn_V_V_0_state;
  wire \tsStreamIn_V_V_0_state[0]_i_1_n_0 ;
  wire \tsStreamIn_V_V_0_state_reg_n_0_[0] ;
  wire [63:0]tsStreamIn_V_V_TDATA;
  wire tsStreamIn_V_V_TREADY;
  wire tsStreamIn_V_V_TVALID;
  wire [48:0]tsWrap_V_fu_270_p4;
  wire [11:0]tsWrappedVal_V;
  wire ult_fu_339_p2;
  wire xStreamIn_V_V_0_load_A;
  wire xStreamIn_V_V_0_load_B;
  wire [15:0]xStreamIn_V_V_0_payload_A;
  wire [15:0]xStreamIn_V_V_0_payload_B;
  wire xStreamIn_V_V_0_sel;
  wire xStreamIn_V_V_0_sel_rd_i_1_n_0;
  wire xStreamIn_V_V_0_sel_wr;
  wire xStreamIn_V_V_0_sel_wr_i_1_n_0;
  wire [1:1]xStreamIn_V_V_0_state;
  wire \xStreamIn_V_V_0_state[0]_i_1_n_0 ;
  wire \xStreamIn_V_V_0_state[1]_i_3_n_0 ;
  wire \xStreamIn_V_V_0_state_reg_n_0_[0] ;
  wire [15:0]xStreamIn_V_V_TDATA;
  wire xStreamIn_V_V_TREADY;
  wire xStreamIn_V_V_TVALID;
  wire [0:0]yDiffFlgReg_V;
  wire [15:0]yReg_V;
  wire yStreamIn_V_V_0_load_A;
  wire yStreamIn_V_V_0_load_B;
  wire [11:0]yStreamIn_V_V_0_payload_A;
  wire [11:0]yStreamIn_V_V_0_payload_B;
  wire yStreamIn_V_V_0_sel;
  wire yStreamIn_V_V_0_sel_rd_i_1_n_0;
  wire yStreamIn_V_V_0_sel_wr;
  wire yStreamIn_V_V_0_sel_wr_i_1_n_0;
  wire [1:1]yStreamIn_V_V_0_state;
  wire \yStreamIn_V_V_0_state[0]_i_1_n_0 ;
  wire \yStreamIn_V_V_0_state_reg_n_0_[0] ;
  wire [15:0]yStreamIn_V_V_TDATA;
  wire yStreamIn_V_V_TREADY;
  wire yStreamIn_V_V_TVALID;
  wire [3:3]\NLW_ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[11]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_14_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_23_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_32_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_41_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_50_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_59_O_UNCONNECTED ;
  wire [3:2]\NLW_tmp_4_reg_474_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_tmp_4_reg_474_reg[0]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_tmp_4_reg_474_reg[0]_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_tmp_4_reg_474_reg[0]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_tmp_4_reg_474_reg[0]_i_20_O_UNCONNECTED ;
  wire [3:0]\NLW_tmp_4_reg_474_reg[0]_i_29_O_UNCONNECTED ;
  wire [3:0]\NLW_tmp_4_reg_474_reg[0]_i_5_O_UNCONNECTED ;
  wire [3:2]\NLW_tmp_5_reg_504_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_tmp_5_reg_504_reg[0]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_tmp_5_reg_504_reg[0]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_tmp_6_reg_478_reg[0]_i_15_O_UNCONNECTED ;
  wire [3:1]\NLW_tmp_6_reg_478_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_tmp_6_reg_478_reg[0]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_tmp_6_reg_478_reg[0]_i_24_O_UNCONNECTED ;
  wire [3:0]\NLW_tmp_6_reg_478_reg[0]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_tmp_6_reg_478_reg[0]_i_33_O_UNCONNECTED ;
  wire [3:0]\NLW_tmp_6_reg_478_reg[0]_i_42_O_UNCONNECTED ;
  wire [3:0]\NLW_tmp_6_reg_478_reg[0]_i_6_O_UNCONNECTED ;

  assign glLastTSReg_V_ap_vld = tsReg_V_ap_vld;
  assign glLastYReg_V_ap_vld = tsReg_V_ap_vld;
  assign nonMonTSDiffFlgReg_V_ap_vld = tsReg_V_ap_vld;
  assign tsWrappedVal_V_ap_vld = tsReg_V_ap_vld;
  assign yDiffFlgReg_V_ap_vld = tsDiffFlgReg_V_ap_vld;
  assign yReg_V_ap_vld = tsReg_V_ap_vld;
  LUT6 #(
    .INIT(64'hFFFFFFFFFFD50000)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(tmp_4_reg_474),
        .I2(tmp_5_reg_504),
        .I3(streamOut_V_V_1_ack_in),
        .I4(ap_CS_fsm_pp0_stage3),
        .I5(\ap_CS_fsm[0]_i_2_n_0 ),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'h0DCC0D0D00CC0C0C)) 
    \ap_CS_fsm[0]_i_2 
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_start),
        .I3(streamOut_V_V_1_ack_in),
        .I4(ap_enable_reg_pp0_iter1_reg_n_0),
        .I5(ap_CS_fsm_pp0_stage2),
        .O(\ap_CS_fsm[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFAF0F8F8AAF08888)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .I2(ap_CS_fsm_pp0_stage1),
        .I3(streamOut_V_V_1_ack_in),
        .I4(ap_enable_reg_pp0_iter1_reg_n_0),
        .I5(\ap_CS_fsm[1]_i_2_n_0 ),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(\xStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I2(\tsStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I3(\polStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I4(\custDataStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I5(\yStreamIn_V_V_0_state_reg_n_0_[0] ),
        .O(\ap_CS_fsm[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55555555D5DDD5D5)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(\xStreamIn_V_V_0_state[1]_i_3_n_0 ),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(tmp_4_reg_474),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(streamOut_V_V_1_ack_in),
        .O(ap_NS_fsm[2]));
  LUT6 #(
    .INIT(64'h5550FFFF55504540)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(\ap_CS_fsm[3]_i_2_n_0 ),
        .I1(tmp_4_reg_474),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(ap_start),
        .I4(streamOut_V_V_1_ack_in),
        .I5(\ap_CS_fsm[3]_i_3_n_0 ),
        .O(ap_NS_fsm[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \ap_CS_fsm[3]_i_2 
       (.I0(streamOut_V_V_1_ack_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(ap_CS_fsm_pp0_stage2),
        .O(\ap_CS_fsm[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000B800B800B800)) 
    \ap_CS_fsm[3]_i_3 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(ap_CS_fsm_pp0_stage3),
        .I4(tmp_5_reg_504),
        .I5(tmp_4_reg_474),
        .O(\ap_CS_fsm[3]_i_3_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_pp0_stage1),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_pp0_stage2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_pp0_stage3),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h80)) 
    ap_done_INST_0
       (.I0(ap_CS_fsm_pp0_stage2),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(streamOut_V_V_1_ack_in),
        .O(ap_done));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0),
        .Q(ap_enable_reg_pp0_iter0_reg),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hF030F00040004000)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_enable_reg_pp0_iter1_i_2_n_0),
        .I1(ap_CS_fsm_pp0_stage3),
        .I2(ap_rst_n),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(\ap_CS_fsm[3]_i_2_n_0 ),
        .I5(ap_enable_reg_pp0_iter1_reg_n_0),
        .O(ap_enable_reg_pp0_iter1_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h15)) 
    ap_enable_reg_pp0_iter1_i_2
       (.I0(streamOut_V_V_1_ack_in),
        .I1(tmp_5_reg_504),
        .I2(tmp_4_reg_474),
        .O(ap_enable_reg_pp0_iter1_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter1_reg_n_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h10)) 
    ap_idle_INST_0
       (.I0(ap_enable_reg_pp0_iter1_reg_n_0),
        .I1(ap_start),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .O(ap_idle));
  LUT6 #(
    .INIT(64'hC040F04000000000)) 
    \ap_phi_reg_pp0_iter0_p_0140_1_reg_212[11]_i_1 
       (.I0(tmp_6_reg_478),
        .I1(streamOut_V_V_1_ack_in),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(tmp_4_reg_474),
        .I4(ap_enable_reg_pp0_iter1_reg_n_0),
        .I5(ap_CS_fsm_pp0_stage2),
        .O(\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ap_phi_reg_pp0_iter0_p_0140_1_reg_212[11]_i_3 
       (.I0(tsReg_V[26]),
        .I1(tmp_9_reg_484[11]),
        .O(\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ap_phi_reg_pp0_iter0_p_0140_1_reg_212[11]_i_4 
       (.I0(tsReg_V[25]),
        .I1(tmp_9_reg_484[10]),
        .O(\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ap_phi_reg_pp0_iter0_p_0140_1_reg_212[11]_i_5 
       (.I0(tsReg_V[24]),
        .I1(tmp_9_reg_484[9]),
        .O(\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ap_phi_reg_pp0_iter0_p_0140_1_reg_212[11]_i_6 
       (.I0(tsReg_V[23]),
        .I1(tmp_9_reg_484[8]),
        .O(\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[11]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ap_phi_reg_pp0_iter0_p_0140_1_reg_212[3]_i_2 
       (.I0(tsReg_V[18]),
        .I1(tmp_9_reg_484[3]),
        .O(\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ap_phi_reg_pp0_iter0_p_0140_1_reg_212[3]_i_3 
       (.I0(tsReg_V[17]),
        .I1(tmp_9_reg_484[2]),
        .O(\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ap_phi_reg_pp0_iter0_p_0140_1_reg_212[3]_i_4 
       (.I0(tsReg_V[16]),
        .I1(tmp_9_reg_484[1]),
        .O(\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ap_phi_reg_pp0_iter0_p_0140_1_reg_212[3]_i_5 
       (.I0(tsReg_V[15]),
        .I1(tmp_9_reg_484[0]),
        .O(\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ap_phi_reg_pp0_iter0_p_0140_1_reg_212[7]_i_2 
       (.I0(tsReg_V[22]),
        .I1(tmp_9_reg_484[7]),
        .O(\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ap_phi_reg_pp0_iter0_p_0140_1_reg_212[7]_i_3 
       (.I0(tsReg_V[21]),
        .I1(tmp_9_reg_484[6]),
        .O(\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ap_phi_reg_pp0_iter0_p_0140_1_reg_212[7]_i_4 
       (.I0(tsReg_V[20]),
        .I1(tmp_9_reg_484[5]),
        .O(\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ap_phi_reg_pp0_iter0_p_0140_1_reg_212[7]_i_5 
       (.I0(tsReg_V[19]),
        .I1(tmp_9_reg_484[4]),
        .O(\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[7]_i_5_n_0 ));
  FDRE \ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[0] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_sel_wr7),
        .D(tmpWradDiffVal_V_fu_358_p2[0]),
        .Q(tsWrappedVal_V[0]),
        .R(\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[11]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[10] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_sel_wr7),
        .D(tmpWradDiffVal_V_fu_358_p2[10]),
        .Q(tsWrappedVal_V[10]),
        .R(\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[11]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[11] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_sel_wr7),
        .D(tmpWradDiffVal_V_fu_358_p2[11]),
        .Q(tsWrappedVal_V[11]),
        .R(\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[11]_i_1_n_0 ));
  CARRY4 \ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[11]_i_2 
       (.CI(\ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[7]_i_1_n_0 ),
        .CO({\NLW_ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[11]_i_2_CO_UNCONNECTED [3],\ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[11]_i_2_n_1 ,\ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[11]_i_2_n_2 ,\ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,tsReg_V[25:23]}),
        .O(tmpWradDiffVal_V_fu_358_p2[11:8]),
        .S({\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[11]_i_3_n_0 ,\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[11]_i_4_n_0 ,\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[11]_i_5_n_0 ,\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[11]_i_6_n_0 }));
  FDRE \ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[1] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_sel_wr7),
        .D(tmpWradDiffVal_V_fu_358_p2[1]),
        .Q(tsWrappedVal_V[1]),
        .R(\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[11]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[2] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_sel_wr7),
        .D(tmpWradDiffVal_V_fu_358_p2[2]),
        .Q(tsWrappedVal_V[2]),
        .R(\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[11]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[3] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_sel_wr7),
        .D(tmpWradDiffVal_V_fu_358_p2[3]),
        .Q(tsWrappedVal_V[3]),
        .R(\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[11]_i_1_n_0 ));
  CARRY4 \ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[3]_i_1_n_0 ,\ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[3]_i_1_n_1 ,\ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[3]_i_1_n_2 ,\ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI(tsReg_V[18:15]),
        .O(tmpWradDiffVal_V_fu_358_p2[3:0]),
        .S({\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[3]_i_2_n_0 ,\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[3]_i_3_n_0 ,\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[3]_i_4_n_0 ,\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[3]_i_5_n_0 }));
  FDRE \ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[4] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_sel_wr7),
        .D(tmpWradDiffVal_V_fu_358_p2[4]),
        .Q(tsWrappedVal_V[4]),
        .R(\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[11]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[5] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_sel_wr7),
        .D(tmpWradDiffVal_V_fu_358_p2[5]),
        .Q(tsWrappedVal_V[5]),
        .R(\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[11]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[6] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_sel_wr7),
        .D(tmpWradDiffVal_V_fu_358_p2[6]),
        .Q(tsWrappedVal_V[6]),
        .R(\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[11]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[7] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_sel_wr7),
        .D(tmpWradDiffVal_V_fu_358_p2[7]),
        .Q(tsWrappedVal_V[7]),
        .R(\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[11]_i_1_n_0 ));
  CARRY4 \ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[7]_i_1 
       (.CI(\ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[3]_i_1_n_0 ),
        .CO({\ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[7]_i_1_n_0 ,\ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[7]_i_1_n_1 ,\ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[7]_i_1_n_2 ,\ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(tsReg_V[22:19]),
        .O(tmpWradDiffVal_V_fu_358_p2[7:4]),
        .S({\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[7]_i_2_n_0 ,\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[7]_i_3_n_0 ,\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[7]_i_4_n_0 ,\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[7]_i_5_n_0 }));
  FDRE \ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[8] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_sel_wr7),
        .D(tmpWradDiffVal_V_fu_358_p2[8]),
        .Q(tsWrappedVal_V[8]),
        .R(\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[11]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp0_iter0_p_0140_1_reg_212_reg[9] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_sel_wr7),
        .D(tmpWradDiffVal_V_fu_358_p2[9]),
        .Q(tsWrappedVal_V[9]),
        .R(\ap_phi_reg_pp0_iter0_p_0140_1_reg_212[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8A000000)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_1 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(streamOut_V_V_1_ack_in),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(ap_CS_fsm_pp0_stage2),
        .I4(tmp_4_reg_474),
        .O(ap_phi_reg_pp0_iter0_p_0140_1_reg_2121));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_10 
       (.I0(tsReg_V[63]),
        .I1(glLastTSReg_V[63]),
        .I2(tsReg_V[62]),
        .I3(glLastTSReg_V[62]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_11 
       (.I0(tsReg_V[61]),
        .I1(glLastTSReg_V[61]),
        .I2(tsReg_V[60]),
        .I3(glLastTSReg_V[60]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_12 
       (.I0(tsReg_V[59]),
        .I1(glLastTSReg_V[59]),
        .I2(tsReg_V[58]),
        .I3(glLastTSReg_V[58]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_13 
       (.I0(tsReg_V[57]),
        .I1(glLastTSReg_V[57]),
        .I2(tsReg_V[56]),
        .I3(glLastTSReg_V[56]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_15 
       (.I0(glLastTSReg_V[55]),
        .I1(tsReg_V[55]),
        .I2(tsReg_V[54]),
        .I3(glLastTSReg_V[54]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_16 
       (.I0(glLastTSReg_V[53]),
        .I1(tsReg_V[53]),
        .I2(tsReg_V[52]),
        .I3(glLastTSReg_V[52]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_17 
       (.I0(glLastTSReg_V[51]),
        .I1(tsReg_V[51]),
        .I2(tsReg_V[50]),
        .I3(glLastTSReg_V[50]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_18 
       (.I0(glLastTSReg_V[49]),
        .I1(tsReg_V[49]),
        .I2(tsReg_V[48]),
        .I3(glLastTSReg_V[48]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_19 
       (.I0(tsReg_V[55]),
        .I1(glLastTSReg_V[55]),
        .I2(tsReg_V[54]),
        .I3(glLastTSReg_V[54]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_2 
       (.I0(streamOut_V_V_1_ack_in),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(tmp_4_reg_474),
        .I3(ap_CS_fsm_pp0_stage2),
        .O(streamOut_V_V_1_sel_wr7));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_20 
       (.I0(tsReg_V[53]),
        .I1(glLastTSReg_V[53]),
        .I2(tsReg_V[52]),
        .I3(glLastTSReg_V[52]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_21 
       (.I0(tsReg_V[51]),
        .I1(glLastTSReg_V[51]),
        .I2(tsReg_V[50]),
        .I3(glLastTSReg_V[50]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_22 
       (.I0(tsReg_V[49]),
        .I1(glLastTSReg_V[49]),
        .I2(tsReg_V[48]),
        .I3(glLastTSReg_V[48]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_24 
       (.I0(glLastTSReg_V[47]),
        .I1(tsReg_V[47]),
        .I2(tsReg_V[46]),
        .I3(glLastTSReg_V[46]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_25 
       (.I0(glLastTSReg_V[45]),
        .I1(tsReg_V[45]),
        .I2(tsReg_V[44]),
        .I3(glLastTSReg_V[44]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_26 
       (.I0(glLastTSReg_V[43]),
        .I1(tsReg_V[43]),
        .I2(tsReg_V[42]),
        .I3(glLastTSReg_V[42]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_27 
       (.I0(glLastTSReg_V[41]),
        .I1(tsReg_V[41]),
        .I2(tsReg_V[40]),
        .I3(glLastTSReg_V[40]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_28 
       (.I0(tsReg_V[47]),
        .I1(glLastTSReg_V[47]),
        .I2(tsReg_V[46]),
        .I3(glLastTSReg_V[46]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_29 
       (.I0(tsReg_V[45]),
        .I1(glLastTSReg_V[45]),
        .I2(tsReg_V[44]),
        .I3(glLastTSReg_V[44]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_30 
       (.I0(tsReg_V[43]),
        .I1(glLastTSReg_V[43]),
        .I2(tsReg_V[42]),
        .I3(glLastTSReg_V[42]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_31 
       (.I0(tsReg_V[41]),
        .I1(glLastTSReg_V[41]),
        .I2(tsReg_V[40]),
        .I3(glLastTSReg_V[40]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_33 
       (.I0(glLastTSReg_V[39]),
        .I1(tsReg_V[39]),
        .I2(tsReg_V[38]),
        .I3(glLastTSReg_V[38]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_34 
       (.I0(glLastTSReg_V[37]),
        .I1(tsReg_V[37]),
        .I2(tsReg_V[36]),
        .I3(glLastTSReg_V[36]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_35 
       (.I0(glLastTSReg_V[35]),
        .I1(tsReg_V[35]),
        .I2(tsReg_V[34]),
        .I3(glLastTSReg_V[34]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_36 
       (.I0(glLastTSReg_V[33]),
        .I1(tsReg_V[33]),
        .I2(tsReg_V[32]),
        .I3(glLastTSReg_V[32]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_37 
       (.I0(tsReg_V[39]),
        .I1(glLastTSReg_V[39]),
        .I2(tsReg_V[38]),
        .I3(glLastTSReg_V[38]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_38 
       (.I0(tsReg_V[37]),
        .I1(glLastTSReg_V[37]),
        .I2(tsReg_V[36]),
        .I3(glLastTSReg_V[36]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_39 
       (.I0(tsReg_V[35]),
        .I1(glLastTSReg_V[35]),
        .I2(tsReg_V[34]),
        .I3(glLastTSReg_V[34]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_39_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_40 
       (.I0(tsReg_V[33]),
        .I1(glLastTSReg_V[33]),
        .I2(tsReg_V[32]),
        .I3(glLastTSReg_V[32]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_42 
       (.I0(glLastTSReg_V[31]),
        .I1(tsReg_V[31]),
        .I2(tsReg_V[30]),
        .I3(glLastTSReg_V[30]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_43 
       (.I0(glLastTSReg_V[29]),
        .I1(tsReg_V[29]),
        .I2(tsReg_V[28]),
        .I3(glLastTSReg_V[28]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_44 
       (.I0(glLastTSReg_V[27]),
        .I1(tsReg_V[27]),
        .I2(tsReg_V[26]),
        .I3(glLastTSReg_V[26]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_45 
       (.I0(glLastTSReg_V[25]),
        .I1(tsReg_V[25]),
        .I2(tsReg_V[24]),
        .I3(glLastTSReg_V[24]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_46 
       (.I0(tsReg_V[31]),
        .I1(glLastTSReg_V[31]),
        .I2(tsReg_V[30]),
        .I3(glLastTSReg_V[30]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_47 
       (.I0(tsReg_V[29]),
        .I1(glLastTSReg_V[29]),
        .I2(tsReg_V[28]),
        .I3(glLastTSReg_V[28]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_48 
       (.I0(tsReg_V[27]),
        .I1(glLastTSReg_V[27]),
        .I2(glLastTSReg_V[26]),
        .I3(tsReg_V[26]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_48_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_49 
       (.I0(tsReg_V[25]),
        .I1(glLastTSReg_V[25]),
        .I2(tsReg_V[24]),
        .I3(glLastTSReg_V[24]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_49_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_51 
       (.I0(glLastTSReg_V[23]),
        .I1(tsReg_V[23]),
        .I2(tsReg_V[22]),
        .I3(glLastTSReg_V[22]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_52 
       (.I0(glLastTSReg_V[21]),
        .I1(tsReg_V[21]),
        .I2(tsReg_V[20]),
        .I3(glLastTSReg_V[20]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_53 
       (.I0(glLastTSReg_V[19]),
        .I1(tsReg_V[19]),
        .I2(tsReg_V[18]),
        .I3(glLastTSReg_V[18]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_54 
       (.I0(glLastTSReg_V[17]),
        .I1(tsReg_V[17]),
        .I2(tsReg_V[16]),
        .I3(glLastTSReg_V[16]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_55 
       (.I0(tsReg_V[23]),
        .I1(glLastTSReg_V[23]),
        .I2(tsReg_V[22]),
        .I3(glLastTSReg_V[22]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_56 
       (.I0(tsReg_V[21]),
        .I1(glLastTSReg_V[21]),
        .I2(tsReg_V[20]),
        .I3(glLastTSReg_V[20]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_56_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_57 
       (.I0(tsReg_V[19]),
        .I1(glLastTSReg_V[19]),
        .I2(tsReg_V[18]),
        .I3(glLastTSReg_V[18]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_57_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_58 
       (.I0(tsReg_V[17]),
        .I1(glLastTSReg_V[17]),
        .I2(tsReg_V[16]),
        .I3(glLastTSReg_V[16]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_58_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_6 
       (.I0(glLastTSReg_V[63]),
        .I1(tsReg_V[63]),
        .I2(tsReg_V[62]),
        .I3(glLastTSReg_V[62]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_60 
       (.I0(glLastTSReg_V[15]),
        .I1(tsReg_V[15]),
        .I2(tsReg_V[14]),
        .I3(glLastTSReg_V[14]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_60_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_61 
       (.I0(glLastTSReg_V[13]),
        .I1(tsReg_V[13]),
        .I2(tsReg_V[12]),
        .I3(glLastTSReg_V[12]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_61_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_62 
       (.I0(glLastTSReg_V[11]),
        .I1(tsReg_V[11]),
        .I2(tsReg_V[10]),
        .I3(glLastTSReg_V[10]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_62_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_63 
       (.I0(glLastTSReg_V[9]),
        .I1(tsReg_V[9]),
        .I2(tsReg_V[8]),
        .I3(glLastTSReg_V[8]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_63_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_64 
       (.I0(tsReg_V[15]),
        .I1(glLastTSReg_V[15]),
        .I2(tsReg_V[14]),
        .I3(glLastTSReg_V[14]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_64_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_65 
       (.I0(tsReg_V[13]),
        .I1(glLastTSReg_V[13]),
        .I2(tsReg_V[12]),
        .I3(glLastTSReg_V[12]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_65_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_66 
       (.I0(tsReg_V[11]),
        .I1(glLastTSReg_V[11]),
        .I2(tsReg_V[10]),
        .I3(glLastTSReg_V[10]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_66_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_67 
       (.I0(tsReg_V[9]),
        .I1(glLastTSReg_V[9]),
        .I2(tsReg_V[8]),
        .I3(glLastTSReg_V[8]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_67_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_68 
       (.I0(glLastTSReg_V[7]),
        .I1(tsReg_V[7]),
        .I2(tsReg_V[6]),
        .I3(glLastTSReg_V[6]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_68_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_69 
       (.I0(glLastTSReg_V[5]),
        .I1(tsReg_V[5]),
        .I2(tsReg_V[4]),
        .I3(glLastTSReg_V[4]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_69_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_7 
       (.I0(glLastTSReg_V[61]),
        .I1(tsReg_V[61]),
        .I2(tsReg_V[60]),
        .I3(glLastTSReg_V[60]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_70 
       (.I0(glLastTSReg_V[3]),
        .I1(tsReg_V[3]),
        .I2(tsReg_V[2]),
        .I3(glLastTSReg_V[2]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_70_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_71 
       (.I0(glLastTSReg_V[1]),
        .I1(tsReg_V[1]),
        .I2(tsReg_V[0]),
        .I3(glLastTSReg_V[0]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_71_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_72 
       (.I0(tsReg_V[7]),
        .I1(glLastTSReg_V[7]),
        .I2(tsReg_V[6]),
        .I3(glLastTSReg_V[6]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_72_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_73 
       (.I0(tsReg_V[5]),
        .I1(glLastTSReg_V[5]),
        .I2(tsReg_V[4]),
        .I3(glLastTSReg_V[4]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_73_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_74 
       (.I0(tsReg_V[3]),
        .I1(glLastTSReg_V[3]),
        .I2(tsReg_V[2]),
        .I3(glLastTSReg_V[2]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_74_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_75 
       (.I0(tsReg_V[1]),
        .I1(glLastTSReg_V[1]),
        .I2(tsReg_V[0]),
        .I3(glLastTSReg_V[0]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_75_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_8 
       (.I0(glLastTSReg_V[59]),
        .I1(tsReg_V[59]),
        .I2(tsReg_V[58]),
        .I3(glLastTSReg_V[58]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_9 
       (.I0(glLastTSReg_V[57]),
        .I1(tsReg_V[57]),
        .I2(tsReg_V[56]),
        .I3(glLastTSReg_V[56]),
        .O(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_9_n_0 ));
  FDRE \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_sel_wr7),
        .D(rev1_fu_343_p2),
        .Q(nonMonTSDiffFlgReg_V),
        .R(ap_phi_reg_pp0_iter0_p_0140_1_reg_2121));
  CARRY4 \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_14 
       (.CI(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_23_n_0 ),
        .CO({\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_14_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_14_n_1 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_14_n_2 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_24_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_25_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_26_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_27_n_0 }),
        .O(\NLW_ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_14_O_UNCONNECTED [3:0]),
        .S({\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_28_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_29_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_30_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_31_n_0 }));
  CARRY4 \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_23 
       (.CI(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_32_n_0 ),
        .CO({\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_23_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_23_n_1 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_23_n_2 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_33_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_34_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_35_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_36_n_0 }),
        .O(\NLW_ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_23_O_UNCONNECTED [3:0]),
        .S({\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_37_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_38_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_39_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_40_n_0 }));
  CARRY4 \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_3 
       (.CI(ult_fu_339_p2),
        .CO(\NLW_ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_3_O_UNCONNECTED [3:1],rev1_fu_343_p2}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_32 
       (.CI(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_41_n_0 ),
        .CO({\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_32_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_32_n_1 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_32_n_2 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_32_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_42_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_43_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_44_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_45_n_0 }),
        .O(\NLW_ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_32_O_UNCONNECTED [3:0]),
        .S({\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_46_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_47_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_48_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_49_n_0 }));
  CARRY4 \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_4 
       (.CI(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_5_n_0 ),
        .CO({ult_fu_339_p2,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_4_n_1 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_4_n_2 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_6_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_7_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_8_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_9_n_0 }),
        .O(\NLW_ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_4_O_UNCONNECTED [3:0]),
        .S({\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_10_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_11_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_12_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_13_n_0 }));
  CARRY4 \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_41 
       (.CI(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_50_n_0 ),
        .CO({\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_41_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_41_n_1 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_41_n_2 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_41_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_51_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_52_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_53_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_54_n_0 }),
        .O(\NLW_ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_41_O_UNCONNECTED [3:0]),
        .S({\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_55_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_56_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_57_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_58_n_0 }));
  CARRY4 \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_5 
       (.CI(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_14_n_0 ),
        .CO({\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_5_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_5_n_1 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_5_n_2 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_15_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_16_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_17_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_18_n_0 }),
        .O(\NLW_ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_5_O_UNCONNECTED [3:0]),
        .S({\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_19_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_20_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_21_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_22_n_0 }));
  CARRY4 \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_50 
       (.CI(\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_59_n_0 ),
        .CO({\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_50_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_50_n_1 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_50_n_2 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_50_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_60_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_61_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_62_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_63_n_0 }),
        .O(\NLW_ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_50_O_UNCONNECTED [3:0]),
        .S({\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_64_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_65_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_66_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_67_n_0 }));
  CARRY4 \ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_59 
       (.CI(1'b0),
        .CO({\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_59_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_59_n_1 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_59_n_2 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_59_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_68_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_69_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_70_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_71_n_0 }),
        .O(\NLW_ap_phi_reg_pp0_iter0_p_0167_1_reg_197_reg[0]_i_59_O_UNCONNECTED [3:0]),
        .S({\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_72_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_73_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_74_n_0 ,\ap_phi_reg_pp0_iter0_p_0167_1_reg_197[0]_i_75_n_0 }));
  LUT4 #(
    .INIT(16'h0F44)) 
    \ap_phi_reg_pp0_iter0_p_078_1_reg_244[0]_i_1 
       (.I0(streamOut_V_V_1_sel_wr7),
        .I1(ap_phi_reg_pp0_iter0_p_078_1_reg_244),
        .I2(tmp_5_fu_390_p2),
        .I3(ap_phi_reg_pp0_iter0_p_0140_1_reg_2121),
        .O(\ap_phi_reg_pp0_iter0_p_078_1_reg_244[0]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp0_iter0_p_078_1_reg_244_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_phi_reg_pp0_iter0_p_078_1_reg_244[0]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter0_p_078_1_reg_244),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h3A3AAA2AAAAAAAAA)) 
    \ap_phi_reg_pp0_iter0_p_2_reg_227[0]_i_1 
       (.I0(ap_phi_reg_pp0_iter0_p_2_reg_227),
        .I1(tmp_4_reg_474),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1_reg_n_0),
        .I4(streamOut_V_V_1_ack_in),
        .I5(ap_enable_reg_pp0_iter0),
        .O(\ap_phi_reg_pp0_iter0_p_2_reg_227[0]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp0_iter0_p_2_reg_227_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_phi_reg_pp0_iter0_p_2_reg_227[0]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter0_p_2_reg_227),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter1_p_078_1_reg_244_reg[0] 
       (.C(ap_clk),
        .CE(ap_ready),
        .D(ap_phi_reg_pp0_iter0_p_078_1_reg_244),
        .Q(yDiffFlgReg_V),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter1_p_2_reg_227_reg[0] 
       (.C(ap_clk),
        .CE(ap_ready),
        .D(ap_phi_reg_pp0_iter0_p_2_reg_227),
        .Q(tsDiffFlgReg_V),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h88888000)) 
    ap_ready_INST_0
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_CS_fsm_pp0_stage3),
        .I2(tmp_4_reg_474),
        .I3(tmp_5_reg_504),
        .I4(streamOut_V_V_1_ack_in),
        .O(ap_ready));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ap_ready_INST_0_i_1
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .O(ap_enable_reg_pp0_iter0));
  LUT6 #(
    .INIT(64'h07FFFFFF07000000)) 
    ap_reg_ioackin_glLastTSReg_V_dummy_ack_i_1
       (.I0(tmp_4_reg_474),
        .I1(tmp_5_reg_504),
        .I2(streamOut_V_V_1_ack_in),
        .I3(ap_CS_fsm_pp0_stage3),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(ap_reg_ioackin_yReg_V_dummy_ack),
        .O(ap_reg_ioackin_glLastTSReg_V_dummy_ack_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_reg_ioackin_glLastTSReg_V_dummy_ack_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_reg_ioackin_glLastTSReg_V_dummy_ack_i_1_n_0),
        .Q(ap_reg_ioackin_yReg_V_dummy_ack),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h08888888)) 
    ap_reg_ioackin_tsDiffFlgReg_V_dummy_ack_i_1
       (.I0(ap_reg_ioackin_tsDiffFlgReg_V_dummy_ack_reg_n_0),
        .I1(ap_rst_n),
        .I2(streamOut_V_V_1_ack_in),
        .I3(ap_enable_reg_pp0_iter1_reg_n_0),
        .I4(ap_CS_fsm_pp0_stage2),
        .O(ap_reg_ioackin_tsDiffFlgReg_V_dummy_ack_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_reg_ioackin_tsDiffFlgReg_V_dummy_ack_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_reg_ioackin_tsDiffFlgReg_V_dummy_ack_i_1_n_0),
        .Q(ap_reg_ioackin_tsDiffFlgReg_V_dummy_ack_reg_n_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h45)) 
    \custDataStreamIn_V_V_0_payload_A[9]_i_1 
       (.I0(custDataStreamIn_V_V_0_sel_wr),
        .I1(custDataStreamIn_V_V_TREADY),
        .I2(\custDataStreamIn_V_V_0_state_reg_n_0_[0] ),
        .O(custDataStreamIn_V_V_0_load_A));
  FDRE \custDataStreamIn_V_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_A),
        .D(custDataStreamIn_V_V_TDATA[0]),
        .Q(custDataStreamIn_V_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_A),
        .D(custDataStreamIn_V_V_TDATA[1]),
        .Q(custDataStreamIn_V_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_A),
        .D(custDataStreamIn_V_V_TDATA[2]),
        .Q(custDataStreamIn_V_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_A),
        .D(custDataStreamIn_V_V_TDATA[3]),
        .Q(custDataStreamIn_V_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_A),
        .D(custDataStreamIn_V_V_TDATA[4]),
        .Q(custDataStreamIn_V_V_0_payload_A[4]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_A),
        .D(custDataStreamIn_V_V_TDATA[5]),
        .Q(custDataStreamIn_V_V_0_payload_A[5]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_A),
        .D(custDataStreamIn_V_V_TDATA[6]),
        .Q(custDataStreamIn_V_V_0_payload_A[6]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_A),
        .D(custDataStreamIn_V_V_TDATA[7]),
        .Q(custDataStreamIn_V_V_0_payload_A[7]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_A),
        .D(custDataStreamIn_V_V_TDATA[8]),
        .Q(custDataStreamIn_V_V_0_payload_A[8]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_A),
        .D(custDataStreamIn_V_V_TDATA[9]),
        .Q(custDataStreamIn_V_V_0_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \custDataStreamIn_V_V_0_payload_B[9]_i_1 
       (.I0(custDataStreamIn_V_V_0_sel_wr),
        .I1(custDataStreamIn_V_V_TREADY),
        .I2(\custDataStreamIn_V_V_0_state_reg_n_0_[0] ),
        .O(custDataStreamIn_V_V_0_load_B));
  FDRE \custDataStreamIn_V_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_B),
        .D(custDataStreamIn_V_V_TDATA[0]),
        .Q(custDataStreamIn_V_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_B),
        .D(custDataStreamIn_V_V_TDATA[1]),
        .Q(custDataStreamIn_V_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_B),
        .D(custDataStreamIn_V_V_TDATA[2]),
        .Q(custDataStreamIn_V_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_B),
        .D(custDataStreamIn_V_V_TDATA[3]),
        .Q(custDataStreamIn_V_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_B),
        .D(custDataStreamIn_V_V_TDATA[4]),
        .Q(custDataStreamIn_V_V_0_payload_B[4]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_B),
        .D(custDataStreamIn_V_V_TDATA[5]),
        .Q(custDataStreamIn_V_V_0_payload_B[5]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_B),
        .D(custDataStreamIn_V_V_TDATA[6]),
        .Q(custDataStreamIn_V_V_0_payload_B[6]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_B),
        .D(custDataStreamIn_V_V_TDATA[7]),
        .Q(custDataStreamIn_V_V_0_payload_B[7]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_B),
        .D(custDataStreamIn_V_V_TDATA[8]),
        .Q(custDataStreamIn_V_V_0_payload_B[8]),
        .R(1'b0));
  FDRE \custDataStreamIn_V_V_0_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(custDataStreamIn_V_V_0_load_B),
        .D(custDataStreamIn_V_V_TDATA[9]),
        .Q(custDataStreamIn_V_V_0_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBABF4540)) 
    custDataStreamIn_V_V_0_sel_rd_i_1
       (.I0(\xStreamIn_V_V_0_state[1]_i_3_n_0 ),
        .I1(ap_start),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp0_iter0_reg),
        .I4(custDataStreamIn_V_V_0_sel),
        .O(custDataStreamIn_V_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    custDataStreamIn_V_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(custDataStreamIn_V_V_0_sel_rd_i_1_n_0),
        .Q(custDataStreamIn_V_V_0_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    custDataStreamIn_V_V_0_sel_wr_i_1
       (.I0(custDataStreamIn_V_V_TVALID),
        .I1(custDataStreamIn_V_V_TREADY),
        .I2(custDataStreamIn_V_V_0_sel_wr),
        .O(custDataStreamIn_V_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    custDataStreamIn_V_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(custDataStreamIn_V_V_0_sel_wr_i_1_n_0),
        .Q(custDataStreamIn_V_V_0_sel_wr),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hF8F8D8F8)) 
    \custDataStreamIn_V_V_0_state[0]_i_1 
       (.I0(custDataStreamIn_V_V_TREADY),
        .I1(custDataStreamIn_V_V_TVALID),
        .I2(\custDataStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(\xStreamIn_V_V_0_state[1]_i_3_n_0 ),
        .O(\custDataStreamIn_V_V_0_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h5DFF5D5D)) 
    \custDataStreamIn_V_V_0_state[1]_i_1 
       (.I0(\custDataStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(\xStreamIn_V_V_0_state[1]_i_3_n_0 ),
        .I3(custDataStreamIn_V_V_TVALID),
        .I4(custDataStreamIn_V_V_TREADY),
        .O(custDataStreamIn_V_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \custDataStreamIn_V_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\custDataStreamIn_V_V_0_state[0]_i_1_n_0 ),
        .Q(\custDataStreamIn_V_V_0_state_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \custDataStreamIn_V_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(custDataStreamIn_V_V_0_state),
        .Q(custDataStreamIn_V_V_TREADY),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'h00E2)) 
    \glLastTS_V[14]_i_1 
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_start),
        .I3(\xStreamIn_V_V_0_state[1]_i_3_n_0 ),
        .O(p_134_in));
  FDRE \glLastTS_V_load_reg_468_reg[0] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[0]),
        .Q(glLastTSReg_V[0]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[10] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[10]),
        .Q(glLastTSReg_V[10]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[11] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[11]),
        .Q(glLastTSReg_V[11]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[12] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[12]),
        .Q(glLastTSReg_V[12]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[13] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[13]),
        .Q(glLastTSReg_V[13]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[14] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[14]),
        .Q(glLastTSReg_V[14]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[15] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[15]),
        .Q(glLastTSReg_V[15]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[16] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[16]),
        .Q(glLastTSReg_V[16]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[17] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[17]),
        .Q(glLastTSReg_V[17]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[18] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[18]),
        .Q(glLastTSReg_V[18]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[19] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[19]),
        .Q(glLastTSReg_V[19]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[1] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[1]),
        .Q(glLastTSReg_V[1]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[20] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[20]),
        .Q(glLastTSReg_V[20]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[21] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[21]),
        .Q(glLastTSReg_V[21]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[22] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[22]),
        .Q(glLastTSReg_V[22]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[23] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[23]),
        .Q(glLastTSReg_V[23]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[24] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[24]),
        .Q(glLastTSReg_V[24]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[25] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[25]),
        .Q(glLastTSReg_V[25]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[26] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[26]),
        .Q(glLastTSReg_V[26]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[27] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[27]),
        .Q(glLastTSReg_V[27]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[28] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[28]),
        .Q(glLastTSReg_V[28]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[29] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[29]),
        .Q(glLastTSReg_V[29]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[2] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[2]),
        .Q(glLastTSReg_V[2]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[30] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[30]),
        .Q(glLastTSReg_V[30]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[31] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[31]),
        .Q(glLastTSReg_V[31]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[32] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[32]),
        .Q(glLastTSReg_V[32]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[33] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[33]),
        .Q(glLastTSReg_V[33]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[34] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[34]),
        .Q(glLastTSReg_V[34]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[35] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[35]),
        .Q(glLastTSReg_V[35]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[36] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[36]),
        .Q(glLastTSReg_V[36]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[37] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[37]),
        .Q(glLastTSReg_V[37]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[38] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[38]),
        .Q(glLastTSReg_V[38]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[39] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[39]),
        .Q(glLastTSReg_V[39]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[3] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[3]),
        .Q(glLastTSReg_V[3]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[40] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[40]),
        .Q(glLastTSReg_V[40]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[41] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[41]),
        .Q(glLastTSReg_V[41]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[42] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[42]),
        .Q(glLastTSReg_V[42]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[43] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[43]),
        .Q(glLastTSReg_V[43]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[44] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[44]),
        .Q(glLastTSReg_V[44]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[45] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[45]),
        .Q(glLastTSReg_V[45]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[46] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[46]),
        .Q(glLastTSReg_V[46]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[47] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[47]),
        .Q(glLastTSReg_V[47]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[48] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[48]),
        .Q(glLastTSReg_V[48]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[49] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[49]),
        .Q(glLastTSReg_V[49]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[4] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[4]),
        .Q(glLastTSReg_V[4]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[50] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[50]),
        .Q(glLastTSReg_V[50]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[51] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[51]),
        .Q(glLastTSReg_V[51]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[52] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[52]),
        .Q(glLastTSReg_V[52]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[53] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[53]),
        .Q(glLastTSReg_V[53]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[54] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[54]),
        .Q(glLastTSReg_V[54]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[55] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[55]),
        .Q(glLastTSReg_V[55]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[56] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[56]),
        .Q(glLastTSReg_V[56]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[57] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[57]),
        .Q(glLastTSReg_V[57]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[58] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[58]),
        .Q(glLastTSReg_V[58]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[59] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[59]),
        .Q(glLastTSReg_V[59]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[5] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[5]),
        .Q(glLastTSReg_V[5]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[60] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[60]),
        .Q(glLastTSReg_V[60]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[61] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[61]),
        .Q(glLastTSReg_V[61]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[62] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[62]),
        .Q(glLastTSReg_V[62]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[63] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[63]),
        .Q(glLastTSReg_V[63]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[6] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[6]),
        .Q(glLastTSReg_V[6]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[7] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[7]),
        .Q(glLastTSReg_V[7]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[8] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[8]),
        .Q(glLastTSReg_V[8]),
        .R(1'b0));
  FDRE \glLastTS_V_load_reg_468_reg[9] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(glLastTS_V[9]),
        .Q(glLastTSReg_V[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[0] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(\tmp_V_6_reg_429[0]_i_1_n_0 ),
        .Q(glLastTS_V[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[10] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(\tmp_V_6_reg_429[10]_i_1_n_0 ),
        .Q(glLastTS_V[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[11] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(\tmp_V_6_reg_429[11]_i_1_n_0 ),
        .Q(glLastTS_V[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[12] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(\tmp_V_6_reg_429[12]_i_1_n_0 ),
        .Q(glLastTS_V[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[13] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(\tmp_V_6_reg_429[13]_i_1_n_0 ),
        .Q(glLastTS_V[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[14] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(\tmp_V_6_reg_429[14]_i_1_n_0 ),
        .Q(glLastTS_V[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[15] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[0]),
        .Q(glLastTS_V[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[16] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[1]),
        .Q(glLastTS_V[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[17] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[2]),
        .Q(glLastTS_V[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[18] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[3]),
        .Q(glLastTS_V[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[19] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[4]),
        .Q(glLastTS_V[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[1] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(\tmp_V_6_reg_429[1]_i_1_n_0 ),
        .Q(glLastTS_V[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[20] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[5]),
        .Q(glLastTS_V[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[21] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[6]),
        .Q(glLastTS_V[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[22] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[7]),
        .Q(glLastTS_V[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[23] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[8]),
        .Q(glLastTS_V[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[24] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[9]),
        .Q(glLastTS_V[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[25] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[10]),
        .Q(glLastTS_V[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[26] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[11]),
        .Q(glLastTS_V[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[27] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[12]),
        .Q(glLastTS_V[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[28] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[13]),
        .Q(glLastTS_V[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[29] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[14]),
        .Q(glLastTS_V[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[2] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(\tmp_V_6_reg_429[2]_i_1_n_0 ),
        .Q(glLastTS_V[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[30] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[15]),
        .Q(glLastTS_V[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[31] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[16]),
        .Q(glLastTS_V[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[32] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[17]),
        .Q(glLastTS_V[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[33] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[18]),
        .Q(glLastTS_V[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[34] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[19]),
        .Q(glLastTS_V[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[35] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[20]),
        .Q(glLastTS_V[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[36] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[21]),
        .Q(glLastTS_V[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[37] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[22]),
        .Q(glLastTS_V[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[38] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[23]),
        .Q(glLastTS_V[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[39] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[24]),
        .Q(glLastTS_V[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[3] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(\tmp_V_6_reg_429[3]_i_1_n_0 ),
        .Q(glLastTS_V[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[40] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[25]),
        .Q(glLastTS_V[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[41] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[26]),
        .Q(glLastTS_V[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[42] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[27]),
        .Q(glLastTS_V[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[43] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[28]),
        .Q(glLastTS_V[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[44] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[29]),
        .Q(glLastTS_V[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[45] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[30]),
        .Q(glLastTS_V[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[46] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[31]),
        .Q(glLastTS_V[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[47] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[32]),
        .Q(glLastTS_V[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[48] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[33]),
        .Q(glLastTS_V[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[49] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[34]),
        .Q(glLastTS_V[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[4] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(\tmp_V_6_reg_429[4]_i_1_n_0 ),
        .Q(glLastTS_V[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[50] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[35]),
        .Q(glLastTS_V[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[51] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[36]),
        .Q(glLastTS_V[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[52] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[37]),
        .Q(glLastTS_V[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[53] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[38]),
        .Q(glLastTS_V[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[54] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[39]),
        .Q(glLastTS_V[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[55] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[40]),
        .Q(glLastTS_V[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[56] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[41]),
        .Q(glLastTS_V[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[57] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[42]),
        .Q(glLastTS_V[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[58] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[43]),
        .Q(glLastTS_V[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[59] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[44]),
        .Q(glLastTS_V[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[5] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(\tmp_V_6_reg_429[5]_i_1_n_0 ),
        .Q(glLastTS_V[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[60] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[45]),
        .Q(glLastTS_V[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[61] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[46]),
        .Q(glLastTS_V[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[62] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[47]),
        .Q(glLastTS_V[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[63] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(tsWrap_V_fu_270_p4[48]),
        .Q(glLastTS_V[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[6] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(\tmp_V_6_reg_429[6]_i_1_n_0 ),
        .Q(glLastTS_V[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[7] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(\tmp_V_6_reg_429[7]_i_1_n_0 ),
        .Q(glLastTS_V[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[8] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(\tmp_V_6_reg_429[8]_i_1_n_0 ),
        .Q(glLastTS_V[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastTS_V_reg[9] 
       (.C(ap_clk),
        .CE(p_134_in),
        .D(\tmp_V_6_reg_429[9]_i_1_n_0 ),
        .Q(glLastTS_V[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastY_V_reg[0] 
       (.C(ap_clk),
        .CE(ap_ready),
        .D(yReg_V[0]),
        .Q(glLastYReg_V[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastY_V_reg[10] 
       (.C(ap_clk),
        .CE(ap_ready),
        .D(yReg_V[10]),
        .Q(glLastYReg_V[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastY_V_reg[11] 
       (.C(ap_clk),
        .CE(ap_ready),
        .D(yReg_V[11]),
        .Q(glLastYReg_V[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastY_V_reg[12] 
       (.C(ap_clk),
        .CE(ap_ready),
        .D(yReg_V[12]),
        .Q(glLastYReg_V[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastY_V_reg[13] 
       (.C(ap_clk),
        .CE(ap_ready),
        .D(yReg_V[13]),
        .Q(glLastYReg_V[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastY_V_reg[14] 
       (.C(ap_clk),
        .CE(ap_ready),
        .D(yReg_V[14]),
        .Q(glLastYReg_V[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastY_V_reg[15] 
       (.C(ap_clk),
        .CE(ap_ready),
        .D(yReg_V[15]),
        .Q(glLastYReg_V[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastY_V_reg[1] 
       (.C(ap_clk),
        .CE(ap_ready),
        .D(yReg_V[1]),
        .Q(glLastYReg_V[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastY_V_reg[2] 
       (.C(ap_clk),
        .CE(ap_ready),
        .D(yReg_V[2]),
        .Q(glLastYReg_V[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastY_V_reg[3] 
       (.C(ap_clk),
        .CE(ap_ready),
        .D(yReg_V[3]),
        .Q(glLastYReg_V[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastY_V_reg[4] 
       (.C(ap_clk),
        .CE(ap_ready),
        .D(yReg_V[4]),
        .Q(glLastYReg_V[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastY_V_reg[5] 
       (.C(ap_clk),
        .CE(ap_ready),
        .D(yReg_V[5]),
        .Q(glLastYReg_V[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastY_V_reg[6] 
       (.C(ap_clk),
        .CE(ap_ready),
        .D(yReg_V[6]),
        .Q(glLastYReg_V[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastY_V_reg[7] 
       (.C(ap_clk),
        .CE(ap_ready),
        .D(yReg_V[7]),
        .Q(glLastYReg_V[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastY_V_reg[8] 
       (.C(ap_clk),
        .CE(ap_ready),
        .D(yReg_V[8]),
        .Q(glLastYReg_V[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \glLastY_V_reg[9] 
       (.C(ap_clk),
        .CE(ap_ready),
        .D(yReg_V[9]),
        .Q(glLastYReg_V[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \polStreamIn_V_V_0_payload_A[0]_i_1 
       (.I0(polStreamIn_V_V_TDATA[0]),
        .I1(polStreamIn_V_V_0_sel_wr),
        .I2(polStreamIn_V_V_TREADY),
        .I3(\polStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I4(polStreamIn_V_V_0_payload_A),
        .O(\polStreamIn_V_V_0_payload_A[0]_i_1_n_0 ));
  FDRE \polStreamIn_V_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\polStreamIn_V_V_0_payload_A[0]_i_1_n_0 ),
        .Q(polStreamIn_V_V_0_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \polStreamIn_V_V_0_payload_B[0]_i_1 
       (.I0(polStreamIn_V_V_TDATA[0]),
        .I1(polStreamIn_V_V_0_sel_wr),
        .I2(polStreamIn_V_V_TREADY),
        .I3(\polStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I4(polStreamIn_V_V_0_payload_B),
        .O(\polStreamIn_V_V_0_payload_B[0]_i_1_n_0 ));
  FDRE \polStreamIn_V_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\polStreamIn_V_V_0_payload_B[0]_i_1_n_0 ),
        .Q(polStreamIn_V_V_0_payload_B),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBABF4540)) 
    polStreamIn_V_V_0_sel_rd_i_1
       (.I0(\xStreamIn_V_V_0_state[1]_i_3_n_0 ),
        .I1(ap_start),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp0_iter0_reg),
        .I4(polStreamIn_V_V_0_sel),
        .O(polStreamIn_V_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    polStreamIn_V_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(polStreamIn_V_V_0_sel_rd_i_1_n_0),
        .Q(polStreamIn_V_V_0_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    polStreamIn_V_V_0_sel_wr_i_1
       (.I0(polStreamIn_V_V_TVALID),
        .I1(polStreamIn_V_V_TREADY),
        .I2(polStreamIn_V_V_0_sel_wr),
        .O(polStreamIn_V_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    polStreamIn_V_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(polStreamIn_V_V_0_sel_wr_i_1_n_0),
        .Q(polStreamIn_V_V_0_sel_wr),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hF8F8D8F8)) 
    \polStreamIn_V_V_0_state[0]_i_1 
       (.I0(polStreamIn_V_V_TREADY),
        .I1(polStreamIn_V_V_TVALID),
        .I2(\polStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(\xStreamIn_V_V_0_state[1]_i_3_n_0 ),
        .O(\polStreamIn_V_V_0_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h5DFF5D5D)) 
    \polStreamIn_V_V_0_state[1]_i_1 
       (.I0(\polStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(\xStreamIn_V_V_0_state[1]_i_3_n_0 ),
        .I3(polStreamIn_V_V_TVALID),
        .I4(polStreamIn_V_V_TREADY),
        .O(polStreamIn_V_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \polStreamIn_V_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\polStreamIn_V_V_0_state[0]_i_1_n_0 ),
        .Q(\polStreamIn_V_V_0_state_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \polStreamIn_V_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(polStreamIn_V_V_0_state),
        .Q(polStreamIn_V_V_TREADY),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'h4F44)) 
    \streamOut_V_V_1_payload_A[0]_i_1 
       (.I0(\streamOut_V_V_1_payload_A[0]_i_2_n_0 ),
        .I1(tsReg_V[0]),
        .I2(\streamOut_V_V_1_payload_A[0]_i_3_n_0 ),
        .I3(\streamOut_V_V_1_payload_A[0]_i_4_n_0 ),
        .O(\streamOut_V_V_1_payload_A[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFEFEFEF)) 
    \streamOut_V_V_1_payload_A[0]_i_2 
       (.I0(\ap_CS_fsm[3]_i_3_n_0 ),
        .I1(tmp_6_reg_478),
        .I2(\streamOut_V_V_1_payload_A[15]_i_3_n_0 ),
        .I3(\ap_CS_fsm_reg_n_0_[0] ),
        .I4(ap_enable_reg_pp0_iter1_reg_n_0),
        .O(\streamOut_V_V_1_payload_A[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F77000000000000)) 
    \streamOut_V_V_1_payload_A[0]_i_3 
       (.I0(tmpWradDiffVal_V_fu_358_p2[0]),
        .I1(tmp_6_reg_478),
        .I2(yReg_V[0]),
        .I3(\ap_CS_fsm[3]_i_3_n_0 ),
        .I4(\streamOut_V_V_1_payload_A[12]_i_2_n_0 ),
        .I5(\streamOut_V_V_1_payload_A[15]_i_3_n_0 ),
        .O(\streamOut_V_V_1_payload_A[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFF077F0)) 
    \streamOut_V_V_1_payload_A[0]_i_4 
       (.I0(ap_enable_reg_pp0_iter1_reg_n_0),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(tmp_V_9_reg_463[0]),
        .I3(\streamOut_V_V_1_payload_A[15]_i_3_n_0 ),
        .I4(tmp_7_reg_458[0]),
        .O(\streamOut_V_V_1_payload_A[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF4FFFFFFF4FF00FF)) 
    \streamOut_V_V_1_payload_A[10]_i_1 
       (.I0(\streamOut_V_V_1_payload_A[10]_i_2_n_0 ),
        .I1(tsReg_V[10]),
        .I2(\streamOut_V_V_1_payload_A[10]_i_3_n_0 ),
        .I3(\streamOut_V_V_1_payload_A[15]_i_3_n_0 ),
        .I4(\streamOut_V_V_1_payload_A[12]_i_2_n_0 ),
        .I5(tmp_7_reg_458[10]),
        .O(\streamOut_V_V_1_payload_A[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \streamOut_V_V_1_payload_A[10]_i_2 
       (.I0(tmp_6_reg_478),
        .I1(\ap_CS_fsm[3]_i_3_n_0 ),
        .O(\streamOut_V_V_1_payload_A[10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \streamOut_V_V_1_payload_A[10]_i_3 
       (.I0(yReg_V[10]),
        .I1(\ap_CS_fsm[3]_i_3_n_0 ),
        .I2(tmp_6_reg_478),
        .I3(tmpWradDiffVal_V_fu_358_p2[10]),
        .O(\streamOut_V_V_1_payload_A[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hA0303030)) 
    \streamOut_V_V_1_payload_A[11]_i_1 
       (.I0(tmp_7_reg_458[11]),
        .I1(\streamOut_V_V_1_payload_A[11]_i_2_n_0 ),
        .I2(\streamOut_V_V_1_payload_A[15]_i_3_n_0 ),
        .I3(\ap_CS_fsm_reg_n_0_[0] ),
        .I4(ap_enable_reg_pp0_iter1_reg_n_0),
        .O(\streamOut_V_V_1_payload_A[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h50535F53)) 
    \streamOut_V_V_1_payload_A[11]_i_2 
       (.I0(yReg_V[11]),
        .I1(tsReg_V[11]),
        .I2(\ap_CS_fsm[3]_i_3_n_0 ),
        .I3(tmp_6_reg_478),
        .I4(tmpWradDiffVal_V_fu_358_p2[11]),
        .O(\streamOut_V_V_1_payload_A[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FE00FF000000)) 
    \streamOut_V_V_1_payload_A[12]_i_1 
       (.I0(tsReg_V[12]),
        .I1(tmp_6_reg_478),
        .I2(\ap_CS_fsm[3]_i_3_n_0 ),
        .I3(\streamOut_V_V_1_payload_A[15]_i_3_n_0 ),
        .I4(tmp_V_reg_443),
        .I5(\streamOut_V_V_1_payload_A[12]_i_2_n_0 ),
        .O(\streamOut_V_V_1_payload_A[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \streamOut_V_V_1_payload_A[12]_i_2 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .O(\streamOut_V_V_1_payload_A[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hD5D5D5D5FFFFFFD5)) 
    \streamOut_V_V_1_payload_A[13]_i_1 
       (.I0(\streamOut_V_V_1_payload_A[15]_i_3_n_0 ),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(tmp_6_reg_478),
        .I4(tsReg_V[13]),
        .I5(\ap_CS_fsm[3]_i_3_n_0 ),
        .O(\streamOut_V_V_1_payload_A[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACFAAAAAACFAACF)) 
    \streamOut_V_V_1_payload_A[14]_i_1 
       (.I0(streamOut_V_V_1_payload_A[14]),
        .I1(\streamOut_V_V_1_payload_A[14]_i_2_n_0 ),
        .I2(\streamOut_V_V_1_payload_A[15]_i_3_n_0 ),
        .I3(streamOut_V_V_1_sel_wr),
        .I4(streamOut_V_V_1_ack_in),
        .I5(streamOut_V_V_TVALID),
        .O(\streamOut_V_V_1_payload_A[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h15151500)) 
    \streamOut_V_V_1_payload_A[14]_i_2 
       (.I0(\ap_CS_fsm[3]_i_3_n_0 ),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(tsReg_V[14]),
        .I4(tmp_6_reg_478),
        .O(\streamOut_V_V_1_payload_A[14]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \streamOut_V_V_1_payload_A[15]_i_1 
       (.I0(streamOut_V_V_1_sel_wr),
        .I1(streamOut_V_V_1_ack_in),
        .I2(streamOut_V_V_TVALID),
        .O(streamOut_V_V_1_load_A));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000070)) 
    \streamOut_V_V_1_payload_A[15]_i_2 
       (.I0(ap_enable_reg_pp0_iter1_reg_n_0),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(\streamOut_V_V_1_payload_A[15]_i_3_n_0 ),
        .I3(tmp_6_reg_478),
        .I4(\ap_CS_fsm[3]_i_3_n_0 ),
        .O(\streamOut_V_V_1_payload_A[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFFFFFFFFFF)) 
    \streamOut_V_V_1_payload_A[15]_i_3 
       (.I0(\streamOut_V_V_1_payload_A[15]_i_4_n_0 ),
        .I1(ap_start),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp0_iter0_reg),
        .I4(ap_CS_fsm_pp0_stage1),
        .I5(ap_enable_reg_pp0_iter1_reg_n_0),
        .O(\streamOut_V_V_1_payload_A[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \streamOut_V_V_1_payload_A[15]_i_4 
       (.I0(\yStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I1(\custDataStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I2(\polStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I3(\tsStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I4(\xStreamIn_V_V_0_state_reg_n_0_[0] ),
        .O(\streamOut_V_V_1_payload_A[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBBB3BBBC8880888)) 
    \streamOut_V_V_1_payload_A[1]_i_1 
       (.I0(\streamOut_V_V_1_payload_A[1]_i_2_n_0 ),
        .I1(\streamOut_V_V_1_payload_A[15]_i_3_n_0 ),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp0_iter1_reg_n_0),
        .I4(tmp_7_reg_458[1]),
        .I5(tmp_V_9_reg_463[1]),
        .O(\streamOut_V_V_1_payload_A[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \streamOut_V_V_1_payload_A[1]_i_2 
       (.I0(tmpWradDiffVal_V_fu_358_p2[1]),
        .I1(tmp_6_reg_478),
        .I2(tsReg_V[1]),
        .I3(\ap_CS_fsm[3]_i_3_n_0 ),
        .I4(yReg_V[1]),
        .O(\streamOut_V_V_1_payload_A[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBBB3BBBC8880888)) 
    \streamOut_V_V_1_payload_A[2]_i_1 
       (.I0(\streamOut_V_V_1_payload_A[2]_i_2_n_0 ),
        .I1(\streamOut_V_V_1_payload_A[15]_i_3_n_0 ),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp0_iter1_reg_n_0),
        .I4(tmp_7_reg_458[2]),
        .I5(tmp_V_9_reg_463[2]),
        .O(\streamOut_V_V_1_payload_A[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \streamOut_V_V_1_payload_A[2]_i_2 
       (.I0(tmpWradDiffVal_V_fu_358_p2[2]),
        .I1(tmp_6_reg_478),
        .I2(tsReg_V[2]),
        .I3(\ap_CS_fsm[3]_i_3_n_0 ),
        .I4(yReg_V[2]),
        .O(\streamOut_V_V_1_payload_A[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBBB3BBBC8880888)) 
    \streamOut_V_V_1_payload_A[3]_i_1 
       (.I0(\streamOut_V_V_1_payload_A[3]_i_2_n_0 ),
        .I1(\streamOut_V_V_1_payload_A[15]_i_3_n_0 ),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp0_iter1_reg_n_0),
        .I4(tmp_7_reg_458[3]),
        .I5(tmp_V_9_reg_463[3]),
        .O(\streamOut_V_V_1_payload_A[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFACA0AC)) 
    \streamOut_V_V_1_payload_A[3]_i_2 
       (.I0(yReg_V[3]),
        .I1(tsReg_V[3]),
        .I2(\ap_CS_fsm[3]_i_3_n_0 ),
        .I3(tmp_6_reg_478),
        .I4(tmpWradDiffVal_V_fu_358_p2[3]),
        .O(\streamOut_V_V_1_payload_A[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBBB3BBBC8880888)) 
    \streamOut_V_V_1_payload_A[4]_i_1 
       (.I0(\streamOut_V_V_1_payload_A[4]_i_2_n_0 ),
        .I1(\streamOut_V_V_1_payload_A[15]_i_3_n_0 ),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp0_iter1_reg_n_0),
        .I4(tmp_7_reg_458[4]),
        .I5(tmp_V_9_reg_463[4]),
        .O(\streamOut_V_V_1_payload_A[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \streamOut_V_V_1_payload_A[4]_i_2 
       (.I0(tmpWradDiffVal_V_fu_358_p2[4]),
        .I1(tmp_6_reg_478),
        .I2(tsReg_V[4]),
        .I3(\ap_CS_fsm[3]_i_3_n_0 ),
        .I4(yReg_V[4]),
        .O(\streamOut_V_V_1_payload_A[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB8880000)) 
    \streamOut_V_V_1_payload_A[5]_i_1 
       (.I0(yReg_V[5]),
        .I1(\ap_CS_fsm[3]_i_3_n_0 ),
        .I2(tmp_6_reg_478),
        .I3(tmpWradDiffVal_V_fu_358_p2[5]),
        .I4(\streamOut_V_V_1_payload_A[8]_i_2_n_0 ),
        .I5(\streamOut_V_V_1_payload_A[5]_i_2_n_0 ),
        .O(\streamOut_V_V_1_payload_A[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F0FFF044F000F0)) 
    \streamOut_V_V_1_payload_A[5]_i_2 
       (.I0(\streamOut_V_V_1_payload_A[10]_i_2_n_0 ),
        .I1(tsReg_V[5]),
        .I2(tmp_V_9_reg_463[5]),
        .I3(\streamOut_V_V_1_payload_A[15]_i_3_n_0 ),
        .I4(\streamOut_V_V_1_payload_A[12]_i_2_n_0 ),
        .I5(tmp_7_reg_458[5]),
        .O(\streamOut_V_V_1_payload_A[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCAA0FAA0FAA0FAA)) 
    \streamOut_V_V_1_payload_A[6]_i_1 
       (.I0(tmp_V_9_reg_463[6]),
        .I1(tmp_7_reg_458[6]),
        .I2(\streamOut_V_V_1_payload_A[6]_i_2_n_0 ),
        .I3(\streamOut_V_V_1_payload_A[15]_i_3_n_0 ),
        .I4(\ap_CS_fsm_reg_n_0_[0] ),
        .I5(ap_enable_reg_pp0_iter1_reg_n_0),
        .O(\streamOut_V_V_1_payload_A[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h50535F53)) 
    \streamOut_V_V_1_payload_A[6]_i_2 
       (.I0(yReg_V[6]),
        .I1(tsReg_V[6]),
        .I2(\ap_CS_fsm[3]_i_3_n_0 ),
        .I3(tmp_6_reg_478),
        .I4(tmpWradDiffVal_V_fu_358_p2[6]),
        .O(\streamOut_V_V_1_payload_A[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFC5C5C5C0C5C5C5C)) 
    \streamOut_V_V_1_payload_A[7]_i_1 
       (.I0(\streamOut_V_V_1_payload_A[7]_i_2_n_0 ),
        .I1(tmp_V_9_reg_463[7]),
        .I2(\streamOut_V_V_1_payload_A[15]_i_3_n_0 ),
        .I3(\ap_CS_fsm_reg_n_0_[0] ),
        .I4(ap_enable_reg_pp0_iter1_reg_n_0),
        .I5(tmp_7_reg_458[7]),
        .O(\streamOut_V_V_1_payload_A[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0047FF47)) 
    \streamOut_V_V_1_payload_A[7]_i_2 
       (.I0(tmpWradDiffVal_V_fu_358_p2[7]),
        .I1(tmp_6_reg_478),
        .I2(tsReg_V[7]),
        .I3(\ap_CS_fsm[3]_i_3_n_0 ),
        .I4(yReg_V[7]),
        .O(\streamOut_V_V_1_payload_A[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB8880000)) 
    \streamOut_V_V_1_payload_A[8]_i_1 
       (.I0(yReg_V[8]),
        .I1(\ap_CS_fsm[3]_i_3_n_0 ),
        .I2(tmp_6_reg_478),
        .I3(tmpWradDiffVal_V_fu_358_p2[8]),
        .I4(\streamOut_V_V_1_payload_A[8]_i_2_n_0 ),
        .I5(\streamOut_V_V_1_payload_A[8]_i_3_n_0 ),
        .O(\streamOut_V_V_1_payload_A[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \streamOut_V_V_1_payload_A[8]_i_2 
       (.I0(\streamOut_V_V_1_payload_A[15]_i_3_n_0 ),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .O(\streamOut_V_V_1_payload_A[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F0FFF044F000F0)) 
    \streamOut_V_V_1_payload_A[8]_i_3 
       (.I0(\streamOut_V_V_1_payload_A[10]_i_2_n_0 ),
        .I1(tsReg_V[8]),
        .I2(tmp_V_9_reg_463[8]),
        .I3(\streamOut_V_V_1_payload_A[15]_i_3_n_0 ),
        .I4(\streamOut_V_V_1_payload_A[12]_i_2_n_0 ),
        .I5(tmp_7_reg_458[8]),
        .O(\streamOut_V_V_1_payload_A[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCAA0FAA0FAA0FAA)) 
    \streamOut_V_V_1_payload_A[9]_i_1 
       (.I0(tmp_V_9_reg_463[9]),
        .I1(tmp_7_reg_458[9]),
        .I2(\streamOut_V_V_1_payload_A[9]_i_2_n_0 ),
        .I3(\streamOut_V_V_1_payload_A[15]_i_3_n_0 ),
        .I4(\ap_CS_fsm_reg_n_0_[0] ),
        .I5(ap_enable_reg_pp0_iter1_reg_n_0),
        .O(\streamOut_V_V_1_payload_A[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0047FF47)) 
    \streamOut_V_V_1_payload_A[9]_i_2 
       (.I0(tmpWradDiffVal_V_fu_358_p2[9]),
        .I1(tmp_6_reg_478),
        .I2(tsReg_V[9]),
        .I3(\ap_CS_fsm[3]_i_3_n_0 ),
        .I4(yReg_V[9]),
        .O(\streamOut_V_V_1_payload_A[9]_i_2_n_0 ));
  FDRE \streamOut_V_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_load_A),
        .D(\streamOut_V_V_1_payload_A[0]_i_1_n_0 ),
        .Q(streamOut_V_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \streamOut_V_V_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_load_A),
        .D(\streamOut_V_V_1_payload_A[10]_i_1_n_0 ),
        .Q(streamOut_V_V_1_payload_A[10]),
        .R(1'b0));
  FDRE \streamOut_V_V_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_load_A),
        .D(\streamOut_V_V_1_payload_A[11]_i_1_n_0 ),
        .Q(streamOut_V_V_1_payload_A[11]),
        .R(1'b0));
  FDRE \streamOut_V_V_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_load_A),
        .D(\streamOut_V_V_1_payload_A[12]_i_1_n_0 ),
        .Q(streamOut_V_V_1_payload_A[12]),
        .R(1'b0));
  FDRE \streamOut_V_V_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_load_A),
        .D(\streamOut_V_V_1_payload_A[13]_i_1_n_0 ),
        .Q(streamOut_V_V_1_payload_A[13]),
        .R(1'b0));
  FDRE \streamOut_V_V_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\streamOut_V_V_1_payload_A[14]_i_1_n_0 ),
        .Q(streamOut_V_V_1_payload_A[14]),
        .R(1'b0));
  FDRE \streamOut_V_V_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_load_A),
        .D(\streamOut_V_V_1_payload_A[15]_i_2_n_0 ),
        .Q(streamOut_V_V_1_payload_A[15]),
        .R(1'b0));
  FDRE \streamOut_V_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_load_A),
        .D(\streamOut_V_V_1_payload_A[1]_i_1_n_0 ),
        .Q(streamOut_V_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \streamOut_V_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_load_A),
        .D(\streamOut_V_V_1_payload_A[2]_i_1_n_0 ),
        .Q(streamOut_V_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \streamOut_V_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_load_A),
        .D(\streamOut_V_V_1_payload_A[3]_i_1_n_0 ),
        .Q(streamOut_V_V_1_payload_A[3]),
        .R(1'b0));
  FDRE \streamOut_V_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_load_A),
        .D(\streamOut_V_V_1_payload_A[4]_i_1_n_0 ),
        .Q(streamOut_V_V_1_payload_A[4]),
        .R(1'b0));
  FDRE \streamOut_V_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_load_A),
        .D(\streamOut_V_V_1_payload_A[5]_i_1_n_0 ),
        .Q(streamOut_V_V_1_payload_A[5]),
        .R(1'b0));
  FDRE \streamOut_V_V_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_load_A),
        .D(\streamOut_V_V_1_payload_A[6]_i_1_n_0 ),
        .Q(streamOut_V_V_1_payload_A[6]),
        .R(1'b0));
  FDRE \streamOut_V_V_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_load_A),
        .D(\streamOut_V_V_1_payload_A[7]_i_1_n_0 ),
        .Q(streamOut_V_V_1_payload_A[7]),
        .R(1'b0));
  FDRE \streamOut_V_V_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_load_A),
        .D(\streamOut_V_V_1_payload_A[8]_i_1_n_0 ),
        .Q(streamOut_V_V_1_payload_A[8]),
        .R(1'b0));
  FDRE \streamOut_V_V_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_load_A),
        .D(\streamOut_V_V_1_payload_A[9]_i_1_n_0 ),
        .Q(streamOut_V_V_1_payload_A[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCFAAAAAACFAACFAA)) 
    \streamOut_V_V_1_payload_B[14]_i_1 
       (.I0(streamOut_V_V_1_payload_B[14]),
        .I1(\streamOut_V_V_1_payload_A[14]_i_2_n_0 ),
        .I2(\streamOut_V_V_1_payload_A[15]_i_3_n_0 ),
        .I3(streamOut_V_V_1_sel_wr),
        .I4(streamOut_V_V_1_ack_in),
        .I5(streamOut_V_V_TVALID),
        .O(\streamOut_V_V_1_payload_B[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \streamOut_V_V_1_payload_B[15]_i_1 
       (.I0(streamOut_V_V_1_sel_wr),
        .I1(streamOut_V_V_1_ack_in),
        .I2(streamOut_V_V_TVALID),
        .O(streamOut_V_V_1_load_B));
  FDRE \streamOut_V_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_load_B),
        .D(\streamOut_V_V_1_payload_A[0]_i_1_n_0 ),
        .Q(streamOut_V_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \streamOut_V_V_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_load_B),
        .D(\streamOut_V_V_1_payload_A[10]_i_1_n_0 ),
        .Q(streamOut_V_V_1_payload_B[10]),
        .R(1'b0));
  FDRE \streamOut_V_V_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_load_B),
        .D(\streamOut_V_V_1_payload_A[11]_i_1_n_0 ),
        .Q(streamOut_V_V_1_payload_B[11]),
        .R(1'b0));
  FDRE \streamOut_V_V_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_load_B),
        .D(\streamOut_V_V_1_payload_A[12]_i_1_n_0 ),
        .Q(streamOut_V_V_1_payload_B[12]),
        .R(1'b0));
  FDRE \streamOut_V_V_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_load_B),
        .D(\streamOut_V_V_1_payload_A[13]_i_1_n_0 ),
        .Q(streamOut_V_V_1_payload_B[13]),
        .R(1'b0));
  FDRE \streamOut_V_V_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\streamOut_V_V_1_payload_B[14]_i_1_n_0 ),
        .Q(streamOut_V_V_1_payload_B[14]),
        .R(1'b0));
  FDRE \streamOut_V_V_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_load_B),
        .D(\streamOut_V_V_1_payload_A[15]_i_2_n_0 ),
        .Q(streamOut_V_V_1_payload_B[15]),
        .R(1'b0));
  FDRE \streamOut_V_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_load_B),
        .D(\streamOut_V_V_1_payload_A[1]_i_1_n_0 ),
        .Q(streamOut_V_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \streamOut_V_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_load_B),
        .D(\streamOut_V_V_1_payload_A[2]_i_1_n_0 ),
        .Q(streamOut_V_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \streamOut_V_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_load_B),
        .D(\streamOut_V_V_1_payload_A[3]_i_1_n_0 ),
        .Q(streamOut_V_V_1_payload_B[3]),
        .R(1'b0));
  FDRE \streamOut_V_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_load_B),
        .D(\streamOut_V_V_1_payload_A[4]_i_1_n_0 ),
        .Q(streamOut_V_V_1_payload_B[4]),
        .R(1'b0));
  FDRE \streamOut_V_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_load_B),
        .D(\streamOut_V_V_1_payload_A[5]_i_1_n_0 ),
        .Q(streamOut_V_V_1_payload_B[5]),
        .R(1'b0));
  FDRE \streamOut_V_V_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_load_B),
        .D(\streamOut_V_V_1_payload_A[6]_i_1_n_0 ),
        .Q(streamOut_V_V_1_payload_B[6]),
        .R(1'b0));
  FDRE \streamOut_V_V_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_load_B),
        .D(\streamOut_V_V_1_payload_A[7]_i_1_n_0 ),
        .Q(streamOut_V_V_1_payload_B[7]),
        .R(1'b0));
  FDRE \streamOut_V_V_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_load_B),
        .D(\streamOut_V_V_1_payload_A[8]_i_1_n_0 ),
        .Q(streamOut_V_V_1_payload_B[8]),
        .R(1'b0));
  FDRE \streamOut_V_V_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(streamOut_V_V_1_load_B),
        .D(\streamOut_V_V_1_payload_A[9]_i_1_n_0 ),
        .Q(streamOut_V_V_1_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h78)) 
    streamOut_V_V_1_sel_rd_i_1
       (.I0(streamOut_V_V_TREADY),
        .I1(streamOut_V_V_TVALID),
        .I2(streamOut_V_V_1_sel),
        .O(streamOut_V_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    streamOut_V_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(streamOut_V_V_1_sel_rd_i_1_n_0),
        .Q(streamOut_V_V_1_sel),
        .R(ap_rst_n_inv));
  LUT2 #(
    .INIT(4'h6)) 
    streamOut_V_V_1_sel_wr_i_1
       (.I0(streamOut_V_V_1_sel_wr037_out),
        .I1(streamOut_V_V_1_sel_wr),
        .O(streamOut_V_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    streamOut_V_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(streamOut_V_V_1_sel_wr_i_1_n_0),
        .Q(streamOut_V_V_1_sel_wr),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hAEEE)) 
    \streamOut_V_V_1_state[0]_i_1 
       (.I0(streamOut_V_V_1_sel_wr037_out),
        .I1(streamOut_V_V_TVALID),
        .I2(streamOut_V_V_TREADY),
        .I3(streamOut_V_V_1_ack_in),
        .O(\streamOut_V_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0C0F0FF)) 
    \streamOut_V_V_1_state[0]_i_2 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(\ap_CS_fsm[3]_i_3_n_0 ),
        .I2(streamOut_V_V_1_ack_in),
        .I3(ap_enable_reg_pp0_iter1_reg_n_0),
        .I4(\streamOut_V_V_1_payload_A[15]_i_3_n_0 ),
        .I5(streamOut_V_V_1_sel_wr7),
        .O(streamOut_V_V_1_sel_wr037_out));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hBBFB)) 
    \streamOut_V_V_1_state[1]_i_1 
       (.I0(streamOut_V_V_TREADY),
        .I1(streamOut_V_V_TVALID),
        .I2(streamOut_V_V_1_ack_in),
        .I3(streamOut_V_V_1_sel_wr037_out),
        .O(streamOut_V_V_1_state));
  FDRE #(
    .INIT(1'b0)) 
    \streamOut_V_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\streamOut_V_V_1_state[0]_i_1_n_0 ),
        .Q(streamOut_V_V_TVALID),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \streamOut_V_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(streamOut_V_V_1_state),
        .Q(streamOut_V_V_1_ack_in),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \streamOut_V_V_TDATA[0]_INST_0 
       (.I0(streamOut_V_V_1_payload_B[0]),
        .I1(streamOut_V_V_1_payload_A[0]),
        .I2(streamOut_V_V_1_sel),
        .O(streamOut_V_V_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \streamOut_V_V_TDATA[10]_INST_0 
       (.I0(streamOut_V_V_1_payload_B[10]),
        .I1(streamOut_V_V_1_payload_A[10]),
        .I2(streamOut_V_V_1_sel),
        .O(streamOut_V_V_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \streamOut_V_V_TDATA[11]_INST_0 
       (.I0(streamOut_V_V_1_payload_B[11]),
        .I1(streamOut_V_V_1_payload_A[11]),
        .I2(streamOut_V_V_1_sel),
        .O(streamOut_V_V_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \streamOut_V_V_TDATA[12]_INST_0 
       (.I0(streamOut_V_V_1_payload_B[12]),
        .I1(streamOut_V_V_1_payload_A[12]),
        .I2(streamOut_V_V_1_sel),
        .O(streamOut_V_V_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \streamOut_V_V_TDATA[13]_INST_0 
       (.I0(streamOut_V_V_1_payload_B[13]),
        .I1(streamOut_V_V_1_payload_A[13]),
        .I2(streamOut_V_V_1_sel),
        .O(streamOut_V_V_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \streamOut_V_V_TDATA[14]_INST_0 
       (.I0(streamOut_V_V_1_payload_B[14]),
        .I1(streamOut_V_V_1_payload_A[14]),
        .I2(streamOut_V_V_1_sel),
        .O(streamOut_V_V_TDATA[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \streamOut_V_V_TDATA[15]_INST_0 
       (.I0(streamOut_V_V_1_payload_B[15]),
        .I1(streamOut_V_V_1_payload_A[15]),
        .I2(streamOut_V_V_1_sel),
        .O(streamOut_V_V_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \streamOut_V_V_TDATA[1]_INST_0 
       (.I0(streamOut_V_V_1_payload_B[1]),
        .I1(streamOut_V_V_1_payload_A[1]),
        .I2(streamOut_V_V_1_sel),
        .O(streamOut_V_V_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \streamOut_V_V_TDATA[2]_INST_0 
       (.I0(streamOut_V_V_1_payload_B[2]),
        .I1(streamOut_V_V_1_payload_A[2]),
        .I2(streamOut_V_V_1_sel),
        .O(streamOut_V_V_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \streamOut_V_V_TDATA[3]_INST_0 
       (.I0(streamOut_V_V_1_payload_B[3]),
        .I1(streamOut_V_V_1_payload_A[3]),
        .I2(streamOut_V_V_1_sel),
        .O(streamOut_V_V_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \streamOut_V_V_TDATA[4]_INST_0 
       (.I0(streamOut_V_V_1_payload_B[4]),
        .I1(streamOut_V_V_1_payload_A[4]),
        .I2(streamOut_V_V_1_sel),
        .O(streamOut_V_V_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \streamOut_V_V_TDATA[5]_INST_0 
       (.I0(streamOut_V_V_1_payload_B[5]),
        .I1(streamOut_V_V_1_payload_A[5]),
        .I2(streamOut_V_V_1_sel),
        .O(streamOut_V_V_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \streamOut_V_V_TDATA[6]_INST_0 
       (.I0(streamOut_V_V_1_payload_B[6]),
        .I1(streamOut_V_V_1_payload_A[6]),
        .I2(streamOut_V_V_1_sel),
        .O(streamOut_V_V_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \streamOut_V_V_TDATA[7]_INST_0 
       (.I0(streamOut_V_V_1_payload_B[7]),
        .I1(streamOut_V_V_1_payload_A[7]),
        .I2(streamOut_V_V_1_sel),
        .O(streamOut_V_V_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \streamOut_V_V_TDATA[8]_INST_0 
       (.I0(streamOut_V_V_1_payload_B[8]),
        .I1(streamOut_V_V_1_payload_A[8]),
        .I2(streamOut_V_V_1_sel),
        .O(streamOut_V_V_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \streamOut_V_V_TDATA[9]_INST_0 
       (.I0(streamOut_V_V_1_payload_B[9]),
        .I1(streamOut_V_V_1_payload_A[9]),
        .I2(streamOut_V_V_1_sel),
        .O(streamOut_V_V_TDATA[9]));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \tmp_4_reg_474[0]_i_10 
       (.I0(tsStreamIn_V_V_0_payload_B[62]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[62]),
        .I3(glLastTS_V[62]),
        .I4(tsWrap_V_fu_270_p4[46]),
        .I5(glLastTS_V[61]),
        .O(\tmp_4_reg_474[0]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h8A80202A)) 
    \tmp_4_reg_474[0]_i_12 
       (.I0(\tmp_4_reg_474[0]_i_25_n_0 ),
        .I1(tsStreamIn_V_V_0_payload_B[47]),
        .I2(tsStreamIn_V_V_0_sel),
        .I3(tsStreamIn_V_V_0_payload_A[47]),
        .I4(glLastTS_V[47]),
        .O(\tmp_4_reg_474[0]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hE21D0000)) 
    \tmp_4_reg_474[0]_i_13 
       (.I0(tsStreamIn_V_V_0_payload_A[42]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_B[42]),
        .I3(glLastTS_V[42]),
        .I4(\tmp_4_reg_474[0]_i_26_n_0 ),
        .O(\tmp_4_reg_474[0]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h8A80202A)) 
    \tmp_4_reg_474[0]_i_14 
       (.I0(\tmp_4_reg_474[0]_i_27_n_0 ),
        .I1(tsStreamIn_V_V_0_payload_B[41]),
        .I2(tsStreamIn_V_V_0_sel),
        .I3(tsStreamIn_V_V_0_payload_A[41]),
        .I4(glLastTS_V[41]),
        .O(\tmp_4_reg_474[0]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h8A80202A)) 
    \tmp_4_reg_474[0]_i_15 
       (.I0(\tmp_4_reg_474[0]_i_28_n_0 ),
        .I1(tsStreamIn_V_V_0_payload_B[36]),
        .I2(tsStreamIn_V_V_0_sel),
        .I3(tsStreamIn_V_V_0_payload_A[36]),
        .I4(glLastTS_V[36]),
        .O(\tmp_4_reg_474[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \tmp_4_reg_474[0]_i_16 
       (.I0(tsStreamIn_V_V_0_payload_B[57]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[57]),
        .I3(glLastTS_V[57]),
        .I4(tsWrap_V_fu_270_p4[43]),
        .I5(glLastTS_V[58]),
        .O(\tmp_4_reg_474[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    \tmp_4_reg_474[0]_i_17 
       (.I0(glLastTS_V[56]),
        .I1(tsStreamIn_V_V_0_payload_A[56]),
        .I2(tsStreamIn_V_V_0_sel),
        .I3(tsStreamIn_V_V_0_payload_B[56]),
        .I4(tsWrap_V_fu_270_p4[40]),
        .I5(glLastTS_V[55]),
        .O(\tmp_4_reg_474[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \tmp_4_reg_474[0]_i_18 
       (.I0(tsStreamIn_V_V_0_payload_B[51]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[51]),
        .I3(glLastTS_V[51]),
        .I4(tsWrap_V_fu_270_p4[37]),
        .I5(glLastTS_V[52]),
        .O(\tmp_4_reg_474[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \tmp_4_reg_474[0]_i_19 
       (.I0(tsStreamIn_V_V_0_payload_B[50]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[50]),
        .I3(glLastTS_V[50]),
        .I4(tsWrap_V_fu_270_p4[34]),
        .I5(glLastTS_V[49]),
        .O(\tmp_4_reg_474[0]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h8A80202A)) 
    \tmp_4_reg_474[0]_i_21 
       (.I0(\tmp_4_reg_474[0]_i_34_n_0 ),
        .I1(tsStreamIn_V_V_0_payload_B[35]),
        .I2(tsStreamIn_V_V_0_sel),
        .I3(tsStreamIn_V_V_0_payload_A[35]),
        .I4(glLastTS_V[35]),
        .O(\tmp_4_reg_474[0]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hE21D0000)) 
    \tmp_4_reg_474[0]_i_22 
       (.I0(tsStreamIn_V_V_0_payload_A[30]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_B[30]),
        .I3(glLastTS_V[30]),
        .I4(\tmp_4_reg_474[0]_i_35_n_0 ),
        .O(\tmp_4_reg_474[0]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h8A80202A)) 
    \tmp_4_reg_474[0]_i_23 
       (.I0(\tmp_4_reg_474[0]_i_36_n_0 ),
        .I1(tsStreamIn_V_V_0_payload_B[29]),
        .I2(tsStreamIn_V_V_0_sel),
        .I3(tsStreamIn_V_V_0_payload_A[29]),
        .I4(glLastTS_V[29]),
        .O(\tmp_4_reg_474[0]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h8A80202A)) 
    \tmp_4_reg_474[0]_i_24 
       (.I0(\tmp_4_reg_474[0]_i_37_n_0 ),
        .I1(tsStreamIn_V_V_0_payload_B[24]),
        .I2(tsStreamIn_V_V_0_sel),
        .I3(tsStreamIn_V_V_0_payload_A[24]),
        .I4(glLastTS_V[24]),
        .O(\tmp_4_reg_474[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \tmp_4_reg_474[0]_i_25 
       (.I0(tsStreamIn_V_V_0_payload_B[45]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[45]),
        .I3(glLastTS_V[45]),
        .I4(tsWrap_V_fu_270_p4[31]),
        .I5(glLastTS_V[46]),
        .O(\tmp_4_reg_474[0]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    \tmp_4_reg_474[0]_i_26 
       (.I0(glLastTS_V[44]),
        .I1(tsStreamIn_V_V_0_payload_A[44]),
        .I2(tsStreamIn_V_V_0_sel),
        .I3(tsStreamIn_V_V_0_payload_B[44]),
        .I4(tsWrap_V_fu_270_p4[28]),
        .I5(glLastTS_V[43]),
        .O(\tmp_4_reg_474[0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \tmp_4_reg_474[0]_i_27 
       (.I0(tsStreamIn_V_V_0_payload_B[39]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[39]),
        .I3(glLastTS_V[39]),
        .I4(tsWrap_V_fu_270_p4[25]),
        .I5(glLastTS_V[40]),
        .O(\tmp_4_reg_474[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \tmp_4_reg_474[0]_i_28 
       (.I0(tsStreamIn_V_V_0_payload_B[38]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[38]),
        .I3(glLastTS_V[38]),
        .I4(tsWrap_V_fu_270_p4[22]),
        .I5(glLastTS_V[37]),
        .O(\tmp_4_reg_474[0]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hA959)) 
    \tmp_4_reg_474[0]_i_3 
       (.I0(glLastTS_V[63]),
        .I1(tsStreamIn_V_V_0_payload_A[63]),
        .I2(tsStreamIn_V_V_0_sel),
        .I3(tsStreamIn_V_V_0_payload_B[63]),
        .O(\tmp_4_reg_474[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8A80202A)) 
    \tmp_4_reg_474[0]_i_30 
       (.I0(\tmp_4_reg_474[0]_i_42_n_0 ),
        .I1(tsStreamIn_V_V_0_payload_B[23]),
        .I2(tsStreamIn_V_V_0_sel),
        .I3(tsStreamIn_V_V_0_payload_A[23]),
        .I4(glLastTS_V[23]),
        .O(\tmp_4_reg_474[0]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'hE21D0000)) 
    \tmp_4_reg_474[0]_i_31 
       (.I0(tsStreamIn_V_V_0_payload_A[18]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_B[18]),
        .I3(glLastTS_V[18]),
        .I4(\tmp_4_reg_474[0]_i_43_n_0 ),
        .O(\tmp_4_reg_474[0]_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h8A80202A)) 
    \tmp_4_reg_474[0]_i_32 
       (.I0(\tmp_4_reg_474[0]_i_44_n_0 ),
        .I1(tsStreamIn_V_V_0_payload_B[17]),
        .I2(tsStreamIn_V_V_0_sel),
        .I3(tsStreamIn_V_V_0_payload_A[17]),
        .I4(glLastTS_V[17]),
        .O(\tmp_4_reg_474[0]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \tmp_4_reg_474[0]_i_33 
       (.I0(glLastTS_V[12]),
        .I1(\tmp_V_6_reg_429[12]_i_1_n_0 ),
        .I2(glLastTS_V[13]),
        .I3(\tmp_V_6_reg_429[13]_i_1_n_0 ),
        .I4(\tmp_V_6_reg_429[14]_i_1_n_0 ),
        .I5(glLastTS_V[14]),
        .O(\tmp_4_reg_474[0]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \tmp_4_reg_474[0]_i_34 
       (.I0(tsStreamIn_V_V_0_payload_B[33]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[33]),
        .I3(glLastTS_V[33]),
        .I4(tsWrap_V_fu_270_p4[19]),
        .I5(glLastTS_V[34]),
        .O(\tmp_4_reg_474[0]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    \tmp_4_reg_474[0]_i_35 
       (.I0(glLastTS_V[32]),
        .I1(tsStreamIn_V_V_0_payload_A[32]),
        .I2(tsStreamIn_V_V_0_sel),
        .I3(tsStreamIn_V_V_0_payload_B[32]),
        .I4(tsWrap_V_fu_270_p4[16]),
        .I5(glLastTS_V[31]),
        .O(\tmp_4_reg_474[0]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \tmp_4_reg_474[0]_i_36 
       (.I0(tsStreamIn_V_V_0_payload_B[27]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[27]),
        .I3(glLastTS_V[27]),
        .I4(tsWrap_V_fu_270_p4[13]),
        .I5(glLastTS_V[28]),
        .O(\tmp_4_reg_474[0]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \tmp_4_reg_474[0]_i_37 
       (.I0(tsStreamIn_V_V_0_payload_B[26]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[26]),
        .I3(glLastTS_V[26]),
        .I4(tsWrap_V_fu_270_p4[10]),
        .I5(glLastTS_V[25]),
        .O(\tmp_4_reg_474[0]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \tmp_4_reg_474[0]_i_38 
       (.I0(glLastTS_V[9]),
        .I1(\tmp_V_6_reg_429[9]_i_1_n_0 ),
        .I2(glLastTS_V[10]),
        .I3(\tmp_V_6_reg_429[10]_i_1_n_0 ),
        .I4(\tmp_V_6_reg_429[11]_i_1_n_0 ),
        .I5(glLastTS_V[11]),
        .O(\tmp_4_reg_474[0]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \tmp_4_reg_474[0]_i_39 
       (.I0(glLastTS_V[6]),
        .I1(\tmp_V_6_reg_429[6]_i_1_n_0 ),
        .I2(glLastTS_V[7]),
        .I3(\tmp_V_6_reg_429[7]_i_1_n_0 ),
        .I4(\tmp_V_6_reg_429[8]_i_1_n_0 ),
        .I5(glLastTS_V[8]),
        .O(\tmp_4_reg_474[0]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h8A80202A)) 
    \tmp_4_reg_474[0]_i_4 
       (.I0(\tmp_4_reg_474[0]_i_10_n_0 ),
        .I1(tsStreamIn_V_V_0_payload_B[60]),
        .I2(tsStreamIn_V_V_0_sel),
        .I3(tsStreamIn_V_V_0_payload_A[60]),
        .I4(glLastTS_V[60]),
        .O(\tmp_4_reg_474[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \tmp_4_reg_474[0]_i_40 
       (.I0(glLastTS_V[3]),
        .I1(\tmp_V_6_reg_429[3]_i_1_n_0 ),
        .I2(glLastTS_V[4]),
        .I3(\tmp_V_6_reg_429[4]_i_1_n_0 ),
        .I4(\tmp_V_6_reg_429[5]_i_1_n_0 ),
        .I5(glLastTS_V[5]),
        .O(\tmp_4_reg_474[0]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \tmp_4_reg_474[0]_i_41 
       (.I0(glLastTS_V[0]),
        .I1(\tmp_V_6_reg_429[0]_i_1_n_0 ),
        .I2(glLastTS_V[1]),
        .I3(\tmp_V_6_reg_429[1]_i_1_n_0 ),
        .I4(\tmp_V_6_reg_429[2]_i_1_n_0 ),
        .I5(glLastTS_V[2]),
        .O(\tmp_4_reg_474[0]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \tmp_4_reg_474[0]_i_42 
       (.I0(tsStreamIn_V_V_0_payload_B[21]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[21]),
        .I3(glLastTS_V[21]),
        .I4(tsWrap_V_fu_270_p4[7]),
        .I5(glLastTS_V[22]),
        .O(\tmp_4_reg_474[0]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    \tmp_4_reg_474[0]_i_43 
       (.I0(glLastTS_V[20]),
        .I1(tsStreamIn_V_V_0_payload_A[20]),
        .I2(tsStreamIn_V_V_0_sel),
        .I3(tsStreamIn_V_V_0_payload_B[20]),
        .I4(tsWrap_V_fu_270_p4[4]),
        .I5(glLastTS_V[19]),
        .O(\tmp_4_reg_474[0]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \tmp_4_reg_474[0]_i_44 
       (.I0(tsStreamIn_V_V_0_payload_B[15]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[15]),
        .I3(glLastTS_V[15]),
        .I4(tsWrap_V_fu_270_p4[1]),
        .I5(glLastTS_V[16]),
        .O(\tmp_4_reg_474[0]_i_44_n_0 ));
  LUT5 #(
    .INIT(32'h8A80202A)) 
    \tmp_4_reg_474[0]_i_6 
       (.I0(\tmp_4_reg_474[0]_i_16_n_0 ),
        .I1(tsStreamIn_V_V_0_payload_B[59]),
        .I2(tsStreamIn_V_V_0_sel),
        .I3(tsStreamIn_V_V_0_payload_A[59]),
        .I4(glLastTS_V[59]),
        .O(\tmp_4_reg_474[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hE21D0000)) 
    \tmp_4_reg_474[0]_i_7 
       (.I0(tsStreamIn_V_V_0_payload_A[54]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_B[54]),
        .I3(glLastTS_V[54]),
        .I4(\tmp_4_reg_474[0]_i_17_n_0 ),
        .O(\tmp_4_reg_474[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8A80202A)) 
    \tmp_4_reg_474[0]_i_8 
       (.I0(\tmp_4_reg_474[0]_i_18_n_0 ),
        .I1(tsStreamIn_V_V_0_payload_B[53]),
        .I2(tsStreamIn_V_V_0_sel),
        .I3(tsStreamIn_V_V_0_payload_A[53]),
        .I4(glLastTS_V[53]),
        .O(\tmp_4_reg_474[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h8A80202A)) 
    \tmp_4_reg_474[0]_i_9 
       (.I0(\tmp_4_reg_474[0]_i_19_n_0 ),
        .I1(tsStreamIn_V_V_0_payload_B[48]),
        .I2(tsStreamIn_V_V_0_sel),
        .I3(tsStreamIn_V_V_0_payload_A[48]),
        .I4(glLastTS_V[48]),
        .O(\tmp_4_reg_474[0]_i_9_n_0 ));
  FDRE \tmp_4_reg_474_reg[0] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tmp_4_fu_300_p2),
        .Q(tmp_4_reg_474),
        .R(1'b0));
  CARRY4 \tmp_4_reg_474_reg[0]_i_1 
       (.CI(\tmp_4_reg_474_reg[0]_i_2_n_0 ),
        .CO({\NLW_tmp_4_reg_474_reg[0]_i_1_CO_UNCONNECTED [3:2],tmp_4_fu_300_p2,\tmp_4_reg_474_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_tmp_4_reg_474_reg[0]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\tmp_4_reg_474[0]_i_3_n_0 ,\tmp_4_reg_474[0]_i_4_n_0 }));
  CARRY4 \tmp_4_reg_474_reg[0]_i_11 
       (.CI(\tmp_4_reg_474_reg[0]_i_20_n_0 ),
        .CO({\tmp_4_reg_474_reg[0]_i_11_n_0 ,\tmp_4_reg_474_reg[0]_i_11_n_1 ,\tmp_4_reg_474_reg[0]_i_11_n_2 ,\tmp_4_reg_474_reg[0]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_tmp_4_reg_474_reg[0]_i_11_O_UNCONNECTED [3:0]),
        .S({\tmp_4_reg_474[0]_i_21_n_0 ,\tmp_4_reg_474[0]_i_22_n_0 ,\tmp_4_reg_474[0]_i_23_n_0 ,\tmp_4_reg_474[0]_i_24_n_0 }));
  CARRY4 \tmp_4_reg_474_reg[0]_i_2 
       (.CI(\tmp_4_reg_474_reg[0]_i_5_n_0 ),
        .CO({\tmp_4_reg_474_reg[0]_i_2_n_0 ,\tmp_4_reg_474_reg[0]_i_2_n_1 ,\tmp_4_reg_474_reg[0]_i_2_n_2 ,\tmp_4_reg_474_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_tmp_4_reg_474_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({\tmp_4_reg_474[0]_i_6_n_0 ,\tmp_4_reg_474[0]_i_7_n_0 ,\tmp_4_reg_474[0]_i_8_n_0 ,\tmp_4_reg_474[0]_i_9_n_0 }));
  CARRY4 \tmp_4_reg_474_reg[0]_i_20 
       (.CI(\tmp_4_reg_474_reg[0]_i_29_n_0 ),
        .CO({\tmp_4_reg_474_reg[0]_i_20_n_0 ,\tmp_4_reg_474_reg[0]_i_20_n_1 ,\tmp_4_reg_474_reg[0]_i_20_n_2 ,\tmp_4_reg_474_reg[0]_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_tmp_4_reg_474_reg[0]_i_20_O_UNCONNECTED [3:0]),
        .S({\tmp_4_reg_474[0]_i_30_n_0 ,\tmp_4_reg_474[0]_i_31_n_0 ,\tmp_4_reg_474[0]_i_32_n_0 ,\tmp_4_reg_474[0]_i_33_n_0 }));
  CARRY4 \tmp_4_reg_474_reg[0]_i_29 
       (.CI(1'b0),
        .CO({\tmp_4_reg_474_reg[0]_i_29_n_0 ,\tmp_4_reg_474_reg[0]_i_29_n_1 ,\tmp_4_reg_474_reg[0]_i_29_n_2 ,\tmp_4_reg_474_reg[0]_i_29_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_tmp_4_reg_474_reg[0]_i_29_O_UNCONNECTED [3:0]),
        .S({\tmp_4_reg_474[0]_i_38_n_0 ,\tmp_4_reg_474[0]_i_39_n_0 ,\tmp_4_reg_474[0]_i_40_n_0 ,\tmp_4_reg_474[0]_i_41_n_0 }));
  CARRY4 \tmp_4_reg_474_reg[0]_i_5 
       (.CI(\tmp_4_reg_474_reg[0]_i_11_n_0 ),
        .CO({\tmp_4_reg_474_reg[0]_i_5_n_0 ,\tmp_4_reg_474_reg[0]_i_5_n_1 ,\tmp_4_reg_474_reg[0]_i_5_n_2 ,\tmp_4_reg_474_reg[0]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_tmp_4_reg_474_reg[0]_i_5_O_UNCONNECTED [3:0]),
        .S({\tmp_4_reg_474[0]_i_12_n_0 ,\tmp_4_reg_474[0]_i_13_n_0 ,\tmp_4_reg_474[0]_i_14_n_0 ,\tmp_4_reg_474[0]_i_15_n_0 }));
  LUT6 #(
    .INIT(64'hBFBFFFBF80800080)) 
    \tmp_5_reg_504[0]_i_1 
       (.I0(tmp_5_fu_390_p2),
        .I1(tmp_4_reg_474),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1_reg_n_0),
        .I4(streamOut_V_V_1_ack_in),
        .I5(tmp_5_reg_504),
        .O(\tmp_5_reg_504[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp_5_reg_504[0]_i_4 
       (.I0(glLastYReg_V[15]),
        .I1(yReg_V[15]),
        .O(\tmp_5_reg_504[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \tmp_5_reg_504[0]_i_5 
       (.I0(glLastYReg_V[13]),
        .I1(yReg_V[13]),
        .I2(glLastYReg_V[14]),
        .I3(yReg_V[14]),
        .I4(yReg_V[12]),
        .I5(glLastYReg_V[12]),
        .O(\tmp_5_reg_504[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \tmp_5_reg_504[0]_i_6 
       (.I0(glLastYReg_V[11]),
        .I1(yReg_V[11]),
        .I2(glLastYReg_V[9]),
        .I3(yReg_V[9]),
        .I4(glLastYReg_V[10]),
        .I5(yReg_V[10]),
        .O(\tmp_5_reg_504[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \tmp_5_reg_504[0]_i_7 
       (.I0(glLastYReg_V[8]),
        .I1(yReg_V[8]),
        .I2(glLastYReg_V[7]),
        .I3(yReg_V[7]),
        .I4(glLastYReg_V[6]),
        .I5(yReg_V[6]),
        .O(\tmp_5_reg_504[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \tmp_5_reg_504[0]_i_8 
       (.I0(glLastYReg_V[5]),
        .I1(yReg_V[5]),
        .I2(glLastYReg_V[3]),
        .I3(yReg_V[3]),
        .I4(glLastYReg_V[4]),
        .I5(yReg_V[4]),
        .O(\tmp_5_reg_504[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \tmp_5_reg_504[0]_i_9 
       (.I0(glLastYReg_V[1]),
        .I1(yReg_V[1]),
        .I2(glLastYReg_V[2]),
        .I3(yReg_V[2]),
        .I4(yReg_V[0]),
        .I5(glLastYReg_V[0]),
        .O(\tmp_5_reg_504[0]_i_9_n_0 ));
  FDRE \tmp_5_reg_504_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_5_reg_504[0]_i_1_n_0 ),
        .Q(tmp_5_reg_504),
        .R(1'b0));
  CARRY4 \tmp_5_reg_504_reg[0]_i_2 
       (.CI(\tmp_5_reg_504_reg[0]_i_3_n_0 ),
        .CO({\NLW_tmp_5_reg_504_reg[0]_i_2_CO_UNCONNECTED [3:2],tmp_5_fu_390_p2,\tmp_5_reg_504_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_tmp_5_reg_504_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\tmp_5_reg_504[0]_i_4_n_0 ,\tmp_5_reg_504[0]_i_5_n_0 }));
  CARRY4 \tmp_5_reg_504_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\tmp_5_reg_504_reg[0]_i_3_n_0 ,\tmp_5_reg_504_reg[0]_i_3_n_1 ,\tmp_5_reg_504_reg[0]_i_3_n_2 ,\tmp_5_reg_504_reg[0]_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_tmp_5_reg_504_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({\tmp_5_reg_504[0]_i_6_n_0 ,\tmp_5_reg_504[0]_i_7_n_0 ,\tmp_5_reg_504[0]_i_8_n_0 ,\tmp_5_reg_504[0]_i_9_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_6_reg_478[0]_i_1 
       (.I0(tmp_4_fu_300_p2),
        .I1(\xStreamIn_V_V_0_state[1]_i_3_n_0 ),
        .O(tmp_6_reg_4780));
  LUT6 #(
    .INIT(64'h00E20000FFFF00E2)) 
    \tmp_6_reg_478[0]_i_10 
       (.I0(tsStreamIn_V_V_0_payload_A[55]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_B[55]),
        .I3(glLastTS_V[55]),
        .I4(tsWrap_V_fu_270_p4[41]),
        .I5(glLastTS_V[56]),
        .O(\tmp_6_reg_478[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \tmp_6_reg_478[0]_i_11 
       (.I0(tsStreamIn_V_V_0_payload_B[62]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[62]),
        .I3(glLastTS_V[62]),
        .I4(tsWrap_V_fu_270_p4[46]),
        .I5(glLastTS_V[61]),
        .O(\tmp_6_reg_478[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \tmp_6_reg_478[0]_i_12 
       (.I0(tsStreamIn_V_V_0_payload_B[59]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[59]),
        .I3(glLastTS_V[59]),
        .I4(tsWrap_V_fu_270_p4[45]),
        .I5(glLastTS_V[60]),
        .O(\tmp_6_reg_478[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \tmp_6_reg_478[0]_i_13 
       (.I0(tsStreamIn_V_V_0_payload_B[57]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[57]),
        .I3(glLastTS_V[57]),
        .I4(tsWrap_V_fu_270_p4[43]),
        .I5(glLastTS_V[58]),
        .O(\tmp_6_reg_478[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    \tmp_6_reg_478[0]_i_14 
       (.I0(glLastTS_V[56]),
        .I1(tsStreamIn_V_V_0_payload_A[56]),
        .I2(tsStreamIn_V_V_0_sel),
        .I3(tsStreamIn_V_V_0_payload_B[56]),
        .I4(tsWrap_V_fu_270_p4[40]),
        .I5(glLastTS_V[55]),
        .O(\tmp_6_reg_478[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h54040000FFFF5404)) 
    \tmp_6_reg_478[0]_i_16 
       (.I0(glLastTS_V[53]),
        .I1(tsStreamIn_V_V_0_payload_A[53]),
        .I2(tsStreamIn_V_V_0_sel),
        .I3(tsStreamIn_V_V_0_payload_B[53]),
        .I4(tsWrap_V_fu_270_p4[39]),
        .I5(glLastTS_V[54]),
        .O(\tmp_6_reg_478[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00E20000FFFF00E2)) 
    \tmp_6_reg_478[0]_i_17 
       (.I0(tsStreamIn_V_V_0_payload_A[51]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_B[51]),
        .I3(glLastTS_V[51]),
        .I4(tsWrap_V_fu_270_p4[37]),
        .I5(glLastTS_V[52]),
        .O(\tmp_6_reg_478[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h44444444DDD444D4)) 
    \tmp_6_reg_478[0]_i_18 
       (.I0(glLastTS_V[50]),
        .I1(tsWrap_V_fu_270_p4[35]),
        .I2(tsStreamIn_V_V_0_payload_A[49]),
        .I3(tsStreamIn_V_V_0_sel),
        .I4(tsStreamIn_V_V_0_payload_B[49]),
        .I5(glLastTS_V[49]),
        .O(\tmp_6_reg_478[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h44444444DDD444D4)) 
    \tmp_6_reg_478[0]_i_19 
       (.I0(glLastTS_V[48]),
        .I1(tsWrap_V_fu_270_p4[33]),
        .I2(tsStreamIn_V_V_0_payload_A[47]),
        .I3(tsStreamIn_V_V_0_sel),
        .I4(tsStreamIn_V_V_0_payload_B[47]),
        .I5(glLastTS_V[47]),
        .O(\tmp_6_reg_478[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hE21D00000000E21D)) 
    \tmp_6_reg_478[0]_i_20 
       (.I0(tsStreamIn_V_V_0_payload_A[54]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_B[54]),
        .I3(glLastTS_V[54]),
        .I4(tsWrap_V_fu_270_p4[38]),
        .I5(glLastTS_V[53]),
        .O(\tmp_6_reg_478[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \tmp_6_reg_478[0]_i_21 
       (.I0(tsStreamIn_V_V_0_payload_B[51]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[51]),
        .I3(glLastTS_V[51]),
        .I4(tsWrap_V_fu_270_p4[37]),
        .I5(glLastTS_V[52]),
        .O(\tmp_6_reg_478[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \tmp_6_reg_478[0]_i_22 
       (.I0(tsStreamIn_V_V_0_payload_B[50]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[50]),
        .I3(glLastTS_V[50]),
        .I4(tsWrap_V_fu_270_p4[34]),
        .I5(glLastTS_V[49]),
        .O(\tmp_6_reg_478[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \tmp_6_reg_478[0]_i_23 
       (.I0(tsStreamIn_V_V_0_payload_B[47]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[47]),
        .I3(glLastTS_V[47]),
        .I4(tsWrap_V_fu_270_p4[33]),
        .I5(glLastTS_V[48]),
        .O(\tmp_6_reg_478[0]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h00E20000FFFF00E2)) 
    \tmp_6_reg_478[0]_i_25 
       (.I0(tsStreamIn_V_V_0_payload_A[45]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_B[45]),
        .I3(glLastTS_V[45]),
        .I4(tsWrap_V_fu_270_p4[31]),
        .I5(glLastTS_V[46]),
        .O(\tmp_6_reg_478[0]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h00E20000FFFF00E2)) 
    \tmp_6_reg_478[0]_i_26 
       (.I0(tsStreamIn_V_V_0_payload_A[43]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_B[43]),
        .I3(glLastTS_V[43]),
        .I4(tsWrap_V_fu_270_p4[29]),
        .I5(glLastTS_V[44]),
        .O(\tmp_6_reg_478[0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h54040000FFFF5404)) 
    \tmp_6_reg_478[0]_i_27 
       (.I0(glLastTS_V[41]),
        .I1(tsStreamIn_V_V_0_payload_A[41]),
        .I2(tsStreamIn_V_V_0_sel),
        .I3(tsStreamIn_V_V_0_payload_B[41]),
        .I4(tsWrap_V_fu_270_p4[27]),
        .I5(glLastTS_V[42]),
        .O(\tmp_6_reg_478[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h00E20000FFFF00E2)) 
    \tmp_6_reg_478[0]_i_28 
       (.I0(tsStreamIn_V_V_0_payload_A[39]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_B[39]),
        .I3(glLastTS_V[39]),
        .I4(tsWrap_V_fu_270_p4[25]),
        .I5(glLastTS_V[40]),
        .O(\tmp_6_reg_478[0]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \tmp_6_reg_478[0]_i_29 
       (.I0(tsStreamIn_V_V_0_payload_B[45]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[45]),
        .I3(glLastTS_V[45]),
        .I4(tsWrap_V_fu_270_p4[31]),
        .I5(glLastTS_V[46]),
        .O(\tmp_6_reg_478[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    \tmp_6_reg_478[0]_i_30 
       (.I0(glLastTS_V[44]),
        .I1(tsStreamIn_V_V_0_payload_A[44]),
        .I2(tsStreamIn_V_V_0_sel),
        .I3(tsStreamIn_V_V_0_payload_B[44]),
        .I4(tsWrap_V_fu_270_p4[28]),
        .I5(glLastTS_V[43]),
        .O(\tmp_6_reg_478[0]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hE21D00000000E21D)) 
    \tmp_6_reg_478[0]_i_31 
       (.I0(tsStreamIn_V_V_0_payload_A[42]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_B[42]),
        .I3(glLastTS_V[42]),
        .I4(tsWrap_V_fu_270_p4[26]),
        .I5(glLastTS_V[41]),
        .O(\tmp_6_reg_478[0]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \tmp_6_reg_478[0]_i_32 
       (.I0(tsStreamIn_V_V_0_payload_B[39]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[39]),
        .I3(glLastTS_V[39]),
        .I4(tsWrap_V_fu_270_p4[25]),
        .I5(glLastTS_V[40]),
        .O(\tmp_6_reg_478[0]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h44444444DDD444D4)) 
    \tmp_6_reg_478[0]_i_34 
       (.I0(glLastTS_V[38]),
        .I1(tsWrap_V_fu_270_p4[23]),
        .I2(tsStreamIn_V_V_0_payload_A[37]),
        .I3(tsStreamIn_V_V_0_sel),
        .I4(tsStreamIn_V_V_0_payload_B[37]),
        .I5(glLastTS_V[37]),
        .O(\tmp_6_reg_478[0]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h44444444DDD444D4)) 
    \tmp_6_reg_478[0]_i_35 
       (.I0(glLastTS_V[36]),
        .I1(tsWrap_V_fu_270_p4[21]),
        .I2(tsStreamIn_V_V_0_payload_A[35]),
        .I3(tsStreamIn_V_V_0_sel),
        .I4(tsStreamIn_V_V_0_payload_B[35]),
        .I5(glLastTS_V[35]),
        .O(\tmp_6_reg_478[0]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h00E20000FFFF00E2)) 
    \tmp_6_reg_478[0]_i_36 
       (.I0(tsStreamIn_V_V_0_payload_A[33]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_B[33]),
        .I3(glLastTS_V[33]),
        .I4(tsWrap_V_fu_270_p4[19]),
        .I5(glLastTS_V[34]),
        .O(\tmp_6_reg_478[0]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h00E20000FFFF00E2)) 
    \tmp_6_reg_478[0]_i_37 
       (.I0(tsStreamIn_V_V_0_payload_A[31]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_B[31]),
        .I3(glLastTS_V[31]),
        .I4(tsWrap_V_fu_270_p4[17]),
        .I5(glLastTS_V[32]),
        .O(\tmp_6_reg_478[0]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \tmp_6_reg_478[0]_i_38 
       (.I0(tsStreamIn_V_V_0_payload_B[38]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[38]),
        .I3(glLastTS_V[38]),
        .I4(tsWrap_V_fu_270_p4[22]),
        .I5(glLastTS_V[37]),
        .O(\tmp_6_reg_478[0]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \tmp_6_reg_478[0]_i_39 
       (.I0(tsStreamIn_V_V_0_payload_B[35]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[35]),
        .I3(glLastTS_V[35]),
        .I4(tsWrap_V_fu_270_p4[21]),
        .I5(glLastTS_V[36]),
        .O(\tmp_6_reg_478[0]_i_39_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tmp_6_reg_478[0]_i_4 
       (.I0(tsStreamIn_V_V_0_payload_A[63]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_B[63]),
        .I3(glLastTS_V[63]),
        .O(\tmp_6_reg_478[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \tmp_6_reg_478[0]_i_40 
       (.I0(tsStreamIn_V_V_0_payload_B[33]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[33]),
        .I3(glLastTS_V[33]),
        .I4(tsWrap_V_fu_270_p4[19]),
        .I5(glLastTS_V[34]),
        .O(\tmp_6_reg_478[0]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    \tmp_6_reg_478[0]_i_41 
       (.I0(glLastTS_V[32]),
        .I1(tsStreamIn_V_V_0_payload_A[32]),
        .I2(tsStreamIn_V_V_0_sel),
        .I3(tsStreamIn_V_V_0_payload_B[32]),
        .I4(tsWrap_V_fu_270_p4[16]),
        .I5(glLastTS_V[31]),
        .O(\tmp_6_reg_478[0]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h54040000FFFF5404)) 
    \tmp_6_reg_478[0]_i_43 
       (.I0(glLastTS_V[29]),
        .I1(tsStreamIn_V_V_0_payload_A[29]),
        .I2(tsStreamIn_V_V_0_sel),
        .I3(tsStreamIn_V_V_0_payload_B[29]),
        .I4(tsWrap_V_fu_270_p4[15]),
        .I5(glLastTS_V[30]),
        .O(\tmp_6_reg_478[0]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h00E20000FFFF00E2)) 
    \tmp_6_reg_478[0]_i_44 
       (.I0(tsStreamIn_V_V_0_payload_A[27]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_B[27]),
        .I3(glLastTS_V[27]),
        .I4(tsWrap_V_fu_270_p4[13]),
        .I5(glLastTS_V[28]),
        .O(\tmp_6_reg_478[0]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h44444444DDD444D4)) 
    \tmp_6_reg_478[0]_i_45 
       (.I0(glLastTS_V[26]),
        .I1(tsWrap_V_fu_270_p4[11]),
        .I2(tsStreamIn_V_V_0_payload_A[25]),
        .I3(tsStreamIn_V_V_0_sel),
        .I4(tsStreamIn_V_V_0_payload_B[25]),
        .I5(glLastTS_V[25]),
        .O(\tmp_6_reg_478[0]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h44444444DDD444D4)) 
    \tmp_6_reg_478[0]_i_46 
       (.I0(glLastTS_V[24]),
        .I1(tsWrap_V_fu_270_p4[9]),
        .I2(tsStreamIn_V_V_0_payload_A[23]),
        .I3(tsStreamIn_V_V_0_sel),
        .I4(tsStreamIn_V_V_0_payload_B[23]),
        .I5(glLastTS_V[23]),
        .O(\tmp_6_reg_478[0]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hE21D00000000E21D)) 
    \tmp_6_reg_478[0]_i_47 
       (.I0(tsStreamIn_V_V_0_payload_A[30]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_B[30]),
        .I3(glLastTS_V[30]),
        .I4(tsWrap_V_fu_270_p4[14]),
        .I5(glLastTS_V[29]),
        .O(\tmp_6_reg_478[0]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \tmp_6_reg_478[0]_i_48 
       (.I0(tsStreamIn_V_V_0_payload_B[27]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[27]),
        .I3(glLastTS_V[27]),
        .I4(tsWrap_V_fu_270_p4[13]),
        .I5(glLastTS_V[28]),
        .O(\tmp_6_reg_478[0]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \tmp_6_reg_478[0]_i_49 
       (.I0(tsStreamIn_V_V_0_payload_B[26]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[26]),
        .I3(glLastTS_V[26]),
        .I4(tsWrap_V_fu_270_p4[10]),
        .I5(glLastTS_V[25]),
        .O(\tmp_6_reg_478[0]_i_49_n_0 ));
  LUT4 #(
    .INIT(16'hA959)) 
    \tmp_6_reg_478[0]_i_5 
       (.I0(glLastTS_V[63]),
        .I1(tsStreamIn_V_V_0_payload_A[63]),
        .I2(tsStreamIn_V_V_0_sel),
        .I3(tsStreamIn_V_V_0_payload_B[63]),
        .O(\tmp_6_reg_478[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \tmp_6_reg_478[0]_i_50 
       (.I0(tsStreamIn_V_V_0_payload_B[23]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[23]),
        .I3(glLastTS_V[23]),
        .I4(tsWrap_V_fu_270_p4[9]),
        .I5(glLastTS_V[24]),
        .O(\tmp_6_reg_478[0]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h00E20000FFFF00E2)) 
    \tmp_6_reg_478[0]_i_51 
       (.I0(tsStreamIn_V_V_0_payload_A[21]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_B[21]),
        .I3(glLastTS_V[21]),
        .I4(tsWrap_V_fu_270_p4[7]),
        .I5(glLastTS_V[22]),
        .O(\tmp_6_reg_478[0]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h00E20000FFFF00E2)) 
    \tmp_6_reg_478[0]_i_52 
       (.I0(tsStreamIn_V_V_0_payload_A[19]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_B[19]),
        .I3(glLastTS_V[19]),
        .I4(tsWrap_V_fu_270_p4[5]),
        .I5(glLastTS_V[20]),
        .O(\tmp_6_reg_478[0]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h54040000FFFF5404)) 
    \tmp_6_reg_478[0]_i_53 
       (.I0(glLastTS_V[17]),
        .I1(tsStreamIn_V_V_0_payload_A[17]),
        .I2(tsStreamIn_V_V_0_sel),
        .I3(tsStreamIn_V_V_0_payload_B[17]),
        .I4(tsWrap_V_fu_270_p4[3]),
        .I5(glLastTS_V[18]),
        .O(\tmp_6_reg_478[0]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h00E20000FFFF00E2)) 
    \tmp_6_reg_478[0]_i_54 
       (.I0(tsStreamIn_V_V_0_payload_A[15]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_B[15]),
        .I3(glLastTS_V[15]),
        .I4(tsWrap_V_fu_270_p4[1]),
        .I5(glLastTS_V[16]),
        .O(\tmp_6_reg_478[0]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \tmp_6_reg_478[0]_i_55 
       (.I0(tsStreamIn_V_V_0_payload_B[21]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[21]),
        .I3(glLastTS_V[21]),
        .I4(tsWrap_V_fu_270_p4[7]),
        .I5(glLastTS_V[22]),
        .O(\tmp_6_reg_478[0]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    \tmp_6_reg_478[0]_i_56 
       (.I0(glLastTS_V[20]),
        .I1(tsStreamIn_V_V_0_payload_A[20]),
        .I2(tsStreamIn_V_V_0_sel),
        .I3(tsStreamIn_V_V_0_payload_B[20]),
        .I4(tsWrap_V_fu_270_p4[4]),
        .I5(glLastTS_V[19]),
        .O(\tmp_6_reg_478[0]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hE21D00000000E21D)) 
    \tmp_6_reg_478[0]_i_57 
       (.I0(tsStreamIn_V_V_0_payload_A[18]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_B[18]),
        .I3(glLastTS_V[18]),
        .I4(tsWrap_V_fu_270_p4[2]),
        .I5(glLastTS_V[17]),
        .O(\tmp_6_reg_478[0]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \tmp_6_reg_478[0]_i_58 
       (.I0(tsStreamIn_V_V_0_payload_B[15]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[15]),
        .I3(glLastTS_V[15]),
        .I4(tsWrap_V_fu_270_p4[1]),
        .I5(glLastTS_V[16]),
        .O(\tmp_6_reg_478[0]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h44444444DDD444D4)) 
    \tmp_6_reg_478[0]_i_7 
       (.I0(glLastTS_V[62]),
        .I1(tsWrap_V_fu_270_p4[47]),
        .I2(tsStreamIn_V_V_0_payload_A[61]),
        .I3(tsStreamIn_V_V_0_sel),
        .I4(tsStreamIn_V_V_0_payload_B[61]),
        .I5(glLastTS_V[61]),
        .O(\tmp_6_reg_478[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h44444444DDD444D4)) 
    \tmp_6_reg_478[0]_i_8 
       (.I0(glLastTS_V[60]),
        .I1(tsWrap_V_fu_270_p4[45]),
        .I2(tsStreamIn_V_V_0_payload_A[59]),
        .I3(tsStreamIn_V_V_0_sel),
        .I4(tsStreamIn_V_V_0_payload_B[59]),
        .I5(glLastTS_V[59]),
        .O(\tmp_6_reg_478[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00E20000FFFF00E2)) 
    \tmp_6_reg_478[0]_i_9 
       (.I0(tsStreamIn_V_V_0_payload_A[57]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_B[57]),
        .I3(glLastTS_V[57]),
        .I4(tsWrap_V_fu_270_p4[43]),
        .I5(glLastTS_V[58]),
        .O(\tmp_6_reg_478[0]_i_9_n_0 ));
  FDRE \tmp_6_reg_478_reg[0] 
       (.C(ap_clk),
        .CE(tmp_6_reg_4780),
        .D(tmp_6_fu_310_p2),
        .Q(tmp_6_reg_478),
        .R(1'b0));
  CARRY4 \tmp_6_reg_478_reg[0]_i_15 
       (.CI(\tmp_6_reg_478_reg[0]_i_24_n_0 ),
        .CO({\tmp_6_reg_478_reg[0]_i_15_n_0 ,\tmp_6_reg_478_reg[0]_i_15_n_1 ,\tmp_6_reg_478_reg[0]_i_15_n_2 ,\tmp_6_reg_478_reg[0]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({\tmp_6_reg_478[0]_i_25_n_0 ,\tmp_6_reg_478[0]_i_26_n_0 ,\tmp_6_reg_478[0]_i_27_n_0 ,\tmp_6_reg_478[0]_i_28_n_0 }),
        .O(\NLW_tmp_6_reg_478_reg[0]_i_15_O_UNCONNECTED [3:0]),
        .S({\tmp_6_reg_478[0]_i_29_n_0 ,\tmp_6_reg_478[0]_i_30_n_0 ,\tmp_6_reg_478[0]_i_31_n_0 ,\tmp_6_reg_478[0]_i_32_n_0 }));
  CARRY4 \tmp_6_reg_478_reg[0]_i_2 
       (.CI(\tmp_6_reg_478_reg[0]_i_3_n_0 ),
        .CO({\NLW_tmp_6_reg_478_reg[0]_i_2_CO_UNCONNECTED [3:1],tmp_6_fu_310_p2}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\tmp_6_reg_478[0]_i_4_n_0 }),
        .O(\NLW_tmp_6_reg_478_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\tmp_6_reg_478[0]_i_5_n_0 }));
  CARRY4 \tmp_6_reg_478_reg[0]_i_24 
       (.CI(\tmp_6_reg_478_reg[0]_i_33_n_0 ),
        .CO({\tmp_6_reg_478_reg[0]_i_24_n_0 ,\tmp_6_reg_478_reg[0]_i_24_n_1 ,\tmp_6_reg_478_reg[0]_i_24_n_2 ,\tmp_6_reg_478_reg[0]_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({\tmp_6_reg_478[0]_i_34_n_0 ,\tmp_6_reg_478[0]_i_35_n_0 ,\tmp_6_reg_478[0]_i_36_n_0 ,\tmp_6_reg_478[0]_i_37_n_0 }),
        .O(\NLW_tmp_6_reg_478_reg[0]_i_24_O_UNCONNECTED [3:0]),
        .S({\tmp_6_reg_478[0]_i_38_n_0 ,\tmp_6_reg_478[0]_i_39_n_0 ,\tmp_6_reg_478[0]_i_40_n_0 ,\tmp_6_reg_478[0]_i_41_n_0 }));
  CARRY4 \tmp_6_reg_478_reg[0]_i_3 
       (.CI(\tmp_6_reg_478_reg[0]_i_6_n_0 ),
        .CO({\tmp_6_reg_478_reg[0]_i_3_n_0 ,\tmp_6_reg_478_reg[0]_i_3_n_1 ,\tmp_6_reg_478_reg[0]_i_3_n_2 ,\tmp_6_reg_478_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\tmp_6_reg_478[0]_i_7_n_0 ,\tmp_6_reg_478[0]_i_8_n_0 ,\tmp_6_reg_478[0]_i_9_n_0 ,\tmp_6_reg_478[0]_i_10_n_0 }),
        .O(\NLW_tmp_6_reg_478_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({\tmp_6_reg_478[0]_i_11_n_0 ,\tmp_6_reg_478[0]_i_12_n_0 ,\tmp_6_reg_478[0]_i_13_n_0 ,\tmp_6_reg_478[0]_i_14_n_0 }));
  CARRY4 \tmp_6_reg_478_reg[0]_i_33 
       (.CI(\tmp_6_reg_478_reg[0]_i_42_n_0 ),
        .CO({\tmp_6_reg_478_reg[0]_i_33_n_0 ,\tmp_6_reg_478_reg[0]_i_33_n_1 ,\tmp_6_reg_478_reg[0]_i_33_n_2 ,\tmp_6_reg_478_reg[0]_i_33_n_3 }),
        .CYINIT(1'b0),
        .DI({\tmp_6_reg_478[0]_i_43_n_0 ,\tmp_6_reg_478[0]_i_44_n_0 ,\tmp_6_reg_478[0]_i_45_n_0 ,\tmp_6_reg_478[0]_i_46_n_0 }),
        .O(\NLW_tmp_6_reg_478_reg[0]_i_33_O_UNCONNECTED [3:0]),
        .S({\tmp_6_reg_478[0]_i_47_n_0 ,\tmp_6_reg_478[0]_i_48_n_0 ,\tmp_6_reg_478[0]_i_49_n_0 ,\tmp_6_reg_478[0]_i_50_n_0 }));
  CARRY4 \tmp_6_reg_478_reg[0]_i_42 
       (.CI(1'b0),
        .CO({\tmp_6_reg_478_reg[0]_i_42_n_0 ,\tmp_6_reg_478_reg[0]_i_42_n_1 ,\tmp_6_reg_478_reg[0]_i_42_n_2 ,\tmp_6_reg_478_reg[0]_i_42_n_3 }),
        .CYINIT(1'b0),
        .DI({\tmp_6_reg_478[0]_i_51_n_0 ,\tmp_6_reg_478[0]_i_52_n_0 ,\tmp_6_reg_478[0]_i_53_n_0 ,\tmp_6_reg_478[0]_i_54_n_0 }),
        .O(\NLW_tmp_6_reg_478_reg[0]_i_42_O_UNCONNECTED [3:0]),
        .S({\tmp_6_reg_478[0]_i_55_n_0 ,\tmp_6_reg_478[0]_i_56_n_0 ,\tmp_6_reg_478[0]_i_57_n_0 ,\tmp_6_reg_478[0]_i_58_n_0 }));
  CARRY4 \tmp_6_reg_478_reg[0]_i_6 
       (.CI(\tmp_6_reg_478_reg[0]_i_15_n_0 ),
        .CO({\tmp_6_reg_478_reg[0]_i_6_n_0 ,\tmp_6_reg_478_reg[0]_i_6_n_1 ,\tmp_6_reg_478_reg[0]_i_6_n_2 ,\tmp_6_reg_478_reg[0]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\tmp_6_reg_478[0]_i_16_n_0 ,\tmp_6_reg_478[0]_i_17_n_0 ,\tmp_6_reg_478[0]_i_18_n_0 ,\tmp_6_reg_478[0]_i_19_n_0 }),
        .O(\NLW_tmp_6_reg_478_reg[0]_i_6_O_UNCONNECTED [3:0]),
        .S({\tmp_6_reg_478[0]_i_20_n_0 ,\tmp_6_reg_478[0]_i_21_n_0 ,\tmp_6_reg_478[0]_i_22_n_0 ,\tmp_6_reg_478[0]_i_23_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_7_reg_458[0]_i_1 
       (.I0(yStreamIn_V_V_0_payload_B[0]),
        .I1(yStreamIn_V_V_0_payload_A[0]),
        .I2(yStreamIn_V_V_0_sel),
        .O(tmp_7_fu_288_p1[0]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_7_reg_458[10]_i_1 
       (.I0(yStreamIn_V_V_0_payload_B[10]),
        .I1(yStreamIn_V_V_0_payload_A[10]),
        .I2(yStreamIn_V_V_0_sel),
        .O(tmp_7_fu_288_p1[10]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_7_reg_458[11]_i_1 
       (.I0(yStreamIn_V_V_0_payload_B[11]),
        .I1(yStreamIn_V_V_0_payload_A[11]),
        .I2(yStreamIn_V_V_0_sel),
        .O(tmp_7_fu_288_p1[11]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_7_reg_458[1]_i_1 
       (.I0(yStreamIn_V_V_0_payload_B[1]),
        .I1(yStreamIn_V_V_0_payload_A[1]),
        .I2(yStreamIn_V_V_0_sel),
        .O(tmp_7_fu_288_p1[1]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_7_reg_458[2]_i_1 
       (.I0(yStreamIn_V_V_0_payload_B[2]),
        .I1(yStreamIn_V_V_0_payload_A[2]),
        .I2(yStreamIn_V_V_0_sel),
        .O(tmp_7_fu_288_p1[2]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_7_reg_458[3]_i_1 
       (.I0(yStreamIn_V_V_0_payload_B[3]),
        .I1(yStreamIn_V_V_0_payload_A[3]),
        .I2(yStreamIn_V_V_0_sel),
        .O(tmp_7_fu_288_p1[3]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_7_reg_458[4]_i_1 
       (.I0(yStreamIn_V_V_0_payload_B[4]),
        .I1(yStreamIn_V_V_0_payload_A[4]),
        .I2(yStreamIn_V_V_0_sel),
        .O(tmp_7_fu_288_p1[4]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_7_reg_458[5]_i_1 
       (.I0(yStreamIn_V_V_0_payload_B[5]),
        .I1(yStreamIn_V_V_0_payload_A[5]),
        .I2(yStreamIn_V_V_0_sel),
        .O(tmp_7_fu_288_p1[5]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_7_reg_458[6]_i_1 
       (.I0(yStreamIn_V_V_0_payload_B[6]),
        .I1(yStreamIn_V_V_0_payload_A[6]),
        .I2(yStreamIn_V_V_0_sel),
        .O(tmp_7_fu_288_p1[6]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_7_reg_458[7]_i_1 
       (.I0(yStreamIn_V_V_0_payload_B[7]),
        .I1(yStreamIn_V_V_0_payload_A[7]),
        .I2(yStreamIn_V_V_0_sel),
        .O(tmp_7_fu_288_p1[7]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_7_reg_458[8]_i_1 
       (.I0(yStreamIn_V_V_0_payload_B[8]),
        .I1(yStreamIn_V_V_0_payload_A[8]),
        .I2(yStreamIn_V_V_0_sel),
        .O(tmp_7_fu_288_p1[8]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_7_reg_458[9]_i_1 
       (.I0(yStreamIn_V_V_0_payload_B[9]),
        .I1(yStreamIn_V_V_0_payload_A[9]),
        .I2(yStreamIn_V_V_0_sel),
        .O(tmp_7_fu_288_p1[9]));
  FDRE \tmp_7_reg_458_reg[0] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tmp_7_fu_288_p1[0]),
        .Q(tmp_7_reg_458[0]),
        .R(1'b0));
  FDRE \tmp_7_reg_458_reg[10] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tmp_7_fu_288_p1[10]),
        .Q(tmp_7_reg_458[10]),
        .R(1'b0));
  FDRE \tmp_7_reg_458_reg[11] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tmp_7_fu_288_p1[11]),
        .Q(tmp_7_reg_458[11]),
        .R(1'b0));
  FDRE \tmp_7_reg_458_reg[1] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tmp_7_fu_288_p1[1]),
        .Q(tmp_7_reg_458[1]),
        .R(1'b0));
  FDRE \tmp_7_reg_458_reg[2] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tmp_7_fu_288_p1[2]),
        .Q(tmp_7_reg_458[2]),
        .R(1'b0));
  FDRE \tmp_7_reg_458_reg[3] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tmp_7_fu_288_p1[3]),
        .Q(tmp_7_reg_458[3]),
        .R(1'b0));
  FDRE \tmp_7_reg_458_reg[4] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tmp_7_fu_288_p1[4]),
        .Q(tmp_7_reg_458[4]),
        .R(1'b0));
  FDRE \tmp_7_reg_458_reg[5] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tmp_7_fu_288_p1[5]),
        .Q(tmp_7_reg_458[5]),
        .R(1'b0));
  FDRE \tmp_7_reg_458_reg[6] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tmp_7_fu_288_p1[6]),
        .Q(tmp_7_reg_458[6]),
        .R(1'b0));
  FDRE \tmp_7_reg_458_reg[7] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tmp_7_fu_288_p1[7]),
        .Q(tmp_7_reg_458[7]),
        .R(1'b0));
  FDRE \tmp_7_reg_458_reg[8] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tmp_7_fu_288_p1[8]),
        .Q(tmp_7_reg_458[8]),
        .R(1'b0));
  FDRE \tmp_7_reg_458_reg[9] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tmp_7_fu_288_p1[9]),
        .Q(tmp_7_reg_458[9]),
        .R(1'b0));
  FDRE \tmp_9_reg_484_reg[0] 
       (.C(ap_clk),
        .CE(tmp_6_reg_4780),
        .D(glLastTS_V[15]),
        .Q(tmp_9_reg_484[0]),
        .R(1'b0));
  FDRE \tmp_9_reg_484_reg[10] 
       (.C(ap_clk),
        .CE(tmp_6_reg_4780),
        .D(glLastTS_V[25]),
        .Q(tmp_9_reg_484[10]),
        .R(1'b0));
  FDRE \tmp_9_reg_484_reg[11] 
       (.C(ap_clk),
        .CE(tmp_6_reg_4780),
        .D(glLastTS_V[26]),
        .Q(tmp_9_reg_484[11]),
        .R(1'b0));
  FDRE \tmp_9_reg_484_reg[1] 
       (.C(ap_clk),
        .CE(tmp_6_reg_4780),
        .D(glLastTS_V[16]),
        .Q(tmp_9_reg_484[1]),
        .R(1'b0));
  FDRE \tmp_9_reg_484_reg[2] 
       (.C(ap_clk),
        .CE(tmp_6_reg_4780),
        .D(glLastTS_V[17]),
        .Q(tmp_9_reg_484[2]),
        .R(1'b0));
  FDRE \tmp_9_reg_484_reg[3] 
       (.C(ap_clk),
        .CE(tmp_6_reg_4780),
        .D(glLastTS_V[18]),
        .Q(tmp_9_reg_484[3]),
        .R(1'b0));
  FDRE \tmp_9_reg_484_reg[4] 
       (.C(ap_clk),
        .CE(tmp_6_reg_4780),
        .D(glLastTS_V[19]),
        .Q(tmp_9_reg_484[4]),
        .R(1'b0));
  FDRE \tmp_9_reg_484_reg[5] 
       (.C(ap_clk),
        .CE(tmp_6_reg_4780),
        .D(glLastTS_V[20]),
        .Q(tmp_9_reg_484[5]),
        .R(1'b0));
  FDRE \tmp_9_reg_484_reg[6] 
       (.C(ap_clk),
        .CE(tmp_6_reg_4780),
        .D(glLastTS_V[21]),
        .Q(tmp_9_reg_484[6]),
        .R(1'b0));
  FDRE \tmp_9_reg_484_reg[7] 
       (.C(ap_clk),
        .CE(tmp_6_reg_4780),
        .D(glLastTS_V[22]),
        .Q(tmp_9_reg_484[7]),
        .R(1'b0));
  FDRE \tmp_9_reg_484_reg[8] 
       (.C(ap_clk),
        .CE(tmp_6_reg_4780),
        .D(glLastTS_V[23]),
        .Q(tmp_9_reg_484[8]),
        .R(1'b0));
  FDRE \tmp_9_reg_484_reg[9] 
       (.C(ap_clk),
        .CE(tmp_6_reg_4780),
        .D(glLastTS_V[24]),
        .Q(tmp_9_reg_484[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[0]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[0]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[0]),
        .O(\tmp_V_6_reg_429[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[10]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[10]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[10]),
        .O(\tmp_V_6_reg_429[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[11]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[11]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[11]),
        .O(\tmp_V_6_reg_429[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[12]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[12]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[12]),
        .O(\tmp_V_6_reg_429[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[13]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[13]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[13]),
        .O(\tmp_V_6_reg_429[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[14]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[14]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[14]),
        .O(\tmp_V_6_reg_429[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[15]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[15]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[15]),
        .O(tsWrap_V_fu_270_p4[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[16]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[16]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[16]),
        .O(tsWrap_V_fu_270_p4[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[17]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[17]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[17]),
        .O(tsWrap_V_fu_270_p4[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[18]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[18]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[18]),
        .O(tsWrap_V_fu_270_p4[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[19]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[19]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[19]),
        .O(tsWrap_V_fu_270_p4[4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[1]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[1]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[1]),
        .O(\tmp_V_6_reg_429[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[20]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[20]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[20]),
        .O(tsWrap_V_fu_270_p4[5]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[21]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[21]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[21]),
        .O(tsWrap_V_fu_270_p4[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[22]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[22]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[22]),
        .O(tsWrap_V_fu_270_p4[7]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[23]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[23]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[23]),
        .O(tsWrap_V_fu_270_p4[8]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[24]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[24]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[24]),
        .O(tsWrap_V_fu_270_p4[9]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[25]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[25]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[25]),
        .O(tsWrap_V_fu_270_p4[10]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[26]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[26]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[26]),
        .O(tsWrap_V_fu_270_p4[11]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[27]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[27]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[27]),
        .O(tsWrap_V_fu_270_p4[12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[28]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[28]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[28]),
        .O(tsWrap_V_fu_270_p4[13]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[29]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[29]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[29]),
        .O(tsWrap_V_fu_270_p4[14]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[2]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[2]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[2]),
        .O(\tmp_V_6_reg_429[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[30]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[30]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[30]),
        .O(tsWrap_V_fu_270_p4[15]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[31]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[31]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[31]),
        .O(tsWrap_V_fu_270_p4[16]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[32]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[32]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[32]),
        .O(tsWrap_V_fu_270_p4[17]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[33]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[33]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[33]),
        .O(tsWrap_V_fu_270_p4[18]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[34]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[34]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[34]),
        .O(tsWrap_V_fu_270_p4[19]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[35]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[35]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[35]),
        .O(tsWrap_V_fu_270_p4[20]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[36]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[36]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[36]),
        .O(tsWrap_V_fu_270_p4[21]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[37]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[37]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[37]),
        .O(tsWrap_V_fu_270_p4[22]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[38]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[38]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[38]),
        .O(tsWrap_V_fu_270_p4[23]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[39]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[39]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[39]),
        .O(tsWrap_V_fu_270_p4[24]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[3]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[3]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[3]),
        .O(\tmp_V_6_reg_429[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[40]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[40]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[40]),
        .O(tsWrap_V_fu_270_p4[25]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[41]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[41]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[41]),
        .O(tsWrap_V_fu_270_p4[26]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[42]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[42]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[42]),
        .O(tsWrap_V_fu_270_p4[27]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[43]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[43]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[43]),
        .O(tsWrap_V_fu_270_p4[28]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[44]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[44]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[44]),
        .O(tsWrap_V_fu_270_p4[29]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[45]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[45]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[45]),
        .O(tsWrap_V_fu_270_p4[30]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[46]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[46]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[46]),
        .O(tsWrap_V_fu_270_p4[31]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[47]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[47]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[47]),
        .O(tsWrap_V_fu_270_p4[32]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[48]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[48]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[48]),
        .O(tsWrap_V_fu_270_p4[33]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[49]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[49]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[49]),
        .O(tsWrap_V_fu_270_p4[34]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[4]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[4]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[4]),
        .O(\tmp_V_6_reg_429[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[50]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[50]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[50]),
        .O(tsWrap_V_fu_270_p4[35]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[51]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[51]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[51]),
        .O(tsWrap_V_fu_270_p4[36]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[52]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[52]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[52]),
        .O(tsWrap_V_fu_270_p4[37]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[53]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[53]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[53]),
        .O(tsWrap_V_fu_270_p4[38]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[54]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[54]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[54]),
        .O(tsWrap_V_fu_270_p4[39]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[55]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[55]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[55]),
        .O(tsWrap_V_fu_270_p4[40]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[56]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[56]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[56]),
        .O(tsWrap_V_fu_270_p4[41]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[57]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[57]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[57]),
        .O(tsWrap_V_fu_270_p4[42]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[58]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[58]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[58]),
        .O(tsWrap_V_fu_270_p4[43]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[59]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[59]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[59]),
        .O(tsWrap_V_fu_270_p4[44]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[5]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[5]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[5]),
        .O(\tmp_V_6_reg_429[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[60]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[60]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[60]),
        .O(tsWrap_V_fu_270_p4[45]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[61]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[61]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[61]),
        .O(tsWrap_V_fu_270_p4[46]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[62]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[62]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[62]),
        .O(tsWrap_V_fu_270_p4[47]));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_V_6_reg_429[63]_i_1 
       (.I0(\xStreamIn_V_V_0_state[1]_i_3_n_0 ),
        .O(p_49_in));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[63]_i_2 
       (.I0(tsStreamIn_V_V_0_payload_B[63]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[63]),
        .O(tsWrap_V_fu_270_p4[48]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[6]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[6]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[6]),
        .O(\tmp_V_6_reg_429[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[7]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[7]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[7]),
        .O(\tmp_V_6_reg_429[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[8]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[8]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[8]),
        .O(\tmp_V_6_reg_429[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_6_reg_429[9]_i_1 
       (.I0(tsStreamIn_V_V_0_payload_B[9]),
        .I1(tsStreamIn_V_V_0_sel),
        .I2(tsStreamIn_V_V_0_payload_A[9]),
        .O(\tmp_V_6_reg_429[9]_i_1_n_0 ));
  FDRE \tmp_V_6_reg_429_reg[0] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(\tmp_V_6_reg_429[0]_i_1_n_0 ),
        .Q(tsReg_V[0]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[10] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(\tmp_V_6_reg_429[10]_i_1_n_0 ),
        .Q(tsReg_V[10]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[11] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(\tmp_V_6_reg_429[11]_i_1_n_0 ),
        .Q(tsReg_V[11]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[12] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(\tmp_V_6_reg_429[12]_i_1_n_0 ),
        .Q(tsReg_V[12]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[13] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(\tmp_V_6_reg_429[13]_i_1_n_0 ),
        .Q(tsReg_V[13]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[14] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(\tmp_V_6_reg_429[14]_i_1_n_0 ),
        .Q(tsReg_V[14]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[15] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[0]),
        .Q(tsReg_V[15]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[16] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[1]),
        .Q(tsReg_V[16]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[17] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[2]),
        .Q(tsReg_V[17]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[18] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[3]),
        .Q(tsReg_V[18]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[19] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[4]),
        .Q(tsReg_V[19]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[1] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(\tmp_V_6_reg_429[1]_i_1_n_0 ),
        .Q(tsReg_V[1]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[20] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[5]),
        .Q(tsReg_V[20]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[21] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[6]),
        .Q(tsReg_V[21]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[22] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[7]),
        .Q(tsReg_V[22]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[23] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[8]),
        .Q(tsReg_V[23]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[24] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[9]),
        .Q(tsReg_V[24]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[25] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[10]),
        .Q(tsReg_V[25]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[26] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[11]),
        .Q(tsReg_V[26]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[27] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[12]),
        .Q(tsReg_V[27]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[28] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[13]),
        .Q(tsReg_V[28]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[29] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[14]),
        .Q(tsReg_V[29]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[2] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(\tmp_V_6_reg_429[2]_i_1_n_0 ),
        .Q(tsReg_V[2]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[30] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[15]),
        .Q(tsReg_V[30]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[31] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[16]),
        .Q(tsReg_V[31]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[32] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[17]),
        .Q(tsReg_V[32]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[33] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[18]),
        .Q(tsReg_V[33]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[34] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[19]),
        .Q(tsReg_V[34]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[35] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[20]),
        .Q(tsReg_V[35]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[36] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[21]),
        .Q(tsReg_V[36]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[37] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[22]),
        .Q(tsReg_V[37]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[38] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[23]),
        .Q(tsReg_V[38]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[39] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[24]),
        .Q(tsReg_V[39]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[3] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(\tmp_V_6_reg_429[3]_i_1_n_0 ),
        .Q(tsReg_V[3]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[40] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[25]),
        .Q(tsReg_V[40]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[41] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[26]),
        .Q(tsReg_V[41]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[42] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[27]),
        .Q(tsReg_V[42]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[43] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[28]),
        .Q(tsReg_V[43]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[44] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[29]),
        .Q(tsReg_V[44]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[45] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[30]),
        .Q(tsReg_V[45]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[46] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[31]),
        .Q(tsReg_V[46]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[47] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[32]),
        .Q(tsReg_V[47]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[48] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[33]),
        .Q(tsReg_V[48]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[49] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[34]),
        .Q(tsReg_V[49]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[4] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(\tmp_V_6_reg_429[4]_i_1_n_0 ),
        .Q(tsReg_V[4]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[50] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[35]),
        .Q(tsReg_V[50]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[51] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[36]),
        .Q(tsReg_V[51]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[52] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[37]),
        .Q(tsReg_V[52]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[53] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[38]),
        .Q(tsReg_V[53]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[54] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[39]),
        .Q(tsReg_V[54]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[55] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[40]),
        .Q(tsReg_V[55]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[56] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[41]),
        .Q(tsReg_V[56]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[57] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[42]),
        .Q(tsReg_V[57]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[58] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[43]),
        .Q(tsReg_V[58]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[59] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[44]),
        .Q(tsReg_V[59]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[5] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(\tmp_V_6_reg_429[5]_i_1_n_0 ),
        .Q(tsReg_V[5]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[60] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[45]),
        .Q(tsReg_V[60]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[61] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[46]),
        .Q(tsReg_V[61]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[62] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[47]),
        .Q(tsReg_V[62]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[63] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tsWrap_V_fu_270_p4[48]),
        .Q(tsReg_V[63]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[6] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(\tmp_V_6_reg_429[6]_i_1_n_0 ),
        .Q(tsReg_V[6]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[7] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(\tmp_V_6_reg_429[7]_i_1_n_0 ),
        .Q(tsReg_V[7]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[8] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(\tmp_V_6_reg_429[8]_i_1_n_0 ),
        .Q(tsReg_V[8]),
        .R(1'b0));
  FDRE \tmp_V_6_reg_429_reg[9] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(\tmp_V_6_reg_429[9]_i_1_n_0 ),
        .Q(tsReg_V[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_V_8_reg_436[0]_i_1 
       (.I0(xStreamIn_V_V_0_payload_B[0]),
        .I1(xStreamIn_V_V_0_payload_A[0]),
        .I2(xStreamIn_V_V_0_sel),
        .O(\tmp_V_8_reg_436[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_V_8_reg_436[10]_i_1 
       (.I0(xStreamIn_V_V_0_payload_B[10]),
        .I1(xStreamIn_V_V_0_payload_A[10]),
        .I2(xStreamIn_V_V_0_sel),
        .O(\tmp_V_8_reg_436[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_V_8_reg_436[11]_i_1 
       (.I0(xStreamIn_V_V_0_payload_B[11]),
        .I1(xStreamIn_V_V_0_payload_A[11]),
        .I2(xStreamIn_V_V_0_sel),
        .O(\tmp_V_8_reg_436[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_V_8_reg_436[12]_i_1 
       (.I0(xStreamIn_V_V_0_payload_B[12]),
        .I1(xStreamIn_V_V_0_payload_A[12]),
        .I2(xStreamIn_V_V_0_sel),
        .O(\tmp_V_8_reg_436[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_V_8_reg_436[13]_i_1 
       (.I0(xStreamIn_V_V_0_payload_B[13]),
        .I1(xStreamIn_V_V_0_payload_A[13]),
        .I2(xStreamIn_V_V_0_sel),
        .O(\tmp_V_8_reg_436[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_V_8_reg_436[14]_i_1 
       (.I0(xStreamIn_V_V_0_payload_B[14]),
        .I1(xStreamIn_V_V_0_payload_A[14]),
        .I2(xStreamIn_V_V_0_sel),
        .O(\tmp_V_8_reg_436[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_V_8_reg_436[15]_i_1 
       (.I0(xStreamIn_V_V_0_payload_B[15]),
        .I1(xStreamIn_V_V_0_payload_A[15]),
        .I2(xStreamIn_V_V_0_sel),
        .O(\tmp_V_8_reg_436[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_V_8_reg_436[1]_i_1 
       (.I0(xStreamIn_V_V_0_payload_B[1]),
        .I1(xStreamIn_V_V_0_payload_A[1]),
        .I2(xStreamIn_V_V_0_sel),
        .O(\tmp_V_8_reg_436[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_V_8_reg_436[2]_i_1 
       (.I0(xStreamIn_V_V_0_payload_B[2]),
        .I1(xStreamIn_V_V_0_payload_A[2]),
        .I2(xStreamIn_V_V_0_sel),
        .O(\tmp_V_8_reg_436[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_V_8_reg_436[3]_i_1 
       (.I0(xStreamIn_V_V_0_payload_B[3]),
        .I1(xStreamIn_V_V_0_payload_A[3]),
        .I2(xStreamIn_V_V_0_sel),
        .O(\tmp_V_8_reg_436[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_V_8_reg_436[4]_i_1 
       (.I0(xStreamIn_V_V_0_payload_B[4]),
        .I1(xStreamIn_V_V_0_payload_A[4]),
        .I2(xStreamIn_V_V_0_sel),
        .O(\tmp_V_8_reg_436[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_V_8_reg_436[5]_i_1 
       (.I0(xStreamIn_V_V_0_payload_B[5]),
        .I1(xStreamIn_V_V_0_payload_A[5]),
        .I2(xStreamIn_V_V_0_sel),
        .O(\tmp_V_8_reg_436[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_V_8_reg_436[6]_i_1 
       (.I0(xStreamIn_V_V_0_payload_B[6]),
        .I1(xStreamIn_V_V_0_payload_A[6]),
        .I2(xStreamIn_V_V_0_sel),
        .O(\tmp_V_8_reg_436[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_V_8_reg_436[7]_i_1 
       (.I0(xStreamIn_V_V_0_payload_B[7]),
        .I1(xStreamIn_V_V_0_payload_A[7]),
        .I2(xStreamIn_V_V_0_sel),
        .O(\tmp_V_8_reg_436[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_V_8_reg_436[8]_i_1 
       (.I0(xStreamIn_V_V_0_payload_B[8]),
        .I1(xStreamIn_V_V_0_payload_A[8]),
        .I2(xStreamIn_V_V_0_sel),
        .O(\tmp_V_8_reg_436[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_V_8_reg_436[9]_i_1 
       (.I0(xStreamIn_V_V_0_payload_B[9]),
        .I1(xStreamIn_V_V_0_payload_A[9]),
        .I2(xStreamIn_V_V_0_sel),
        .O(\tmp_V_8_reg_436[9]_i_1_n_0 ));
  FDRE \tmp_V_8_reg_436_reg[0] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(\tmp_V_8_reg_436[0]_i_1_n_0 ),
        .Q(yReg_V[0]),
        .R(1'b0));
  FDRE \tmp_V_8_reg_436_reg[10] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(\tmp_V_8_reg_436[10]_i_1_n_0 ),
        .Q(yReg_V[10]),
        .R(1'b0));
  FDRE \tmp_V_8_reg_436_reg[11] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(\tmp_V_8_reg_436[11]_i_1_n_0 ),
        .Q(yReg_V[11]),
        .R(1'b0));
  FDRE \tmp_V_8_reg_436_reg[12] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(\tmp_V_8_reg_436[12]_i_1_n_0 ),
        .Q(yReg_V[12]),
        .R(1'b0));
  FDRE \tmp_V_8_reg_436_reg[13] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(\tmp_V_8_reg_436[13]_i_1_n_0 ),
        .Q(yReg_V[13]),
        .R(1'b0));
  FDRE \tmp_V_8_reg_436_reg[14] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(\tmp_V_8_reg_436[14]_i_1_n_0 ),
        .Q(yReg_V[14]),
        .R(1'b0));
  FDRE \tmp_V_8_reg_436_reg[15] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(\tmp_V_8_reg_436[15]_i_1_n_0 ),
        .Q(yReg_V[15]),
        .R(1'b0));
  FDRE \tmp_V_8_reg_436_reg[1] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(\tmp_V_8_reg_436[1]_i_1_n_0 ),
        .Q(yReg_V[1]),
        .R(1'b0));
  FDRE \tmp_V_8_reg_436_reg[2] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(\tmp_V_8_reg_436[2]_i_1_n_0 ),
        .Q(yReg_V[2]),
        .R(1'b0));
  FDRE \tmp_V_8_reg_436_reg[3] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(\tmp_V_8_reg_436[3]_i_1_n_0 ),
        .Q(yReg_V[3]),
        .R(1'b0));
  FDRE \tmp_V_8_reg_436_reg[4] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(\tmp_V_8_reg_436[4]_i_1_n_0 ),
        .Q(yReg_V[4]),
        .R(1'b0));
  FDRE \tmp_V_8_reg_436_reg[5] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(\tmp_V_8_reg_436[5]_i_1_n_0 ),
        .Q(yReg_V[5]),
        .R(1'b0));
  FDRE \tmp_V_8_reg_436_reg[6] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(\tmp_V_8_reg_436[6]_i_1_n_0 ),
        .Q(yReg_V[6]),
        .R(1'b0));
  FDRE \tmp_V_8_reg_436_reg[7] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(\tmp_V_8_reg_436[7]_i_1_n_0 ),
        .Q(yReg_V[7]),
        .R(1'b0));
  FDRE \tmp_V_8_reg_436_reg[8] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(\tmp_V_8_reg_436[8]_i_1_n_0 ),
        .Q(yReg_V[8]),
        .R(1'b0));
  FDRE \tmp_V_8_reg_436_reg[9] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(\tmp_V_8_reg_436[9]_i_1_n_0 ),
        .Q(yReg_V[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_V_9_reg_463[0]_i_1 
       (.I0(custDataStreamIn_V_V_0_payload_B[0]),
        .I1(custDataStreamIn_V_V_0_payload_A[0]),
        .I2(custDataStreamIn_V_V_0_sel),
        .O(tmp_V_9_fu_292_p1[0]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_V_9_reg_463[1]_i_1 
       (.I0(custDataStreamIn_V_V_0_payload_B[1]),
        .I1(custDataStreamIn_V_V_0_payload_A[1]),
        .I2(custDataStreamIn_V_V_0_sel),
        .O(tmp_V_9_fu_292_p1[1]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_V_9_reg_463[2]_i_1 
       (.I0(custDataStreamIn_V_V_0_payload_B[2]),
        .I1(custDataStreamIn_V_V_0_payload_A[2]),
        .I2(custDataStreamIn_V_V_0_sel),
        .O(tmp_V_9_fu_292_p1[2]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_V_9_reg_463[3]_i_1 
       (.I0(custDataStreamIn_V_V_0_payload_B[3]),
        .I1(custDataStreamIn_V_V_0_payload_A[3]),
        .I2(custDataStreamIn_V_V_0_sel),
        .O(tmp_V_9_fu_292_p1[3]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_V_9_reg_463[4]_i_1 
       (.I0(custDataStreamIn_V_V_0_payload_B[4]),
        .I1(custDataStreamIn_V_V_0_payload_A[4]),
        .I2(custDataStreamIn_V_V_0_sel),
        .O(tmp_V_9_fu_292_p1[4]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_V_9_reg_463[5]_i_1 
       (.I0(custDataStreamIn_V_V_0_payload_B[5]),
        .I1(custDataStreamIn_V_V_0_payload_A[5]),
        .I2(custDataStreamIn_V_V_0_sel),
        .O(tmp_V_9_fu_292_p1[5]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_V_9_reg_463[6]_i_1 
       (.I0(custDataStreamIn_V_V_0_payload_B[6]),
        .I1(custDataStreamIn_V_V_0_payload_A[6]),
        .I2(custDataStreamIn_V_V_0_sel),
        .O(tmp_V_9_fu_292_p1[6]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_V_9_reg_463[7]_i_1 
       (.I0(custDataStreamIn_V_V_0_payload_B[7]),
        .I1(custDataStreamIn_V_V_0_payload_A[7]),
        .I2(custDataStreamIn_V_V_0_sel),
        .O(tmp_V_9_fu_292_p1[7]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_V_9_reg_463[8]_i_1 
       (.I0(custDataStreamIn_V_V_0_payload_B[8]),
        .I1(custDataStreamIn_V_V_0_payload_A[8]),
        .I2(custDataStreamIn_V_V_0_sel),
        .O(tmp_V_9_fu_292_p1[8]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_V_9_reg_463[9]_i_1 
       (.I0(custDataStreamIn_V_V_0_payload_B[9]),
        .I1(custDataStreamIn_V_V_0_payload_A[9]),
        .I2(custDataStreamIn_V_V_0_sel),
        .O(tmp_V_9_fu_292_p1[9]));
  FDRE \tmp_V_9_reg_463_reg[0] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tmp_V_9_fu_292_p1[0]),
        .Q(tmp_V_9_reg_463[0]),
        .R(1'b0));
  FDRE \tmp_V_9_reg_463_reg[1] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tmp_V_9_fu_292_p1[1]),
        .Q(tmp_V_9_reg_463[1]),
        .R(1'b0));
  FDRE \tmp_V_9_reg_463_reg[2] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tmp_V_9_fu_292_p1[2]),
        .Q(tmp_V_9_reg_463[2]),
        .R(1'b0));
  FDRE \tmp_V_9_reg_463_reg[3] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tmp_V_9_fu_292_p1[3]),
        .Q(tmp_V_9_reg_463[3]),
        .R(1'b0));
  FDRE \tmp_V_9_reg_463_reg[4] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tmp_V_9_fu_292_p1[4]),
        .Q(tmp_V_9_reg_463[4]),
        .R(1'b0));
  FDRE \tmp_V_9_reg_463_reg[5] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tmp_V_9_fu_292_p1[5]),
        .Q(tmp_V_9_reg_463[5]),
        .R(1'b0));
  FDRE \tmp_V_9_reg_463_reg[6] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tmp_V_9_fu_292_p1[6]),
        .Q(tmp_V_9_reg_463[6]),
        .R(1'b0));
  FDRE \tmp_V_9_reg_463_reg[7] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tmp_V_9_fu_292_p1[7]),
        .Q(tmp_V_9_reg_463[7]),
        .R(1'b0));
  FDRE \tmp_V_9_reg_463_reg[8] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tmp_V_9_fu_292_p1[8]),
        .Q(tmp_V_9_reg_463[8]),
        .R(1'b0));
  FDRE \tmp_V_9_reg_463_reg[9] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tmp_V_9_fu_292_p1[9]),
        .Q(tmp_V_9_reg_463[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_V_reg_443[0]_i_1 
       (.I0(polStreamIn_V_V_0_payload_B),
        .I1(polStreamIn_V_V_0_sel),
        .I2(polStreamIn_V_V_0_payload_A),
        .O(tmp_V_fu_266_p1));
  FDRE \tmp_V_reg_443_reg[0] 
       (.C(ap_clk),
        .CE(p_49_in),
        .D(tmp_V_fu_266_p1),
        .Q(tmp_V_reg_443),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h45)) 
    \tsStreamIn_V_V_0_payload_A[63]_i_1 
       (.I0(tsStreamIn_V_V_0_sel_wr),
        .I1(tsStreamIn_V_V_TREADY),
        .I2(\tsStreamIn_V_V_0_state_reg_n_0_[0] ),
        .O(tsStreamIn_V_V_0_load_A));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[0]),
        .Q(tsStreamIn_V_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[10]),
        .Q(tsStreamIn_V_V_0_payload_A[10]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[11]),
        .Q(tsStreamIn_V_V_0_payload_A[11]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[12]),
        .Q(tsStreamIn_V_V_0_payload_A[12]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[13]),
        .Q(tsStreamIn_V_V_0_payload_A[13]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[14]),
        .Q(tsStreamIn_V_V_0_payload_A[14]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[15]),
        .Q(tsStreamIn_V_V_0_payload_A[15]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[16]),
        .Q(tsStreamIn_V_V_0_payload_A[16]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[17]),
        .Q(tsStreamIn_V_V_0_payload_A[17]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[18]),
        .Q(tsStreamIn_V_V_0_payload_A[18]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[19]),
        .Q(tsStreamIn_V_V_0_payload_A[19]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[1]),
        .Q(tsStreamIn_V_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[20]),
        .Q(tsStreamIn_V_V_0_payload_A[20]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[21]),
        .Q(tsStreamIn_V_V_0_payload_A[21]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[22]),
        .Q(tsStreamIn_V_V_0_payload_A[22]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[23]),
        .Q(tsStreamIn_V_V_0_payload_A[23]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[24]),
        .Q(tsStreamIn_V_V_0_payload_A[24]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[25]),
        .Q(tsStreamIn_V_V_0_payload_A[25]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[26]),
        .Q(tsStreamIn_V_V_0_payload_A[26]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[27]),
        .Q(tsStreamIn_V_V_0_payload_A[27]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[28]),
        .Q(tsStreamIn_V_V_0_payload_A[28]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[29]),
        .Q(tsStreamIn_V_V_0_payload_A[29]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[2]),
        .Q(tsStreamIn_V_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[30]),
        .Q(tsStreamIn_V_V_0_payload_A[30]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[31]),
        .Q(tsStreamIn_V_V_0_payload_A[31]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[32] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[32]),
        .Q(tsStreamIn_V_V_0_payload_A[32]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[33] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[33]),
        .Q(tsStreamIn_V_V_0_payload_A[33]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[34] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[34]),
        .Q(tsStreamIn_V_V_0_payload_A[34]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[35] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[35]),
        .Q(tsStreamIn_V_V_0_payload_A[35]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[36] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[36]),
        .Q(tsStreamIn_V_V_0_payload_A[36]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[37] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[37]),
        .Q(tsStreamIn_V_V_0_payload_A[37]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[38] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[38]),
        .Q(tsStreamIn_V_V_0_payload_A[38]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[39] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[39]),
        .Q(tsStreamIn_V_V_0_payload_A[39]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[3]),
        .Q(tsStreamIn_V_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[40] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[40]),
        .Q(tsStreamIn_V_V_0_payload_A[40]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[41] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[41]),
        .Q(tsStreamIn_V_V_0_payload_A[41]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[42] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[42]),
        .Q(tsStreamIn_V_V_0_payload_A[42]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[43] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[43]),
        .Q(tsStreamIn_V_V_0_payload_A[43]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[44] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[44]),
        .Q(tsStreamIn_V_V_0_payload_A[44]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[45] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[45]),
        .Q(tsStreamIn_V_V_0_payload_A[45]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[46] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[46]),
        .Q(tsStreamIn_V_V_0_payload_A[46]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[47] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[47]),
        .Q(tsStreamIn_V_V_0_payload_A[47]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[48] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[48]),
        .Q(tsStreamIn_V_V_0_payload_A[48]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[49] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[49]),
        .Q(tsStreamIn_V_V_0_payload_A[49]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[4]),
        .Q(tsStreamIn_V_V_0_payload_A[4]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[50] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[50]),
        .Q(tsStreamIn_V_V_0_payload_A[50]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[51] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[51]),
        .Q(tsStreamIn_V_V_0_payload_A[51]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[52] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[52]),
        .Q(tsStreamIn_V_V_0_payload_A[52]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[53] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[53]),
        .Q(tsStreamIn_V_V_0_payload_A[53]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[54] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[54]),
        .Q(tsStreamIn_V_V_0_payload_A[54]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[55] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[55]),
        .Q(tsStreamIn_V_V_0_payload_A[55]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[56] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[56]),
        .Q(tsStreamIn_V_V_0_payload_A[56]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[57] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[57]),
        .Q(tsStreamIn_V_V_0_payload_A[57]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[58] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[58]),
        .Q(tsStreamIn_V_V_0_payload_A[58]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[59] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[59]),
        .Q(tsStreamIn_V_V_0_payload_A[59]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[5]),
        .Q(tsStreamIn_V_V_0_payload_A[5]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[60] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[60]),
        .Q(tsStreamIn_V_V_0_payload_A[60]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[61] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[61]),
        .Q(tsStreamIn_V_V_0_payload_A[61]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[62] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[62]),
        .Q(tsStreamIn_V_V_0_payload_A[62]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[63] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[63]),
        .Q(tsStreamIn_V_V_0_payload_A[63]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[6]),
        .Q(tsStreamIn_V_V_0_payload_A[6]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[7]),
        .Q(tsStreamIn_V_V_0_payload_A[7]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[8]),
        .Q(tsStreamIn_V_V_0_payload_A[8]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_A),
        .D(tsStreamIn_V_V_TDATA[9]),
        .Q(tsStreamIn_V_V_0_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \tsStreamIn_V_V_0_payload_B[63]_i_1 
       (.I0(tsStreamIn_V_V_0_sel_wr),
        .I1(tsStreamIn_V_V_TREADY),
        .I2(\tsStreamIn_V_V_0_state_reg_n_0_[0] ),
        .O(tsStreamIn_V_V_0_load_B));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[0]),
        .Q(tsStreamIn_V_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[10]),
        .Q(tsStreamIn_V_V_0_payload_B[10]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[11]),
        .Q(tsStreamIn_V_V_0_payload_B[11]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[12]),
        .Q(tsStreamIn_V_V_0_payload_B[12]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[13]),
        .Q(tsStreamIn_V_V_0_payload_B[13]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[14]),
        .Q(tsStreamIn_V_V_0_payload_B[14]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[15]),
        .Q(tsStreamIn_V_V_0_payload_B[15]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[16]),
        .Q(tsStreamIn_V_V_0_payload_B[16]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[17]),
        .Q(tsStreamIn_V_V_0_payload_B[17]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[18]),
        .Q(tsStreamIn_V_V_0_payload_B[18]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[19]),
        .Q(tsStreamIn_V_V_0_payload_B[19]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[1]),
        .Q(tsStreamIn_V_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[20]),
        .Q(tsStreamIn_V_V_0_payload_B[20]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[21]),
        .Q(tsStreamIn_V_V_0_payload_B[21]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[22]),
        .Q(tsStreamIn_V_V_0_payload_B[22]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[23]),
        .Q(tsStreamIn_V_V_0_payload_B[23]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[24]),
        .Q(tsStreamIn_V_V_0_payload_B[24]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[25]),
        .Q(tsStreamIn_V_V_0_payload_B[25]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[26]),
        .Q(tsStreamIn_V_V_0_payload_B[26]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[27]),
        .Q(tsStreamIn_V_V_0_payload_B[27]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[28]),
        .Q(tsStreamIn_V_V_0_payload_B[28]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[29]),
        .Q(tsStreamIn_V_V_0_payload_B[29]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[2]),
        .Q(tsStreamIn_V_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[30]),
        .Q(tsStreamIn_V_V_0_payload_B[30]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[31]),
        .Q(tsStreamIn_V_V_0_payload_B[31]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[32] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[32]),
        .Q(tsStreamIn_V_V_0_payload_B[32]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[33] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[33]),
        .Q(tsStreamIn_V_V_0_payload_B[33]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[34] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[34]),
        .Q(tsStreamIn_V_V_0_payload_B[34]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[35] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[35]),
        .Q(tsStreamIn_V_V_0_payload_B[35]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[36] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[36]),
        .Q(tsStreamIn_V_V_0_payload_B[36]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[37] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[37]),
        .Q(tsStreamIn_V_V_0_payload_B[37]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[38] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[38]),
        .Q(tsStreamIn_V_V_0_payload_B[38]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[39] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[39]),
        .Q(tsStreamIn_V_V_0_payload_B[39]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[3]),
        .Q(tsStreamIn_V_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[40] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[40]),
        .Q(tsStreamIn_V_V_0_payload_B[40]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[41] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[41]),
        .Q(tsStreamIn_V_V_0_payload_B[41]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[42] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[42]),
        .Q(tsStreamIn_V_V_0_payload_B[42]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[43] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[43]),
        .Q(tsStreamIn_V_V_0_payload_B[43]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[44] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[44]),
        .Q(tsStreamIn_V_V_0_payload_B[44]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[45] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[45]),
        .Q(tsStreamIn_V_V_0_payload_B[45]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[46] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[46]),
        .Q(tsStreamIn_V_V_0_payload_B[46]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[47] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[47]),
        .Q(tsStreamIn_V_V_0_payload_B[47]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[48] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[48]),
        .Q(tsStreamIn_V_V_0_payload_B[48]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[49] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[49]),
        .Q(tsStreamIn_V_V_0_payload_B[49]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[4]),
        .Q(tsStreamIn_V_V_0_payload_B[4]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[50] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[50]),
        .Q(tsStreamIn_V_V_0_payload_B[50]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[51] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[51]),
        .Q(tsStreamIn_V_V_0_payload_B[51]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[52] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[52]),
        .Q(tsStreamIn_V_V_0_payload_B[52]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[53] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[53]),
        .Q(tsStreamIn_V_V_0_payload_B[53]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[54] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[54]),
        .Q(tsStreamIn_V_V_0_payload_B[54]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[55] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[55]),
        .Q(tsStreamIn_V_V_0_payload_B[55]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[56] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[56]),
        .Q(tsStreamIn_V_V_0_payload_B[56]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[57] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[57]),
        .Q(tsStreamIn_V_V_0_payload_B[57]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[58] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[58]),
        .Q(tsStreamIn_V_V_0_payload_B[58]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[59] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[59]),
        .Q(tsStreamIn_V_V_0_payload_B[59]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[5]),
        .Q(tsStreamIn_V_V_0_payload_B[5]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[60] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[60]),
        .Q(tsStreamIn_V_V_0_payload_B[60]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[61] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[61]),
        .Q(tsStreamIn_V_V_0_payload_B[61]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[62] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[62]),
        .Q(tsStreamIn_V_V_0_payload_B[62]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[63] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[63]),
        .Q(tsStreamIn_V_V_0_payload_B[63]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[6]),
        .Q(tsStreamIn_V_V_0_payload_B[6]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[7]),
        .Q(tsStreamIn_V_V_0_payload_B[7]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[8]),
        .Q(tsStreamIn_V_V_0_payload_B[8]),
        .R(1'b0));
  FDRE \tsStreamIn_V_V_0_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(tsStreamIn_V_V_0_load_B),
        .D(tsStreamIn_V_V_TDATA[9]),
        .Q(tsStreamIn_V_V_0_payload_B[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBABF4540)) 
    tsStreamIn_V_V_0_sel_rd_i_1
       (.I0(\xStreamIn_V_V_0_state[1]_i_3_n_0 ),
        .I1(ap_start),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp0_iter0_reg),
        .I4(tsStreamIn_V_V_0_sel),
        .O(tsStreamIn_V_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tsStreamIn_V_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tsStreamIn_V_V_0_sel_rd_i_1_n_0),
        .Q(tsStreamIn_V_V_0_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    tsStreamIn_V_V_0_sel_wr_i_1
       (.I0(tsStreamIn_V_V_TVALID),
        .I1(tsStreamIn_V_V_TREADY),
        .I2(tsStreamIn_V_V_0_sel_wr),
        .O(tsStreamIn_V_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tsStreamIn_V_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tsStreamIn_V_V_0_sel_wr_i_1_n_0),
        .Q(tsStreamIn_V_V_0_sel_wr),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hF8F8D8F8)) 
    \tsStreamIn_V_V_0_state[0]_i_1 
       (.I0(tsStreamIn_V_V_TREADY),
        .I1(tsStreamIn_V_V_TVALID),
        .I2(\tsStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(\xStreamIn_V_V_0_state[1]_i_3_n_0 ),
        .O(\tsStreamIn_V_V_0_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h5DFF5D5D)) 
    \tsStreamIn_V_V_0_state[1]_i_1 
       (.I0(\tsStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(\xStreamIn_V_V_0_state[1]_i_3_n_0 ),
        .I3(tsStreamIn_V_V_TVALID),
        .I4(tsStreamIn_V_V_TREADY),
        .O(tsStreamIn_V_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \tsStreamIn_V_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tsStreamIn_V_V_0_state[0]_i_1_n_0 ),
        .Q(\tsStreamIn_V_V_0_state_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \tsStreamIn_V_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tsStreamIn_V_V_0_state),
        .Q(tsStreamIn_V_V_TREADY),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h0000B800)) 
    tsWrappedVal_V_ap_vld_INST_0
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(ap_CS_fsm_pp0_stage3),
        .I4(ap_reg_ioackin_yReg_V_dummy_ack),
        .O(tsReg_V_ap_vld));
  LUT3 #(
    .INIT(8'h45)) 
    \xStreamIn_V_V_0_payload_A[15]_i_1 
       (.I0(xStreamIn_V_V_0_sel_wr),
        .I1(xStreamIn_V_V_TREADY),
        .I2(\xStreamIn_V_V_0_state_reg_n_0_[0] ),
        .O(xStreamIn_V_V_0_load_A));
  FDRE \xStreamIn_V_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_A),
        .D(xStreamIn_V_V_TDATA[0]),
        .Q(xStreamIn_V_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_A),
        .D(xStreamIn_V_V_TDATA[10]),
        .Q(xStreamIn_V_V_0_payload_A[10]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_A),
        .D(xStreamIn_V_V_TDATA[11]),
        .Q(xStreamIn_V_V_0_payload_A[11]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_A),
        .D(xStreamIn_V_V_TDATA[12]),
        .Q(xStreamIn_V_V_0_payload_A[12]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_A),
        .D(xStreamIn_V_V_TDATA[13]),
        .Q(xStreamIn_V_V_0_payload_A[13]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_A),
        .D(xStreamIn_V_V_TDATA[14]),
        .Q(xStreamIn_V_V_0_payload_A[14]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_A),
        .D(xStreamIn_V_V_TDATA[15]),
        .Q(xStreamIn_V_V_0_payload_A[15]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_A),
        .D(xStreamIn_V_V_TDATA[1]),
        .Q(xStreamIn_V_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_A),
        .D(xStreamIn_V_V_TDATA[2]),
        .Q(xStreamIn_V_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_A),
        .D(xStreamIn_V_V_TDATA[3]),
        .Q(xStreamIn_V_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_A),
        .D(xStreamIn_V_V_TDATA[4]),
        .Q(xStreamIn_V_V_0_payload_A[4]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_A),
        .D(xStreamIn_V_V_TDATA[5]),
        .Q(xStreamIn_V_V_0_payload_A[5]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_A),
        .D(xStreamIn_V_V_TDATA[6]),
        .Q(xStreamIn_V_V_0_payload_A[6]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_A),
        .D(xStreamIn_V_V_TDATA[7]),
        .Q(xStreamIn_V_V_0_payload_A[7]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_A),
        .D(xStreamIn_V_V_TDATA[8]),
        .Q(xStreamIn_V_V_0_payload_A[8]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_A),
        .D(xStreamIn_V_V_TDATA[9]),
        .Q(xStreamIn_V_V_0_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \xStreamIn_V_V_0_payload_B[15]_i_1 
       (.I0(xStreamIn_V_V_0_sel_wr),
        .I1(xStreamIn_V_V_TREADY),
        .I2(\xStreamIn_V_V_0_state_reg_n_0_[0] ),
        .O(xStreamIn_V_V_0_load_B));
  FDRE \xStreamIn_V_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_B),
        .D(xStreamIn_V_V_TDATA[0]),
        .Q(xStreamIn_V_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_B),
        .D(xStreamIn_V_V_TDATA[10]),
        .Q(xStreamIn_V_V_0_payload_B[10]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_B),
        .D(xStreamIn_V_V_TDATA[11]),
        .Q(xStreamIn_V_V_0_payload_B[11]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_B),
        .D(xStreamIn_V_V_TDATA[12]),
        .Q(xStreamIn_V_V_0_payload_B[12]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_B),
        .D(xStreamIn_V_V_TDATA[13]),
        .Q(xStreamIn_V_V_0_payload_B[13]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_B),
        .D(xStreamIn_V_V_TDATA[14]),
        .Q(xStreamIn_V_V_0_payload_B[14]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_B),
        .D(xStreamIn_V_V_TDATA[15]),
        .Q(xStreamIn_V_V_0_payload_B[15]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_B),
        .D(xStreamIn_V_V_TDATA[1]),
        .Q(xStreamIn_V_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_B),
        .D(xStreamIn_V_V_TDATA[2]),
        .Q(xStreamIn_V_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_B),
        .D(xStreamIn_V_V_TDATA[3]),
        .Q(xStreamIn_V_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_B),
        .D(xStreamIn_V_V_TDATA[4]),
        .Q(xStreamIn_V_V_0_payload_B[4]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_B),
        .D(xStreamIn_V_V_TDATA[5]),
        .Q(xStreamIn_V_V_0_payload_B[5]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_B),
        .D(xStreamIn_V_V_TDATA[6]),
        .Q(xStreamIn_V_V_0_payload_B[6]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_B),
        .D(xStreamIn_V_V_TDATA[7]),
        .Q(xStreamIn_V_V_0_payload_B[7]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_B),
        .D(xStreamIn_V_V_TDATA[8]),
        .Q(xStreamIn_V_V_0_payload_B[8]),
        .R(1'b0));
  FDRE \xStreamIn_V_V_0_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(xStreamIn_V_V_0_load_B),
        .D(xStreamIn_V_V_TDATA[9]),
        .Q(xStreamIn_V_V_0_payload_B[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBABF4540)) 
    xStreamIn_V_V_0_sel_rd_i_1
       (.I0(\xStreamIn_V_V_0_state[1]_i_3_n_0 ),
        .I1(ap_start),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp0_iter0_reg),
        .I4(xStreamIn_V_V_0_sel),
        .O(xStreamIn_V_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    xStreamIn_V_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(xStreamIn_V_V_0_sel_rd_i_1_n_0),
        .Q(xStreamIn_V_V_0_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    xStreamIn_V_V_0_sel_wr_i_1
       (.I0(xStreamIn_V_V_TVALID),
        .I1(xStreamIn_V_V_TREADY),
        .I2(xStreamIn_V_V_0_sel_wr),
        .O(xStreamIn_V_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    xStreamIn_V_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(xStreamIn_V_V_0_sel_wr_i_1_n_0),
        .Q(xStreamIn_V_V_0_sel_wr),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hF8F8D8F8)) 
    \xStreamIn_V_V_0_state[0]_i_1 
       (.I0(xStreamIn_V_V_TREADY),
        .I1(xStreamIn_V_V_TVALID),
        .I2(\xStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(\xStreamIn_V_V_0_state[1]_i_3_n_0 ),
        .O(\xStreamIn_V_V_0_state[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \xStreamIn_V_V_0_state[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h5DFF5D5D)) 
    \xStreamIn_V_V_0_state[1]_i_2 
       (.I0(\xStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(\xStreamIn_V_V_0_state[1]_i_3_n_0 ),
        .I3(xStreamIn_V_V_TVALID),
        .I4(xStreamIn_V_V_TREADY),
        .O(xStreamIn_V_V_0_state));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hAEFF)) 
    \xStreamIn_V_V_0_state[1]_i_3 
       (.I0(\ap_CS_fsm[1]_i_2_n_0 ),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(streamOut_V_V_1_ack_in),
        .I3(ap_CS_fsm_pp0_stage1),
        .O(\xStreamIn_V_V_0_state[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \xStreamIn_V_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\xStreamIn_V_V_0_state[0]_i_1_n_0 ),
        .Q(\xStreamIn_V_V_0_state_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \xStreamIn_V_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(xStreamIn_V_V_0_state),
        .Q(xStreamIn_V_V_TREADY),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    yDiffFlgReg_V_ap_vld_INST_0
       (.I0(streamOut_V_V_1_ack_in),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_reg_ioackin_tsDiffFlgReg_V_dummy_ack_reg_n_0),
        .O(tsDiffFlgReg_V_ap_vld));
  LUT3 #(
    .INIT(8'h45)) 
    \yStreamIn_V_V_0_payload_A[11]_i_1 
       (.I0(yStreamIn_V_V_0_sel_wr),
        .I1(yStreamIn_V_V_TREADY),
        .I2(\yStreamIn_V_V_0_state_reg_n_0_[0] ),
        .O(yStreamIn_V_V_0_load_A));
  FDRE \yStreamIn_V_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_A),
        .D(yStreamIn_V_V_TDATA[0]),
        .Q(yStreamIn_V_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_A),
        .D(yStreamIn_V_V_TDATA[10]),
        .Q(yStreamIn_V_V_0_payload_A[10]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_A),
        .D(yStreamIn_V_V_TDATA[11]),
        .Q(yStreamIn_V_V_0_payload_A[11]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_A),
        .D(yStreamIn_V_V_TDATA[1]),
        .Q(yStreamIn_V_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_A),
        .D(yStreamIn_V_V_TDATA[2]),
        .Q(yStreamIn_V_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_A),
        .D(yStreamIn_V_V_TDATA[3]),
        .Q(yStreamIn_V_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_A),
        .D(yStreamIn_V_V_TDATA[4]),
        .Q(yStreamIn_V_V_0_payload_A[4]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_A),
        .D(yStreamIn_V_V_TDATA[5]),
        .Q(yStreamIn_V_V_0_payload_A[5]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_A),
        .D(yStreamIn_V_V_TDATA[6]),
        .Q(yStreamIn_V_V_0_payload_A[6]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_A),
        .D(yStreamIn_V_V_TDATA[7]),
        .Q(yStreamIn_V_V_0_payload_A[7]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_A),
        .D(yStreamIn_V_V_TDATA[8]),
        .Q(yStreamIn_V_V_0_payload_A[8]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_A),
        .D(yStreamIn_V_V_TDATA[9]),
        .Q(yStreamIn_V_V_0_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \yStreamIn_V_V_0_payload_B[11]_i_1 
       (.I0(yStreamIn_V_V_0_sel_wr),
        .I1(yStreamIn_V_V_TREADY),
        .I2(\yStreamIn_V_V_0_state_reg_n_0_[0] ),
        .O(yStreamIn_V_V_0_load_B));
  FDRE \yStreamIn_V_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_B),
        .D(yStreamIn_V_V_TDATA[0]),
        .Q(yStreamIn_V_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_B),
        .D(yStreamIn_V_V_TDATA[10]),
        .Q(yStreamIn_V_V_0_payload_B[10]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_B),
        .D(yStreamIn_V_V_TDATA[11]),
        .Q(yStreamIn_V_V_0_payload_B[11]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_B),
        .D(yStreamIn_V_V_TDATA[1]),
        .Q(yStreamIn_V_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_B),
        .D(yStreamIn_V_V_TDATA[2]),
        .Q(yStreamIn_V_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_B),
        .D(yStreamIn_V_V_TDATA[3]),
        .Q(yStreamIn_V_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_B),
        .D(yStreamIn_V_V_TDATA[4]),
        .Q(yStreamIn_V_V_0_payload_B[4]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_B),
        .D(yStreamIn_V_V_TDATA[5]),
        .Q(yStreamIn_V_V_0_payload_B[5]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_B),
        .D(yStreamIn_V_V_TDATA[6]),
        .Q(yStreamIn_V_V_0_payload_B[6]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_B),
        .D(yStreamIn_V_V_TDATA[7]),
        .Q(yStreamIn_V_V_0_payload_B[7]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_B),
        .D(yStreamIn_V_V_TDATA[8]),
        .Q(yStreamIn_V_V_0_payload_B[8]),
        .R(1'b0));
  FDRE \yStreamIn_V_V_0_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(yStreamIn_V_V_0_load_B),
        .D(yStreamIn_V_V_TDATA[9]),
        .Q(yStreamIn_V_V_0_payload_B[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBABF4540)) 
    yStreamIn_V_V_0_sel_rd_i_1
       (.I0(\xStreamIn_V_V_0_state[1]_i_3_n_0 ),
        .I1(ap_start),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp0_iter0_reg),
        .I4(yStreamIn_V_V_0_sel),
        .O(yStreamIn_V_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    yStreamIn_V_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(yStreamIn_V_V_0_sel_rd_i_1_n_0),
        .Q(yStreamIn_V_V_0_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    yStreamIn_V_V_0_sel_wr_i_1
       (.I0(yStreamIn_V_V_TVALID),
        .I1(yStreamIn_V_V_TREADY),
        .I2(yStreamIn_V_V_0_sel_wr),
        .O(yStreamIn_V_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    yStreamIn_V_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(yStreamIn_V_V_0_sel_wr_i_1_n_0),
        .Q(yStreamIn_V_V_0_sel_wr),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hF8F8D8F8)) 
    \yStreamIn_V_V_0_state[0]_i_1 
       (.I0(yStreamIn_V_V_TREADY),
        .I1(yStreamIn_V_V_TVALID),
        .I2(\yStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(\xStreamIn_V_V_0_state[1]_i_3_n_0 ),
        .O(\yStreamIn_V_V_0_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h5DFF5D5D)) 
    \yStreamIn_V_V_0_state[1]_i_1 
       (.I0(\yStreamIn_V_V_0_state_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(\xStreamIn_V_V_0_state[1]_i_3_n_0 ),
        .I3(yStreamIn_V_V_TVALID),
        .I4(yStreamIn_V_V_TREADY),
        .O(yStreamIn_V_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \yStreamIn_V_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\yStreamIn_V_V_0_state[0]_i_1_n_0 ),
        .Q(\yStreamIn_V_V_0_state_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \yStreamIn_V_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(yStreamIn_V_V_0_state),
        .Q(yStreamIn_V_V_TREADY),
        .R(ap_rst_n_inv));
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
