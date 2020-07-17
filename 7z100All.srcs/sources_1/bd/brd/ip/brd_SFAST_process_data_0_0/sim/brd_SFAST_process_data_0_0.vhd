-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:SFAST_process_data:1.0
-- IP Revision: 2007161937

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY brd_SFAST_process_data_0_0 IS
  PORT (
    status_inEventsNum_ap_vld : OUT STD_LOGIC;
    status_outEventsNum_ap_vld : OUT STD_LOGIC;
    status_cornerEventsNum_ap_vld : OUT STD_LOGIC;
    xStreamIn_V_V_TVALID : IN STD_LOGIC;
    xStreamIn_V_V_TREADY : OUT STD_LOGIC;
    xStreamIn_V_V_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    yStreamIn_V_V_TVALID : IN STD_LOGIC;
    yStreamIn_V_V_TREADY : OUT STD_LOGIC;
    yStreamIn_V_V_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    tsStreamIn_V_V_TVALID : IN STD_LOGIC;
    tsStreamIn_V_V_TREADY : OUT STD_LOGIC;
    tsStreamIn_V_V_TDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    polStreamIn_V_V_TVALID : IN STD_LOGIC;
    polStreamIn_V_V_TREADY : OUT STD_LOGIC;
    polStreamIn_V_V_TDATA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    xStreamOut_V_V_TVALID : OUT STD_LOGIC;
    xStreamOut_V_V_TREADY : IN STD_LOGIC;
    xStreamOut_V_V_TDATA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    yStreamOut_V_V_TVALID : OUT STD_LOGIC;
    yStreamOut_V_V_TREADY : IN STD_LOGIC;
    yStreamOut_V_V_TDATA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    tsStreamOut_V_V_TVALID : OUT STD_LOGIC;
    tsStreamOut_V_V_TREADY : IN STD_LOGIC;
    tsStreamOut_V_V_TDATA : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    polStreamOut_V_V_TVALID : OUT STD_LOGIC;
    polStreamOut_V_V_TREADY : IN STD_LOGIC;
    polStreamOut_V_V_TDATA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    isFinalCornerStream_V_V_TVALID : OUT STD_LOGIC;
    isFinalCornerStream_V_V_TREADY : IN STD_LOGIC;
    isFinalCornerStream_V_V_TDATA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    config_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    status_inEventsNum : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    status_outEventsNum : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    status_cornerEventsNum : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC
  );
END brd_SFAST_process_data_0_0;

ARCHITECTURE brd_SFAST_process_data_0_0_arch OF brd_SFAST_process_data_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF brd_SFAST_process_data_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT SFAST_process_data IS
    PORT (
      status_inEventsNum_ap_vld : OUT STD_LOGIC;
      status_outEventsNum_ap_vld : OUT STD_LOGIC;
      status_cornerEventsNum_ap_vld : OUT STD_LOGIC;
      xStreamIn_V_V_TVALID : IN STD_LOGIC;
      xStreamIn_V_V_TREADY : OUT STD_LOGIC;
      xStreamIn_V_V_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      yStreamIn_V_V_TVALID : IN STD_LOGIC;
      yStreamIn_V_V_TREADY : OUT STD_LOGIC;
      yStreamIn_V_V_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      tsStreamIn_V_V_TVALID : IN STD_LOGIC;
      tsStreamIn_V_V_TREADY : OUT STD_LOGIC;
      tsStreamIn_V_V_TDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      polStreamIn_V_V_TVALID : IN STD_LOGIC;
      polStreamIn_V_V_TREADY : OUT STD_LOGIC;
      polStreamIn_V_V_TDATA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      xStreamOut_V_V_TVALID : OUT STD_LOGIC;
      xStreamOut_V_V_TREADY : IN STD_LOGIC;
      xStreamOut_V_V_TDATA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      yStreamOut_V_V_TVALID : OUT STD_LOGIC;
      yStreamOut_V_V_TREADY : IN STD_LOGIC;
      yStreamOut_V_V_TDATA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      tsStreamOut_V_V_TVALID : OUT STD_LOGIC;
      tsStreamOut_V_V_TREADY : IN STD_LOGIC;
      tsStreamOut_V_V_TDATA : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      polStreamOut_V_V_TVALID : OUT STD_LOGIC;
      polStreamOut_V_V_TREADY : IN STD_LOGIC;
      polStreamOut_V_V_TDATA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      isFinalCornerStream_V_V_TVALID : OUT STD_LOGIC;
      isFinalCornerStream_V_V_TREADY : IN STD_LOGIC;
      isFinalCornerStream_V_V_TDATA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      config_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      status_inEventsNum : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      status_outEventsNum : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      status_cornerEventsNum : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      ap_done : OUT STD_LOGIC;
      ap_start : IN STD_LOGIC;
      ap_ready : OUT STD_LOGIC;
      ap_idle : OUT STD_LOGIC
    );
  END COMPONENT SFAST_process_data;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF ap_idle: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  ATTRIBUTE X_INTERFACE_INFO OF ap_ready: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  ATTRIBUTE X_INTERFACE_INFO OF ap_start: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_done: SIGNAL IS "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum " & 
