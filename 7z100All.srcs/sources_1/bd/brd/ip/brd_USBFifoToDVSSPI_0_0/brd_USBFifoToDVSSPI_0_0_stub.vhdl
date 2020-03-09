-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Mon Mar  9 11:49:10 2020
-- Host        : DESKTOP-3TNSMFC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_USBFifoToDVSSPI_0_0/brd_USBFifoToDVSSPI_0_0_stub.vhdl
-- Design      : brd_USBFifoToDVSSPI_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z100ffg900-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity brd_USBFifoToDVSSPI_0_0 is
  Port ( 
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    spiReady_i : in STD_LOGIC;
    setupDataRecStart_i : in STD_LOGIC;
    outDataRecStart_i : in STD_LOGIC;
    dataRecEnd_i : in STD_LOGIC;
    inputDataValid_i : in STD_LOGIC;
    inputData_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dvsRXDataValid_i : in STD_LOGIC;
    dvsRXByte_i : in STD_LOGIC_VECTOR ( 47 downto 0 );
    dvs_resp_addr_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    setupPktReceived_q_do : out STD_LOGIC;
    outPktReceived_q_do : out STD_LOGIC;
    dataSPIToSendPrepared_w_do : out STD_LOGIC;
    wrSetupIndex_q_do : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wrOUTIndex_q_do : out STD_LOGIC_VECTOR ( 2 downto 0 );
    outputDataValid_o : out STD_LOGIC;
    outputData_o : out STD_LOGIC_VECTOR ( 47 downto 0 );
    rxDataComplete_o : out STD_LOGIC;
    dvs_resp_data_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end brd_USBFifoToDVSSPI_0_0;

architecture stub of brd_USBFifoToDVSSPI_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_i,rst_i,spiReady_i,setupDataRecStart_i,outDataRecStart_i,dataRecEnd_i,inputDataValid_i,inputData_i[7:0],dvsRXDataValid_i,dvsRXByte_i[47:0],dvs_resp_addr_i[1:0],setupPktReceived_q_do,outPktReceived_q_do,dataSPIToSendPrepared_w_do,wrSetupIndex_q_do[3:0],wrOUTIndex_q_do[2:0],outputDataValid_o,outputData_o[47:0],rxDataComplete_o,dvs_resp_data_o[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "USBFifoToDVSSPI,Vivado 2018.1";
begin
end;
