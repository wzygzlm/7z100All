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

-- IP VLNV: xilinx.com:ip:system_ila:1.1
-- IP Revision: 2

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY brd_system_ila_0_1 IS
  PORT (
    clk : IN STD_LOGIC;
    probe0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe1 : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    probe2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe3 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe4 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe5 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    probe6 : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    probe7 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe8 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe9 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe10 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe11 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe12 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe13 : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    probe14 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe15 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe16 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe17 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe18 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    probe19 : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    probe20 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe21 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe22 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    probe23 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    probe24 : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    probe25 : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    probe26 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe27 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    probe28 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    probe29 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe30 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    probe31 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe32 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe33 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    probe34 : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    probe35 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    probe36 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe37 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    probe38 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe39 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe40 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe41 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe42 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe43 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    probe44 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    SLOT_0_AXIS_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    SLOT_0_AXIS_tlast : IN STD_LOGIC;
    SLOT_0_AXIS_tvalid : IN STD_LOGIC;
    SLOT_0_AXIS_tready : IN STD_LOGIC;
    SLOT_1_AXIS_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    SLOT_1_AXIS_tlast : IN STD_LOGIC;
    SLOT_1_AXIS_tvalid : IN STD_LOGIC;
    SLOT_1_AXIS_tready : IN STD_LOGIC;
    SLOT_2_AXIS_tdata : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    SLOT_2_AXIS_tlast : IN STD_LOGIC;
    SLOT_2_AXIS_tvalid : IN STD_LOGIC;
    SLOT_2_AXIS_tready : IN STD_LOGIC;
    resetn : IN STD_LOGIC
  );
END brd_system_ila_0_1;

ARCHITECTURE brd_system_ila_0_1_arch OF brd_system_ila_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF brd_system_ila_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT bd_d325 IS
    PORT (
      clk : IN STD_LOGIC;
      probe0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe1 : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
      probe2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe3 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe4 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe5 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      probe6 : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
      probe7 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe8 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe9 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe10 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe11 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe12 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      probe13 : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      probe14 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe15 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe16 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe17 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe18 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      probe19 : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      probe20 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe21 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe22 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      probe23 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      probe24 : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      probe25 : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      probe26 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe27 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      probe28 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      probe29 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe30 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      probe31 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe32 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe33 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      probe34 : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      probe35 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      probe36 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe37 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      probe38 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe39 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe40 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe41 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe42 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe43 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      probe44 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      SLOT_0_AXIS_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      SLOT_0_AXIS_tlast : IN STD_LOGIC;
      SLOT_0_AXIS_tvalid : IN STD_LOGIC;
      SLOT_0_AXIS_tready : IN STD_LOGIC;
      SLOT_1_AXIS_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      SLOT_1_AXIS_tlast : IN STD_LOGIC;
      SLOT_1_AXIS_tvalid : IN STD_LOGIC;
      SLOT_1_AXIS_tready : IN STD_LOGIC;
      SLOT_2_AXIS_tdata : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      SLOT_2_AXIS_tlast : IN STD_LOGIC;
      SLOT_2_AXIS_tvalid : IN STD_LOGIC;
      SLOT_2_AXIS_tready : IN STD_LOGIC;
      resetn : IN STD_LOGIC
    );
  END COMPONENT bd_d325;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF resetn: SIGNAL IS "XIL_INTERFACENAME RST.resetn, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF resetn: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.resetn RST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXIS_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXIS_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXIS_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TLAST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SLOT_2_AXIS_tdata: SIGNAL IS "XIL_INTERFACENAME SLOT_2_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffs" & 
"et {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} " & 
"maximum {}} value false}}}} TDATA_WIDTH 64}";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXIS_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXIS_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXIS_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXIS_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TLAST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SLOT_1_AXIS_tdata: SIGNAL IS "XIL_INTERFACENAME SLOT_1_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffs" & 
"et {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} " & 
"maximum {}} value false}}}} TDATA_WIDTH 16}";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXIS_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXIS_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXIS_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXIS_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TLAST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SLOT_0_AXIS_tdata: SIGNAL IS "XIL_INTERFACENAME SLOT_0_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffs" & 
"et {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} " & 
"maximum {}} value false}}}} TDATA_WIDTH 16}";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXIS_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME CLK.clk, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF SLOT_0_AXIS:SLOT_1_AXIS:SLOT_2_AXIS, ASSOCIATED_RESET resetn";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.clk CLK";
BEGIN
  U0 : bd_d325
    PORT MAP (
      clk => clk,
      probe0 => probe0,
      probe1 => probe1,
      probe2 => probe2,
      probe3 => probe3,
      probe4 => probe4,
      probe5 => probe5,
      probe6 => probe6,
      probe7 => probe7,
      probe8 => probe8,
      probe9 => probe9,
      probe10 => probe10,
      probe11 => probe11,
      probe12 => probe12,
      probe13 => probe13,
      probe14 => probe14,
      probe15 => probe15,
      probe16 => probe16,
      probe17 => probe17,
      probe18 => probe18,
      probe19 => probe19,
      probe20 => probe20,
      probe21 => probe21,
      probe22 => probe22,
      probe23 => probe23,
      probe24 => probe24,
      probe25 => probe25,
      probe26 => probe26,
      probe27 => probe27,
      probe28 => probe28,
      probe29 => probe29,
      probe30 => probe30,
      probe31 => probe31,
      probe32 => probe32,
      probe33 => probe33,
      probe34 => probe34,
      probe35 => probe35,
      probe36 => probe36,
      probe37 => probe37,
      probe38 => probe38,
      probe39 => probe39,
      probe40 => probe40,
      probe41 => probe41,
      probe42 => probe42,
      probe43 => probe43,
      probe44 => probe44,
      SLOT_0_AXIS_tdata => SLOT_0_AXIS_tdata,
      SLOT_0_AXIS_tlast => SLOT_0_AXIS_tlast,
      SLOT_0_AXIS_tvalid => SLOT_0_AXIS_tvalid,
      SLOT_0_AXIS_tready => SLOT_0_AXIS_tready,
      SLOT_1_AXIS_tdata => SLOT_1_AXIS_tdata,
      SLOT_1_AXIS_tlast => SLOT_1_AXIS_tlast,
      SLOT_1_AXIS_tvalid => SLOT_1_AXIS_tvalid,
      SLOT_1_AXIS_tready => SLOT_1_AXIS_tready,
      SLOT_2_AXIS_tdata => SLOT_2_AXIS_tdata,
      SLOT_2_AXIS_tlast => SLOT_2_AXIS_tlast,
      SLOT_2_AXIS_tvalid => SLOT_2_AXIS_tvalid,
      SLOT_2_AXIS_tready => SLOT_2_AXIS_tready,
      resetn => resetn
    );
END brd_system_ila_0_1_arch;