"{}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format lon" & 
"g minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF ap_done: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst_n: SIGNAL IS "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF xStreamIn_V_V:yStreamIn_V_V:tsStreamIn_V_V:polStreamIn_V_V:xStreamOut_V_V:yStreamOut_V_V:tsStreamOut_V_V:polStreamOut_V_V:isFinalCornerStream_V_V, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attri" & 
"bs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF status_cornerEventsNum: SIGNAL IS "XIL_INTERFACENAME status_cornerEventsNum, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} ma" & 
"ximum {}} value true}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF status_cornerEventsNum: SIGNAL IS "xilinx.com:signal:data:1.0 status_cornerEventsNum DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF status_outEventsNum: SIGNAL IS "XIL_INTERFACENAME status_outEventsNum, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maxim" & 
"um {}} value true}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF status_outEventsNum: SIGNAL IS "xilinx.com:signal:data:1.0 status_outEventsNum DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF status_inEventsNum: SIGNAL IS "XIL_INTERFACENAME status_inEventsNum, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximu" & 
"m {}} value true}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF status_inEventsNum: SIGNAL IS "xilinx.com:signal:data:1.0 status_inEventsNum DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF config_V: SIGNAL IS "XIL_INTERFACENAME config_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} valu" & 
"e false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF config_V: SIGNAL IS "xilinx.com:signal:data:1.0 config_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF isFinalCornerStream_V_V_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 isFinalCornerStream_V_V TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF isFinalCornerStream_V_V_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 isFinalCornerStream_V_V TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF isFinalCornerStream_V_V_TVALID: SIGNAL IS "XIL_INTERFACENAME isFinalCornerStream_V_V, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediat" & 
"e dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0" & 
".000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF isFinalCornerStream_V_V_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 isFinalCornerStream_V_V TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF polStreamOut_V_V_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 polStreamOut_V_V TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF polStreamOut_V_V_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 polStreamOut_V_V TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF polStreamOut_V_V_TVALID: SIGNAL IS "XIL_INTERFACENAME polStreamOut_V_V, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate depen" & 
"dency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, C" & 
"LK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF polStreamOut_V_V_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 polStreamOut_V_V TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF tsStreamOut_V_V_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 tsStreamOut_V_V TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF tsStreamOut_V_V_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 tsStreamOut_V_V TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF tsStreamOut_V_V_TVALID: SIGNAL IS "XIL_INTERFACENAME tsStreamOut_V_V, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate depend" & 
"ency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 64}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, " & 
"CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF tsStreamOut_V_V_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 tsStreamOut_V_V TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF yStreamOut_V_V_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 yStreamOut_V_V TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF yStreamOut_V_V_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 yStreamOut_V_V TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF yStreamOut_V_V_TVALID: SIGNAL IS "XIL_INTERFACENAME yStreamOut_V_V, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate depende" & 
"ncy {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 16}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, C" & 
"LK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF yStreamOut_V_V_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 yStreamOut_V_V TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF xStreamOut_V_V_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 xStreamOut_V_V TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF xStreamOut_V_V_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 xStreamOut_V_V TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF xStreamOut_V_V_TVALID: SIGNAL IS "XIL_INTERFACENAME xStreamOut_V_V, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate depende" & 
"ncy {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 16}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, C" & 
"LK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF xStreamOut_V_V_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 xStreamOut_V_V TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF polStreamIn_V_V_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 polStreamIn_V_V TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF polStreamIn_V_V_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 polStreamIn_V_V TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF polStreamIn_V_V_TVALID: SIGNAL IS "XIL_INTERFACENAME polStreamIn_V_V, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_" & 
"TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF polStreamIn_V_V_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 polStreamIn_V_V TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF tsStreamIn_V_V_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 tsStreamIn_V_V TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF tsStreamIn_V_V_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 tsStreamIn_V_V TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF tsStreamIn_V_V_TVALID: SIGNAL IS "XIL_INTERFACENAME tsStreamIn_V_V, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_T" & 
"KEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF tsStreamIn_V_V_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 tsStreamIn_V_V TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF yStreamIn_V_V_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 yStreamIn_V_V TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF yStreamIn_V_V_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 yStreamIn_V_V TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF yStreamIn_V_V_TVALID: SIGNAL IS "XIL_INTERFACENAME yStreamIn_V_V, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TK" & 
"EEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF yStreamIn_V_V_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 yStreamIn_V_V TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF xStreamIn_V_V_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 xStreamIn_V_V TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF xStreamIn_V_V_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 xStreamIn_V_V TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF xStreamIn_V_V_TVALID: SIGNAL IS "XIL_INTERFACENAME xStreamIn_V_V, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TK" & 
"EEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF xStreamIn_V_V_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 xStreamIn_V_V TVALID";
BEGIN
  U0 : SFAST_process_data
    PORT MAP (
      status_inEventsNum_ap_vld => status_inEventsNum_ap_vld,
      status_outEventsNum_ap_vld => status_outEventsNum_ap_vld,
      status_cornerEventsNum_ap_vld => status_cornerEventsNum_ap_vld,
      xStreamIn_V_V_TVALID => xStreamIn_V_V_TVALID,
      xStreamIn_V_V_TREADY => xStreamIn_V_V_TREADY,
      xStreamIn_V_V_TDATA => xStreamIn_V_V_TDATA,
      yStreamIn_V_V_TVALID => yStreamIn_V_V_TVALID,
      yStreamIn_V_V_TREADY => yStreamIn_V_V_TREADY,
      yStreamIn_V_V_TDATA => yStreamIn_V_V_TDATA,
      tsStreamIn_V_V_TVALID => tsStreamIn_V_V_TVALID,
      tsStreamIn_V_V_TREADY => tsStreamIn_V_V_TREADY,
      tsStreamIn_V_V_TDATA => tsStreamIn_V_V_TDATA,
      polStreamIn_V_V_TVALID => polStreamIn_V_V_TVALID,
      polStreamIn_V_V_TREADY => polStreamIn_V_V_TREADY,
      polStreamIn_V_V_TDATA => polStreamIn_V_V_TDATA,
      xStreamOut_V_V_TVALID => xStreamOut_V_V_TVALID,
      xStreamOut_V_V_TREADY => xStreamOut_V_V_TREADY,
      xStreamOut_V_V_TDATA => xStreamOut_V_V_TDATA,
      yStreamOut_V_V_TVALID => yStreamOut_V_V_TVALID,
      yStreamOut_V_V_TREADY => yStreamOut_V_V_TREADY,
      yStreamOut_V_V_TDATA => yStreamOut_V_V_TDATA,
      tsStreamOut_V_V_TVALID => tsStreamOut_V_V_TVALID,
      tsStreamOut_V_V_TREADY => tsStreamOut_V_V_TREADY,
      tsStreamOut_V_V_TDATA => tsStreamOut_V_V_TDATA,
      polStreamOut_V_V_TVALID => polStreamOut_V_V_TVALID,
      polStreamOut_V_V_TREADY => polStreamOut_V_V_TREADY,
      polStreamOut_V_V_TDATA => polStreamOut_V_V_TDATA,
      isFinalCornerStream_V_V_TVALID => isFinalCornerStream_V_V_TVALID,
      isFinalCornerStream_V_V_TREADY => isFinalCornerStream_V_V_TREADY,
      isFinalCornerStream_V_V_TDATA => isFinalCornerStream_V_V_TDATA,
      config_V => config_V,
      status_inEventsNum => status_inEventsNum,
      status_outEventsNum => status_outEventsNum,
      status_cornerEventsNum => status_cornerEventsNum,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_done => ap_done,
      ap_start => ap_start,
      ap_ready => ap_ready,
      ap_idle => ap_idle
    );
END brd_SFAST_process_data_0_0_arch;
