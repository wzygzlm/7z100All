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

-- IP VLNV: xilinx.com:module_ref:MyDFFSynchronizer:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY brd_MyDFFSynchronizer_0_1 IS
  PORT (
    SyncClock_CI : IN STD_LOGIC;
    Reset_RI : IN STD_LOGIC;
    SignalToSync_SI : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    SyncedSignal_SO : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END brd_MyDFFSynchronizer_0_1;

ARCHITECTURE brd_MyDFFSynchronizer_0_1_arch OF brd_MyDFFSynchronizer_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF brd_MyDFFSynchronizer_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT MyDFFSynchronizer IS
    GENERIC (
      SIZE : INTEGER;
      RESET_VALUE : STD_LOGIC
    );
    PORT (
      SyncClock_CI : IN STD_LOGIC;
      Reset_RI : IN STD_LOGIC;
      SignalToSync_SI : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      SyncedSignal_SO : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
  END COMPONENT MyDFFSynchronizer;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF brd_MyDFFSynchronizer_0_1_arch: ARCHITECTURE IS "MyDFFSynchronizer,Vivado 2018.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF brd_MyDFFSynchronizer_0_1_arch : ARCHITECTURE IS "brd_MyDFFSynchronizer_0_1,MyDFFSynchronizer,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF brd_MyDFFSynchronizer_0_1_arch: ARCHITECTURE IS "brd_MyDFFSynchronizer_0_1,MyDFFSynchronizer,{x_ipProduct=Vivado 2018.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=MyDFFSynchronizer,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,SIZE=1,RESET_VALUE=0}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF Reset_RI: SIGNAL IS "XIL_INTERFACENAME Reset_RI, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF Reset_RI: SIGNAL IS "xilinx.com:signal:reset:1.0 Reset_RI RST";
BEGIN
  U0 : MyDFFSynchronizer
    GENERIC MAP (
      SIZE => 1,
      RESET_VALUE => '0'
    )
    PORT MAP (
      SyncClock_CI => SyncClock_CI,
      Reset_RI => Reset_RI,
      SignalToSync_SI => SignalToSync_SI,
      SyncedSignal_SO => SyncedSignal_SO
    );
END brd_MyDFFSynchronizer_0_1_arch;
