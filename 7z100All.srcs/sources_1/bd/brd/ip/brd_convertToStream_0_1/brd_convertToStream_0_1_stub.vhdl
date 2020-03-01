-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Sat Feb 29 09:40:14 2020
-- Host        : DESKTOP-MC69HMJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top brd_convertToStream_0_1 -prefix
--               brd_convertToStream_0_1_ brd_convertToStream_0_1_stub.vhdl
-- Design      : brd_convertToStream_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z100ffg900-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity brd_convertToStream_0_1 is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    evUSBStreamOut_V_V_TVALID : out STD_LOGIC;
    evUSBStreamOut_V_V_TREADY : in STD_LOGIC;
    evUSBStreamOut_V_V_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dataReady_V : in STD_LOGIC_VECTOR ( 0 to 0 );
    dataValid_V : in STD_LOGIC_VECTOR ( 0 to 0 );
    dataToCheck_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    eventFIFODVReg_V : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end brd_convertToStream_0_1;

architecture stub of brd_convertToStream_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,evUSBStreamOut_V_V_TVALID,evUSBStreamOut_V_V_TREADY,evUSBStreamOut_V_V_TDATA[7:0],dataReady_V[0:0],dataValid_V[0:0],dataToCheck_V[7:0],eventFIFODVReg_V[0:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "convertToStream,Vivado 2018.1";
begin
end;
