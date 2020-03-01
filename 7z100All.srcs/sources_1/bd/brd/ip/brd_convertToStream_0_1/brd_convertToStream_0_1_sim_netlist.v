// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sat Feb 29 09:40:14 2020
// Host        : DESKTOP-MC69HMJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top brd_convertToStream_0_1 -prefix
//               brd_convertToStream_0_1_ brd_convertToStream_0_1_sim_netlist.v
// Design      : brd_convertToStream_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "brd_convertToStream_0_1,convertToStream,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "convertToStream,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module brd_convertToStream_0_1
   (ap_clk,
    ap_rst_n,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    evUSBStreamOut_V_V_TVALID,
    evUSBStreamOut_V_V_TREADY,
    evUSBStreamOut_V_V_TDATA,
    dataReady_V,
    dataValid_V,
    dataToCheck_V,
    eventFIFODVReg_V);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF evUSBStreamOut_V_V, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000" *) input ap_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) input ap_rst_n;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) input ap_start;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 evUSBStreamOut_V_V TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME evUSBStreamOut_V_V, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000" *) output evUSBStreamOut_V_V_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 evUSBStreamOut_V_V TREADY" *) input evUSBStreamOut_V_V_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 evUSBStreamOut_V_V TDATA" *) output [7:0]evUSBStreamOut_V_V_TDATA;
  (* x_interface_info = "xilinx.com:signal:data:1.0 dataReady_V DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME dataReady_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [0:0]dataReady_V;
  (* x_interface_info = "xilinx.com:signal:data:1.0 dataValid_V DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME dataValid_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [0:0]dataValid_V;
  (* x_interface_info = "xilinx.com:signal:data:1.0 dataToCheck_V DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME dataToCheck_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [7:0]dataToCheck_V;
  (* x_interface_info = "xilinx.com:signal:data:1.0 eventFIFODVReg_V DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME eventFIFODVReg_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [0:0]eventFIFODVReg_V;

  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_start;
  wire [0:0]dataReady_V;
  wire [7:0]dataToCheck_V;
  wire [0:0]dataValid_V;
  wire [7:0]evUSBStreamOut_V_V_TDATA;
  wire evUSBStreamOut_V_V_TREADY;
  wire evUSBStreamOut_V_V_TVALID;
  wire [0:0]eventFIFODVReg_V;

  brd_convertToStream_0_1_convertToStream U0
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .dataReady_V(dataReady_V),
        .dataToCheck_V(dataToCheck_V),
        .dataValid_V(dataValid_V),
        .evUSBStreamOut_V_V_TDATA(evUSBStreamOut_V_V_TDATA),
        .evUSBStreamOut_V_V_TREADY(evUSBStreamOut_V_V_TREADY),
        .evUSBStreamOut_V_V_TVALID(evUSBStreamOut_V_V_TVALID),
        .eventFIFODVReg_V(eventFIFODVReg_V));
endmodule

module brd_convertToStream_0_1_convertToStream
   (ap_clk,
    ap_rst_n,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    evUSBStreamOut_V_V_TREADY,
    dataReady_V,
    dataValid_V,
    dataToCheck_V,
    evUSBStreamOut_V_V_TDATA,
    evUSBStreamOut_V_V_TVALID,
    eventFIFODVReg_V);
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input evUSBStreamOut_V_V_TREADY;
  input [0:0]dataReady_V;
  input [0:0]dataValid_V;
  input [7:0]dataToCheck_V;
  output [7:0]evUSBStreamOut_V_V_TDATA;
  output evUSBStreamOut_V_V_TVALID;
  output [0:0]eventFIFODVReg_V;

  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_done;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1_n_0;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter2_i_1_n_0;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire [0:0]dataReady_V;
  wire [7:0]dataToCheck_V;
  wire [0:0]dataValid_V;
  wire evUSBStreamOut_V_V_1_ack_in;
  wire evUSBStreamOut_V_V_1_load_A;
  wire evUSBStreamOut_V_V_1_load_B;
  wire [7:0]evUSBStreamOut_V_V_1_payload_A;
  wire [7:0]evUSBStreamOut_V_V_1_payload_B;
  wire evUSBStreamOut_V_V_1_sel;
  wire evUSBStreamOut_V_V_1_sel_rd_i_1_n_0;
  wire evUSBStreamOut_V_V_1_sel_wr;
  wire evUSBStreamOut_V_V_1_sel_wr_i_1_n_0;
  wire [1:1]evUSBStreamOut_V_V_1_state;
  wire \evUSBStreamOut_V_V_1_state[0]_i_1_n_0 ;
  wire [7:0]evUSBStreamOut_V_V_TDATA;
  wire evUSBStreamOut_V_V_TREADY;
  wire evUSBStreamOut_V_V_TVALID;
  wire [0:0]eventFIFODVReg_V;
  wire r_V_fu_74_p2;
  wire r_V_reg_85;
  wire [7:0]tmp_V_reg_80;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ap_done_INST_0
       (.I0(evUSBStreamOut_V_V_1_ack_in),
        .I1(ap_enable_reg_pp0_iter2),
        .O(ap_done));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAACCAAEA)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_start),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(r_V_reg_85),
        .I3(evUSBStreamOut_V_V_1_ack_in),
        .I4(ap_enable_reg_pp0_iter2),
        .O(ap_enable_reg_pp0_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter1),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hAFA2)) 
    ap_enable_reg_pp0_iter2_i_1
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(r_V_reg_85),
        .I2(evUSBStreamOut_V_V_1_ack_in),
        .I3(ap_enable_reg_pp0_iter2),
        .O(ap_enable_reg_pp0_iter2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter2_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter2),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h01)) 
    ap_idle_INST_0
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(ap_enable_reg_pp0_iter2),
        .I2(ap_start),
        .O(ap_idle));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCDDD0000)) 
    ap_ready_INST_0
       (.I0(ap_enable_reg_pp0_iter2),
        .I1(evUSBStreamOut_V_V_1_ack_in),
        .I2(r_V_reg_85),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(ap_start),
        .O(ap_ready));
  LUT3 #(
    .INIT(8'h0D)) 
    \evUSBStreamOut_V_V_1_payload_A[7]_i_1 
       (.I0(evUSBStreamOut_V_V_TVALID),
        .I1(evUSBStreamOut_V_V_1_ack_in),
        .I2(evUSBStreamOut_V_V_1_sel_wr),
        .O(evUSBStreamOut_V_V_1_load_A));
  FDRE \evUSBStreamOut_V_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(evUSBStreamOut_V_V_1_load_A),
        .D(tmp_V_reg_80[0]),
        .Q(evUSBStreamOut_V_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \evUSBStreamOut_V_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(evUSBStreamOut_V_V_1_load_A),
        .D(tmp_V_reg_80[1]),
        .Q(evUSBStreamOut_V_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \evUSBStreamOut_V_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(evUSBStreamOut_V_V_1_load_A),
        .D(tmp_V_reg_80[2]),
        .Q(evUSBStreamOut_V_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \evUSBStreamOut_V_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(evUSBStreamOut_V_V_1_load_A),
        .D(tmp_V_reg_80[3]),
        .Q(evUSBStreamOut_V_V_1_payload_A[3]),
        .R(1'b0));
  FDRE \evUSBStreamOut_V_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(evUSBStreamOut_V_V_1_load_A),
        .D(tmp_V_reg_80[4]),
        .Q(evUSBStreamOut_V_V_1_payload_A[4]),
        .R(1'b0));
  FDRE \evUSBStreamOut_V_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(evUSBStreamOut_V_V_1_load_A),
        .D(tmp_V_reg_80[5]),
        .Q(evUSBStreamOut_V_V_1_payload_A[5]),
        .R(1'b0));
  FDRE \evUSBStreamOut_V_V_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(evUSBStreamOut_V_V_1_load_A),
        .D(tmp_V_reg_80[6]),
        .Q(evUSBStreamOut_V_V_1_payload_A[6]),
        .R(1'b0));
  FDRE \evUSBStreamOut_V_V_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(evUSBStreamOut_V_V_1_load_A),
        .D(tmp_V_reg_80[7]),
        .Q(evUSBStreamOut_V_V_1_payload_A[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \evUSBStreamOut_V_V_1_payload_B[7]_i_1 
       (.I0(evUSBStreamOut_V_V_TVALID),
        .I1(evUSBStreamOut_V_V_1_ack_in),
        .I2(evUSBStreamOut_V_V_1_sel_wr),
        .O(evUSBStreamOut_V_V_1_load_B));
  FDRE \evUSBStreamOut_V_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(evUSBStreamOut_V_V_1_load_B),
        .D(tmp_V_reg_80[0]),
        .Q(evUSBStreamOut_V_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \evUSBStreamOut_V_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(evUSBStreamOut_V_V_1_load_B),
        .D(tmp_V_reg_80[1]),
        .Q(evUSBStreamOut_V_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \evUSBStreamOut_V_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(evUSBStreamOut_V_V_1_load_B),
        .D(tmp_V_reg_80[2]),
        .Q(evUSBStreamOut_V_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \evUSBStreamOut_V_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(evUSBStreamOut_V_V_1_load_B),
        .D(tmp_V_reg_80[3]),
        .Q(evUSBStreamOut_V_V_1_payload_B[3]),
        .R(1'b0));
  FDRE \evUSBStreamOut_V_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(evUSBStreamOut_V_V_1_load_B),
        .D(tmp_V_reg_80[4]),
        .Q(evUSBStreamOut_V_V_1_payload_B[4]),
        .R(1'b0));
  FDRE \evUSBStreamOut_V_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(evUSBStreamOut_V_V_1_load_B),
        .D(tmp_V_reg_80[5]),
        .Q(evUSBStreamOut_V_V_1_payload_B[5]),
        .R(1'b0));
  FDRE \evUSBStreamOut_V_V_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(evUSBStreamOut_V_V_1_load_B),
        .D(tmp_V_reg_80[6]),
        .Q(evUSBStreamOut_V_V_1_payload_B[6]),
        .R(1'b0));
  FDRE \evUSBStreamOut_V_V_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(evUSBStreamOut_V_V_1_load_B),
        .D(tmp_V_reg_80[7]),
        .Q(evUSBStreamOut_V_V_1_payload_B[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    evUSBStreamOut_V_V_1_sel_rd_i_1
       (.I0(evUSBStreamOut_V_V_TREADY),
        .I1(evUSBStreamOut_V_V_TVALID),
        .I2(evUSBStreamOut_V_V_1_sel),
        .O(evUSBStreamOut_V_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    evUSBStreamOut_V_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(evUSBStreamOut_V_V_1_sel_rd_i_1_n_0),
        .Q(evUSBStreamOut_V_V_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    evUSBStreamOut_V_V_1_sel_wr_i_1
       (.I0(r_V_reg_85),
        .I1(evUSBStreamOut_V_V_1_ack_in),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(evUSBStreamOut_V_V_1_sel_wr),
        .O(evUSBStreamOut_V_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    evUSBStreamOut_V_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(evUSBStreamOut_V_V_1_sel_wr_i_1_n_0),
        .Q(evUSBStreamOut_V_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hEE2A2A2A00000000)) 
    \evUSBStreamOut_V_V_1_state[0]_i_1 
       (.I0(evUSBStreamOut_V_V_TVALID),
        .I1(evUSBStreamOut_V_V_1_ack_in),
        .I2(evUSBStreamOut_V_V_TREADY),
        .I3(r_V_reg_85),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(ap_rst_n),
        .O(\evUSBStreamOut_V_V_1_state[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \evUSBStreamOut_V_V_1_state[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFF7FFF0F)) 
    \evUSBStreamOut_V_V_1_state[1]_i_2 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(r_V_reg_85),
        .I2(evUSBStreamOut_V_V_TVALID),
        .I3(evUSBStreamOut_V_V_TREADY),
        .I4(evUSBStreamOut_V_V_1_ack_in),
        .O(evUSBStreamOut_V_V_1_state));
  FDRE #(
    .INIT(1'b0)) 
    \evUSBStreamOut_V_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\evUSBStreamOut_V_V_1_state[0]_i_1_n_0 ),
        .Q(evUSBStreamOut_V_V_TVALID),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \evUSBStreamOut_V_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(evUSBStreamOut_V_V_1_state),
        .Q(evUSBStreamOut_V_V_1_ack_in),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \evUSBStreamOut_V_V_TDATA[0]_INST_0 
       (.I0(evUSBStreamOut_V_V_1_payload_B[0]),
        .I1(evUSBStreamOut_V_V_1_payload_A[0]),
        .I2(evUSBStreamOut_V_V_1_sel),
        .O(evUSBStreamOut_V_V_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \evUSBStreamOut_V_V_TDATA[1]_INST_0 
       (.I0(evUSBStreamOut_V_V_1_payload_B[1]),
        .I1(evUSBStreamOut_V_V_1_payload_A[1]),
        .I2(evUSBStreamOut_V_V_1_sel),
        .O(evUSBStreamOut_V_V_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \evUSBStreamOut_V_V_TDATA[2]_INST_0 
       (.I0(evUSBStreamOut_V_V_1_payload_B[2]),
        .I1(evUSBStreamOut_V_V_1_payload_A[2]),
        .I2(evUSBStreamOut_V_V_1_sel),
        .O(evUSBStreamOut_V_V_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \evUSBStreamOut_V_V_TDATA[3]_INST_0 
       (.I0(evUSBStreamOut_V_V_1_payload_B[3]),
        .I1(evUSBStreamOut_V_V_1_payload_A[3]),
        .I2(evUSBStreamOut_V_V_1_sel),
        .O(evUSBStreamOut_V_V_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \evUSBStreamOut_V_V_TDATA[4]_INST_0 
       (.I0(evUSBStreamOut_V_V_1_payload_B[4]),
        .I1(evUSBStreamOut_V_V_1_payload_A[4]),
        .I2(evUSBStreamOut_V_V_1_sel),
        .O(evUSBStreamOut_V_V_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \evUSBStreamOut_V_V_TDATA[5]_INST_0 
       (.I0(evUSBStreamOut_V_V_1_payload_B[5]),
        .I1(evUSBStreamOut_V_V_1_payload_A[5]),
        .I2(evUSBStreamOut_V_V_1_sel),
        .O(evUSBStreamOut_V_V_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \evUSBStreamOut_V_V_TDATA[6]_INST_0 
       (.I0(evUSBStreamOut_V_V_1_payload_B[6]),
        .I1(evUSBStreamOut_V_V_1_payload_A[6]),
        .I2(evUSBStreamOut_V_V_1_sel),
        .O(evUSBStreamOut_V_V_TDATA[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \evUSBStreamOut_V_V_TDATA[7]_INST_0 
       (.I0(evUSBStreamOut_V_V_1_payload_B[7]),
        .I1(evUSBStreamOut_V_V_1_payload_A[7]),
        .I2(evUSBStreamOut_V_V_1_sel),
        .O(evUSBStreamOut_V_V_TDATA[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \r_V_reg_85[0]_i_1 
       (.I0(dataReady_V),
        .I1(dataValid_V),
        .O(r_V_fu_74_p2));
  LUT4 #(
    .INIT(16'hF0F7)) 
    \r_V_reg_85_pp0_iter1_reg[0]_i_1 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(r_V_reg_85),
        .I2(evUSBStreamOut_V_V_1_ack_in),
        .I3(ap_enable_reg_pp0_iter2),
        .O(ap_block_pp0_stage0_11001));
  FDRE \r_V_reg_85_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(r_V_reg_85),
        .Q(eventFIFODVReg_V),
        .R(1'b0));
  FDRE \r_V_reg_85_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(r_V_fu_74_p2),
        .Q(r_V_reg_85),
        .R(1'b0));
  FDRE \tmp_V_reg_80_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(dataToCheck_V[0]),
        .Q(tmp_V_reg_80[0]),
        .R(1'b0));
  FDRE \tmp_V_reg_80_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(dataToCheck_V[1]),
        .Q(tmp_V_reg_80[1]),
        .R(1'b0));
  FDRE \tmp_V_reg_80_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(dataToCheck_V[2]),
        .Q(tmp_V_reg_80[2]),
        .R(1'b0));
  FDRE \tmp_V_reg_80_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(dataToCheck_V[3]),
        .Q(tmp_V_reg_80[3]),
        .R(1'b0));
  FDRE \tmp_V_reg_80_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(dataToCheck_V[4]),
        .Q(tmp_V_reg_80[4]),
        .R(1'b0));
  FDRE \tmp_V_reg_80_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(dataToCheck_V[5]),
        .Q(tmp_V_reg_80[5]),
        .R(1'b0));
  FDRE \tmp_V_reg_80_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(dataToCheck_V[6]),
        .Q(tmp_V_reg_80[6]),
        .R(1'b0));
  FDRE \tmp_V_reg_80_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_11001),
        .D(dataToCheck_V[7]),
        .Q(tmp_V_reg_80[7]),
        .R(1'b0));
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
