// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Fri Feb 21 13:53:54 2020
// Host        : DESKTOP-3TNSMFC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top brd_RawStreamToFIFO_0_0 -prefix
//               brd_RawStreamToFIFO_0_0_ brd_RawStreamToFIFO_0_0_sim_netlist.v
// Design      : brd_RawStreamToFIFO_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module brd_RawStreamToFIFO_0_0_RawStreamToFIFO
   (ap_clk,
    ap_rst_n,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    streamIn_V_V_TDATA,
    streamIn_V_V_TVALID,
    streamIn_V_V_TREADY,
    fifoIFInFull_n_V,
    fifoIFOutData_V,
    fifoIFOutData_V_ap_vld,
    skippedData_V,
    skippedData_V_ap_vld);
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input [15:0]streamIn_V_V_TDATA;
  input streamIn_V_V_TVALID;
  output streamIn_V_V_TREADY;
  input [0:0]fifoIFInFull_n_V;
  output [15:0]fifoIFOutData_V;
  output fifoIFOutData_V_ap_vld;
  output [15:0]skippedData_V;
  output skippedData_V_ap_vld;

  wire ap_clk;
  wire ap_done;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1_n_0;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire [0:0]fifoIFInFull_n_V;
  wire fifoIFInFull_n_V_rea_reg_100;
  wire \fifoIFInFull_n_V_rea_reg_100[0]_i_1_n_0 ;
  wire fifoIFOutData_V_ap_vld;
  wire [15:0]skippedData_V;
  wire skippedData_V_ap_vld;
  wire streamIn_V_V_0_load_B;
  wire [15:0]streamIn_V_V_0_payload_A;
  wire \streamIn_V_V_0_payload_A[15]_i_1_n_0 ;
  wire [15:0]streamIn_V_V_0_payload_B;
  wire streamIn_V_V_0_sel;
  wire streamIn_V_V_0_sel_rd_i_1_n_0;
  wire streamIn_V_V_0_sel_wr;
  wire streamIn_V_V_0_sel_wr_i_1_n_0;
  wire \streamIn_V_V_0_state[0]_i_1_n_0 ;
  wire \streamIn_V_V_0_state[1]_i_2_n_0 ;
  wire \streamIn_V_V_0_state_reg_n_0_[0] ;
  wire [15:0]streamIn_V_V_TDATA;
  wire streamIn_V_V_TREADY;
  wire streamIn_V_V_TVALID;

  assign fifoIFOutData_V[15:0] = skippedData_V;
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ap_done_INST_0
       (.I0(\streamIn_V_V_0_state_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter1),
        .O(ap_done));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_start),
        .I1(\streamIn_V_V_0_state_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1),
        .O(ap_enable_reg_pp0_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter1),
        .R(ap_rst_n_inv));
  LUT2 #(
    .INIT(4'h1)) 
    ap_idle_INST_0
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(ap_start),
        .O(ap_idle));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    ap_ready_INST_0
       (.I0(ap_start),
        .I1(\streamIn_V_V_0_state_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1),
        .O(ap_ready));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \fifoIFInFull_n_V_rea_reg_100[0]_i_1 
       (.I0(fifoIFInFull_n_V),
        .I1(\streamIn_V_V_0_state_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(fifoIFInFull_n_V_rea_reg_100),
        .O(\fifoIFInFull_n_V_rea_reg_100[0]_i_1_n_0 ));
  FDRE \fifoIFInFull_n_V_rea_reg_100_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\fifoIFInFull_n_V_rea_reg_100[0]_i_1_n_0 ),
        .Q(fifoIFInFull_n_V_rea_reg_100),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    fifoIFOutData_V_ap_vld_INST_0
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(\streamIn_V_V_0_state_reg_n_0_[0] ),
        .I2(fifoIFInFull_n_V_rea_reg_100),
        .O(fifoIFOutData_V_ap_vld));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \skippedData_V[0]_INST_0 
       (.I0(streamIn_V_V_0_payload_B[8]),
        .I1(streamIn_V_V_0_payload_A[8]),
        .I2(streamIn_V_V_0_sel),
        .O(skippedData_V[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \skippedData_V[10]_INST_0 
       (.I0(streamIn_V_V_0_payload_B[2]),
        .I1(streamIn_V_V_0_payload_A[2]),
        .I2(streamIn_V_V_0_sel),
        .O(skippedData_V[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \skippedData_V[11]_INST_0 
       (.I0(streamIn_V_V_0_payload_B[3]),
        .I1(streamIn_V_V_0_payload_A[3]),
        .I2(streamIn_V_V_0_sel),
        .O(skippedData_V[11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \skippedData_V[12]_INST_0 
       (.I0(streamIn_V_V_0_payload_B[4]),
        .I1(streamIn_V_V_0_payload_A[4]),
        .I2(streamIn_V_V_0_sel),
        .O(skippedData_V[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \skippedData_V[13]_INST_0 
       (.I0(streamIn_V_V_0_payload_B[5]),
        .I1(streamIn_V_V_0_payload_A[5]),
        .I2(streamIn_V_V_0_sel),
        .O(skippedData_V[13]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \skippedData_V[14]_INST_0 
       (.I0(streamIn_V_V_0_payload_B[6]),
        .I1(streamIn_V_V_0_payload_A[6]),
        .I2(streamIn_V_V_0_sel),
        .O(skippedData_V[14]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \skippedData_V[15]_INST_0 
       (.I0(streamIn_V_V_0_payload_B[7]),
        .I1(streamIn_V_V_0_payload_A[7]),
        .I2(streamIn_V_V_0_sel),
        .O(skippedData_V[15]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \skippedData_V[1]_INST_0 
       (.I0(streamIn_V_V_0_payload_B[9]),
        .I1(streamIn_V_V_0_payload_A[9]),
        .I2(streamIn_V_V_0_sel),
        .O(skippedData_V[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \skippedData_V[2]_INST_0 
       (.I0(streamIn_V_V_0_payload_B[10]),
        .I1(streamIn_V_V_0_payload_A[10]),
        .I2(streamIn_V_V_0_sel),
        .O(skippedData_V[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \skippedData_V[3]_INST_0 
       (.I0(streamIn_V_V_0_payload_B[11]),
        .I1(streamIn_V_V_0_payload_A[11]),
        .I2(streamIn_V_V_0_sel),
        .O(skippedData_V[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \skippedData_V[4]_INST_0 
       (.I0(streamIn_V_V_0_payload_B[12]),
        .I1(streamIn_V_V_0_payload_A[12]),
        .I2(streamIn_V_V_0_sel),
        .O(skippedData_V[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \skippedData_V[5]_INST_0 
       (.I0(streamIn_V_V_0_payload_B[13]),
        .I1(streamIn_V_V_0_payload_A[13]),
        .I2(streamIn_V_V_0_sel),
        .O(skippedData_V[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \skippedData_V[6]_INST_0 
       (.I0(streamIn_V_V_0_payload_B[14]),
        .I1(streamIn_V_V_0_payload_A[14]),
        .I2(streamIn_V_V_0_sel),
        .O(skippedData_V[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \skippedData_V[7]_INST_0 
       (.I0(streamIn_V_V_0_payload_B[15]),
        .I1(streamIn_V_V_0_payload_A[15]),
        .I2(streamIn_V_V_0_sel),
        .O(skippedData_V[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \skippedData_V[8]_INST_0 
       (.I0(streamIn_V_V_0_payload_B[0]),
        .I1(streamIn_V_V_0_payload_A[0]),
        .I2(streamIn_V_V_0_sel),
        .O(skippedData_V[8]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \skippedData_V[9]_INST_0 
       (.I0(streamIn_V_V_0_payload_B[1]),
        .I1(streamIn_V_V_0_payload_A[1]),
        .I2(streamIn_V_V_0_sel),
        .O(skippedData_V[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    skippedData_V_ap_vld_INST_0
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(\streamIn_V_V_0_state_reg_n_0_[0] ),
        .I2(fifoIFInFull_n_V_rea_reg_100),
        .O(skippedData_V_ap_vld));
  LUT3 #(
    .INIT(8'h0D)) 
    \streamIn_V_V_0_payload_A[15]_i_1 
       (.I0(\streamIn_V_V_0_state_reg_n_0_[0] ),
        .I1(streamIn_V_V_TREADY),
        .I2(streamIn_V_V_0_sel_wr),
        .O(\streamIn_V_V_0_payload_A[15]_i_1_n_0 ));
  FDRE \streamIn_V_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(\streamIn_V_V_0_payload_A[15]_i_1_n_0 ),
        .D(streamIn_V_V_TDATA[0]),
        .Q(streamIn_V_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \streamIn_V_V_0_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(\streamIn_V_V_0_payload_A[15]_i_1_n_0 ),
        .D(streamIn_V_V_TDATA[10]),
        .Q(streamIn_V_V_0_payload_A[10]),
        .R(1'b0));
  FDRE \streamIn_V_V_0_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(\streamIn_V_V_0_payload_A[15]_i_1_n_0 ),
        .D(streamIn_V_V_TDATA[11]),
        .Q(streamIn_V_V_0_payload_A[11]),
        .R(1'b0));
  FDRE \streamIn_V_V_0_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(\streamIn_V_V_0_payload_A[15]_i_1_n_0 ),
        .D(streamIn_V_V_TDATA[12]),
        .Q(streamIn_V_V_0_payload_A[12]),
        .R(1'b0));
  FDRE \streamIn_V_V_0_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(\streamIn_V_V_0_payload_A[15]_i_1_n_0 ),
        .D(streamIn_V_V_TDATA[13]),
        .Q(streamIn_V_V_0_payload_A[13]),
        .R(1'b0));
  FDRE \streamIn_V_V_0_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(\streamIn_V_V_0_payload_A[15]_i_1_n_0 ),
        .D(streamIn_V_V_TDATA[14]),
        .Q(streamIn_V_V_0_payload_A[14]),
        .R(1'b0));
  FDRE \streamIn_V_V_0_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(\streamIn_V_V_0_payload_A[15]_i_1_n_0 ),
        .D(streamIn_V_V_TDATA[15]),
        .Q(streamIn_V_V_0_payload_A[15]),
        .R(1'b0));
  FDRE \streamIn_V_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(\streamIn_V_V_0_payload_A[15]_i_1_n_0 ),
        .D(streamIn_V_V_TDATA[1]),
        .Q(streamIn_V_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \streamIn_V_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(\streamIn_V_V_0_payload_A[15]_i_1_n_0 ),
        .D(streamIn_V_V_TDATA[2]),
        .Q(streamIn_V_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \streamIn_V_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(\streamIn_V_V_0_payload_A[15]_i_1_n_0 ),
        .D(streamIn_V_V_TDATA[3]),
        .Q(streamIn_V_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \streamIn_V_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(\streamIn_V_V_0_payload_A[15]_i_1_n_0 ),
        .D(streamIn_V_V_TDATA[4]),
        .Q(streamIn_V_V_0_payload_A[4]),
        .R(1'b0));
  FDRE \streamIn_V_V_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(\streamIn_V_V_0_payload_A[15]_i_1_n_0 ),
        .D(streamIn_V_V_TDATA[5]),
        .Q(streamIn_V_V_0_payload_A[5]),
        .R(1'b0));
  FDRE \streamIn_V_V_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(\streamIn_V_V_0_payload_A[15]_i_1_n_0 ),
        .D(streamIn_V_V_TDATA[6]),
        .Q(streamIn_V_V_0_payload_A[6]),
        .R(1'b0));
  FDRE \streamIn_V_V_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(\streamIn_V_V_0_payload_A[15]_i_1_n_0 ),
        .D(streamIn_V_V_TDATA[7]),
        .Q(streamIn_V_V_0_payload_A[7]),
        .R(1'b0));
  FDRE \streamIn_V_V_0_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(\streamIn_V_V_0_payload_A[15]_i_1_n_0 ),
        .D(streamIn_V_V_TDATA[8]),
        .Q(streamIn_V_V_0_payload_A[8]),
        .R(1'b0));
  FDRE \streamIn_V_V_0_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(\streamIn_V_V_0_payload_A[15]_i_1_n_0 ),
        .D(streamIn_V_V_TDATA[9]),
        .Q(streamIn_V_V_0_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA2)) 
    \streamIn_V_V_0_payload_B[15]_i_1 
       (.I0(streamIn_V_V_0_sel_wr),
        .I1(\streamIn_V_V_0_state_reg_n_0_[0] ),
        .I2(streamIn_V_V_TREADY),
        .O(streamIn_V_V_0_load_B));
  FDRE \streamIn_V_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(streamIn_V_V_0_load_B),
        .D(streamIn_V_V_TDATA[0]),
        .Q(streamIn_V_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \streamIn_V_V_0_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(streamIn_V_V_0_load_B),
        .D(streamIn_V_V_TDATA[10]),
        .Q(streamIn_V_V_0_payload_B[10]),
        .R(1'b0));
  FDRE \streamIn_V_V_0_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(streamIn_V_V_0_load_B),
        .D(streamIn_V_V_TDATA[11]),
        .Q(streamIn_V_V_0_payload_B[11]),
        .R(1'b0));
  FDRE \streamIn_V_V_0_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(streamIn_V_V_0_load_B),
        .D(streamIn_V_V_TDATA[12]),
        .Q(streamIn_V_V_0_payload_B[12]),
        .R(1'b0));
  FDRE \streamIn_V_V_0_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(streamIn_V_V_0_load_B),
        .D(streamIn_V_V_TDATA[13]),
        .Q(streamIn_V_V_0_payload_B[13]),
        .R(1'b0));
  FDRE \streamIn_V_V_0_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(streamIn_V_V_0_load_B),
        .D(streamIn_V_V_TDATA[14]),
        .Q(streamIn_V_V_0_payload_B[14]),
        .R(1'b0));
  FDRE \streamIn_V_V_0_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(streamIn_V_V_0_load_B),
        .D(streamIn_V_V_TDATA[15]),
        .Q(streamIn_V_V_0_payload_B[15]),
        .R(1'b0));
  FDRE \streamIn_V_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(streamIn_V_V_0_load_B),
        .D(streamIn_V_V_TDATA[1]),
        .Q(streamIn_V_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \streamIn_V_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(streamIn_V_V_0_load_B),
        .D(streamIn_V_V_TDATA[2]),
        .Q(streamIn_V_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \streamIn_V_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(streamIn_V_V_0_load_B),
        .D(streamIn_V_V_TDATA[3]),
        .Q(streamIn_V_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \streamIn_V_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(streamIn_V_V_0_load_B),
        .D(streamIn_V_V_TDATA[4]),
        .Q(streamIn_V_V_0_payload_B[4]),
        .R(1'b0));
  FDRE \streamIn_V_V_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(streamIn_V_V_0_load_B),
        .D(streamIn_V_V_TDATA[5]),
        .Q(streamIn_V_V_0_payload_B[5]),
        .R(1'b0));
  FDRE \streamIn_V_V_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(streamIn_V_V_0_load_B),
        .D(streamIn_V_V_TDATA[6]),
        .Q(streamIn_V_V_0_payload_B[6]),
        .R(1'b0));
  FDRE \streamIn_V_V_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(streamIn_V_V_0_load_B),
        .D(streamIn_V_V_TDATA[7]),
        .Q(streamIn_V_V_0_payload_B[7]),
        .R(1'b0));
  FDRE \streamIn_V_V_0_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(streamIn_V_V_0_load_B),
        .D(streamIn_V_V_TDATA[8]),
        .Q(streamIn_V_V_0_payload_B[8]),
        .R(1'b0));
  FDRE \streamIn_V_V_0_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(streamIn_V_V_0_load_B),
        .D(streamIn_V_V_TDATA[9]),
        .Q(streamIn_V_V_0_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    streamIn_V_V_0_sel_rd_i_1
       (.I0(\streamIn_V_V_0_state_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(streamIn_V_V_0_sel),
        .O(streamIn_V_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    streamIn_V_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(streamIn_V_V_0_sel_rd_i_1_n_0),
        .Q(streamIn_V_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    streamIn_V_V_0_sel_wr_i_1
       (.I0(streamIn_V_V_TREADY),
        .I1(streamIn_V_V_TVALID),
        .I2(streamIn_V_V_0_sel_wr),
        .O(streamIn_V_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    streamIn_V_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(streamIn_V_V_0_sel_wr_i_1_n_0),
        .Q(streamIn_V_V_0_sel_wr),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h8AAA8080)) 
    \streamIn_V_V_0_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(streamIn_V_V_TVALID),
        .I2(streamIn_V_V_TREADY),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\streamIn_V_V_0_state_reg_n_0_[0] ),
        .O(\streamIn_V_V_0_state[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \streamIn_V_V_0_state[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBAFF)) 
    \streamIn_V_V_0_state[1]_i_2 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(streamIn_V_V_TVALID),
        .I2(streamIn_V_V_TREADY),
        .I3(\streamIn_V_V_0_state_reg_n_0_[0] ),
        .O(\streamIn_V_V_0_state[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \streamIn_V_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\streamIn_V_V_0_state[0]_i_1_n_0 ),
        .Q(\streamIn_V_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \streamIn_V_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\streamIn_V_V_0_state[1]_i_2_n_0 ),
        .Q(streamIn_V_V_TREADY),
        .R(ap_rst_n_inv));
endmodule

(* CHECK_LICENSE_TYPE = "brd_RawStreamToFIFO_0_0,RawStreamToFIFO,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "RawStreamToFIFO,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module brd_RawStreamToFIFO_0_0
   (fifoIFOutData_V_ap_vld,
    skippedData_V_ap_vld,
    ap_clk,
    ap_rst_n,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    streamIn_V_V_TVALID,
    streamIn_V_V_TREADY,
    streamIn_V_V_TDATA,
    fifoIFInFull_n_V,
    fifoIFOutData_V,
    skippedData_V);
  output fifoIFOutData_V_ap_vld;
  output skippedData_V_ap_vld;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF streamIn_V_V, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) input ap_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) input ap_rst_n;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) input ap_start;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 streamIn_V_V TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME streamIn_V_V, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) input streamIn_V_V_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 streamIn_V_V TREADY" *) output streamIn_V_V_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 streamIn_V_V TDATA" *) input [15:0]streamIn_V_V_TDATA;
  (* x_interface_info = "xilinx.com:signal:data:1.0 fifoIFInFull_n_V DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME fifoIFInFull_n_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [0:0]fifoIFInFull_n_V;
  (* x_interface_info = "xilinx.com:signal:data:1.0 fifoIFOutData_V DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME fifoIFOutData_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [15:0]fifoIFOutData_V;
  (* x_interface_info = "xilinx.com:signal:data:1.0 skippedData_V DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME skippedData_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [15:0]skippedData_V;

  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_start;
  wire [0:0]fifoIFInFull_n_V;
  wire [15:0]fifoIFOutData_V;
  wire fifoIFOutData_V_ap_vld;
  wire [15:0]skippedData_V;
  wire skippedData_V_ap_vld;
  wire [15:0]streamIn_V_V_TDATA;
  wire streamIn_V_V_TREADY;
  wire streamIn_V_V_TVALID;

  brd_RawStreamToFIFO_0_0_RawStreamToFIFO U0
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .fifoIFInFull_n_V(fifoIFInFull_n_V),
        .fifoIFOutData_V(fifoIFOutData_V),
        .fifoIFOutData_V_ap_vld(fifoIFOutData_V_ap_vld),
        .skippedData_V(skippedData_V),
        .skippedData_V_ap_vld(skippedData_V_ap_vld),
        .streamIn_V_V_TDATA(streamIn_V_V_TDATA),
        .streamIn_V_V_TREADY(streamIn_V_V_TREADY),
        .streamIn_V_V_TVALID(streamIn_V_V_TVALID));
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
