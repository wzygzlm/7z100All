-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Sun Mar  1 16:18:51 2020
-- Host        : DESKTOP-MC69HMJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_MyDFFSynchronizer_0_0/brd_MyDFFSynchronizer_0_0_sim_netlist.vhdl
-- Design      : brd_MyDFFSynchronizer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z100ffg900-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_MyDFFSynchronizer_0_0_MyDFFSynchronizer is
  port (
    SyncedSignal_SO : out STD_LOGIC_VECTOR ( 0 to 0 );
    SignalToSync_SI : in STD_LOGIC_VECTOR ( 0 to 0 );
    SyncClock_CI : in STD_LOGIC;
    Reset_RI : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of brd_MyDFFSynchronizer_0_0_MyDFFSynchronizer : entity is "MyDFFSynchronizer";
end brd_MyDFFSynchronizer_0_0_MyDFFSynchronizer;

architecture STRUCTURE of brd_MyDFFSynchronizer_0_0_MyDFFSynchronizer is
  signal SyncSignalDemetFF_S : STD_LOGIC;
begin
\SyncSignalDemetFF_S_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => SyncClock_CI,
      CE => '1',
      CLR => Reset_RI,
      D => SignalToSync_SI(0),
      Q => SyncSignalDemetFF_S
    );
\SyncSignalSyncFF_S_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => SyncClock_CI,
      CE => '1',
      CLR => Reset_RI,
      D => SyncSignalDemetFF_S,
      Q => SyncedSignal_SO(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_MyDFFSynchronizer_0_0 is
  port (
    SyncClock_CI : in STD_LOGIC;
    Reset_RI : in STD_LOGIC;
    SignalToSync_SI : in STD_LOGIC_VECTOR ( 0 to 0 );
    SyncedSignal_SO : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of brd_MyDFFSynchronizer_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of brd_MyDFFSynchronizer_0_0 : entity is "brd_MyDFFSynchronizer_0_0,MyDFFSynchronizer,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of brd_MyDFFSynchronizer_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of brd_MyDFFSynchronizer_0_0 : entity is "MyDFFSynchronizer,Vivado 2018.1";
end brd_MyDFFSynchronizer_0_0;

architecture STRUCTURE of brd_MyDFFSynchronizer_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of Reset_RI : signal is "xilinx.com:signal:reset:1.0 Reset_RI RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of Reset_RI : signal is "XIL_INTERFACENAME Reset_RI, POLARITY ACTIVE_LOW";
begin
U0: entity work.brd_MyDFFSynchronizer_0_0_MyDFFSynchronizer
     port map (
      Reset_RI => Reset_RI,
      SignalToSync_SI(0) => SignalToSync_SI(0),
      SyncClock_CI => SyncClock_CI,
      SyncedSignal_SO(0) => SyncedSignal_SO(0)
    );
end STRUCTURE;
