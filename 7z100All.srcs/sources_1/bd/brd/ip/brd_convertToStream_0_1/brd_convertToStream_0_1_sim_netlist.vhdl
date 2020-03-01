-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Sat Feb 29 09:40:14 2020
-- Host        : DESKTOP-MC69HMJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top brd_convertToStream_0_1 -prefix
--               brd_convertToStream_0_1_ brd_convertToStream_0_1_sim_netlist.vhdl
-- Design      : brd_convertToStream_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z100ffg900-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_convertToStream_0_1_convertToStream is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    evUSBStreamOut_V_V_TREADY : in STD_LOGIC;
    dataReady_V : in STD_LOGIC_VECTOR ( 0 to 0 );
    dataValid_V : in STD_LOGIC_VECTOR ( 0 to 0 );
    dataToCheck_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    evUSBStreamOut_V_V_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    evUSBStreamOut_V_V_TVALID : out STD_LOGIC;
    eventFIFODVReg_V : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end brd_convertToStream_0_1_convertToStream;

architecture STRUCTURE of brd_convertToStream_0_1_convertToStream is
  signal ap_block_pp0_stage0_11001 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2_i_1_n_0 : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal evUSBStreamOut_V_V_1_ack_in : STD_LOGIC;
  signal evUSBStreamOut_V_V_1_load_A : STD_LOGIC;
  signal evUSBStreamOut_V_V_1_load_B : STD_LOGIC;
  signal evUSBStreamOut_V_V_1_payload_A : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal evUSBStreamOut_V_V_1_payload_B : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal evUSBStreamOut_V_V_1_sel : STD_LOGIC;
  signal evUSBStreamOut_V_V_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal evUSBStreamOut_V_V_1_sel_wr : STD_LOGIC;
  signal evUSBStreamOut_V_V_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal evUSBStreamOut_V_V_1_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \evUSBStreamOut_V_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \^evusbstreamout_v_v_tvalid\ : STD_LOGIC;
  signal r_V_fu_74_p2 : STD_LOGIC;
  signal r_V_reg_85 : STD_LOGIC;
  signal tmp_V_reg_80 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ap_done_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter1_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter2_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of ap_idle_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of ap_ready_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of evUSBStreamOut_V_V_1_sel_rd_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of evUSBStreamOut_V_V_1_sel_wr_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \evUSBStreamOut_V_V_TDATA[0]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \evUSBStreamOut_V_V_TDATA[1]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \evUSBStreamOut_V_V_TDATA[2]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \evUSBStreamOut_V_V_TDATA[3]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \evUSBStreamOut_V_V_TDATA[4]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \evUSBStreamOut_V_V_TDATA[5]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \evUSBStreamOut_V_V_TDATA[6]_INST_0\ : label is "soft_lutpair6";
begin
  evUSBStreamOut_V_V_TVALID <= \^evusbstreamout_v_v_tvalid\;
ap_done_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => evUSBStreamOut_V_V_1_ack_in,
      I1 => ap_enable_reg_pp0_iter2,
      O => ap_done
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCAAEA"
    )
        port map (
      I0 => ap_start,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => r_V_reg_85,
      I3 => evUSBStreamOut_V_V_1_ack_in,
      I4 => ap_enable_reg_pp0_iter2,
      O => ap_enable_reg_pp0_iter1_i_1_n_0
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter1_i_1_n_0,
      Q => ap_enable_reg_pp0_iter1,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp0_iter2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AFA2"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => r_V_reg_85,
      I2 => evUSBStreamOut_V_V_1_ack_in,
      I3 => ap_enable_reg_pp0_iter2,
      O => ap_enable_reg_pp0_iter2_i_1_n_0
    );
ap_enable_reg_pp0_iter2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter2_i_1_n_0,
      Q => ap_enable_reg_pp0_iter2,
      R => ap_rst_n_inv
    );
ap_idle_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => ap_enable_reg_pp0_iter2,
      I2 => ap_start,
      O => ap_idle
    );
ap_ready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CDDD0000"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter2,
      I1 => evUSBStreamOut_V_V_1_ack_in,
      I2 => r_V_reg_85,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => ap_start,
      O => ap_ready
    );
\evUSBStreamOut_V_V_1_payload_A[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \^evusbstreamout_v_v_tvalid\,
      I1 => evUSBStreamOut_V_V_1_ack_in,
      I2 => evUSBStreamOut_V_V_1_sel_wr,
      O => evUSBStreamOut_V_V_1_load_A
    );
\evUSBStreamOut_V_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => evUSBStreamOut_V_V_1_load_A,
      D => tmp_V_reg_80(0),
      Q => evUSBStreamOut_V_V_1_payload_A(0),
      R => '0'
    );
\evUSBStreamOut_V_V_1_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => evUSBStreamOut_V_V_1_load_A,
      D => tmp_V_reg_80(1),
      Q => evUSBStreamOut_V_V_1_payload_A(1),
      R => '0'
    );
\evUSBStreamOut_V_V_1_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => evUSBStreamOut_V_V_1_load_A,
      D => tmp_V_reg_80(2),
      Q => evUSBStreamOut_V_V_1_payload_A(2),
      R => '0'
    );
\evUSBStreamOut_V_V_1_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => evUSBStreamOut_V_V_1_load_A,
      D => tmp_V_reg_80(3),
      Q => evUSBStreamOut_V_V_1_payload_A(3),
      R => '0'
    );
\evUSBStreamOut_V_V_1_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => evUSBStreamOut_V_V_1_load_A,
      D => tmp_V_reg_80(4),
      Q => evUSBStreamOut_V_V_1_payload_A(4),
      R => '0'
    );
\evUSBStreamOut_V_V_1_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => evUSBStreamOut_V_V_1_load_A,
      D => tmp_V_reg_80(5),
      Q => evUSBStreamOut_V_V_1_payload_A(5),
      R => '0'
    );
\evUSBStreamOut_V_V_1_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => evUSBStreamOut_V_V_1_load_A,
      D => tmp_V_reg_80(6),
      Q => evUSBStreamOut_V_V_1_payload_A(6),
      R => '0'
    );
\evUSBStreamOut_V_V_1_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => evUSBStreamOut_V_V_1_load_A,
      D => tmp_V_reg_80(7),
      Q => evUSBStreamOut_V_V_1_payload_A(7),
      R => '0'
    );
\evUSBStreamOut_V_V_1_payload_B[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^evusbstreamout_v_v_tvalid\,
      I1 => evUSBStreamOut_V_V_1_ack_in,
      I2 => evUSBStreamOut_V_V_1_sel_wr,
      O => evUSBStreamOut_V_V_1_load_B
    );
\evUSBStreamOut_V_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => evUSBStreamOut_V_V_1_load_B,
      D => tmp_V_reg_80(0),
      Q => evUSBStreamOut_V_V_1_payload_B(0),
      R => '0'
    );
\evUSBStreamOut_V_V_1_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => evUSBStreamOut_V_V_1_load_B,
      D => tmp_V_reg_80(1),
      Q => evUSBStreamOut_V_V_1_payload_B(1),
      R => '0'
    );
\evUSBStreamOut_V_V_1_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => evUSBStreamOut_V_V_1_load_B,
      D => tmp_V_reg_80(2),
      Q => evUSBStreamOut_V_V_1_payload_B(2),
      R => '0'
    );
\evUSBStreamOut_V_V_1_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => evUSBStreamOut_V_V_1_load_B,
      D => tmp_V_reg_80(3),
      Q => evUSBStreamOut_V_V_1_payload_B(3),
      R => '0'
    );
\evUSBStreamOut_V_V_1_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => evUSBStreamOut_V_V_1_load_B,
      D => tmp_V_reg_80(4),
      Q => evUSBStreamOut_V_V_1_payload_B(4),
      R => '0'
    );
\evUSBStreamOut_V_V_1_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => evUSBStreamOut_V_V_1_load_B,
      D => tmp_V_reg_80(5),
      Q => evUSBStreamOut_V_V_1_payload_B(5),
      R => '0'
    );
\evUSBStreamOut_V_V_1_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => evUSBStreamOut_V_V_1_load_B,
      D => tmp_V_reg_80(6),
      Q => evUSBStreamOut_V_V_1_payload_B(6),
      R => '0'
    );
\evUSBStreamOut_V_V_1_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => evUSBStreamOut_V_V_1_load_B,
      D => tmp_V_reg_80(7),
      Q => evUSBStreamOut_V_V_1_payload_B(7),
      R => '0'
    );
evUSBStreamOut_V_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => evUSBStreamOut_V_V_TREADY,
      I1 => \^evusbstreamout_v_v_tvalid\,
      I2 => evUSBStreamOut_V_V_1_sel,
      O => evUSBStreamOut_V_V_1_sel_rd_i_1_n_0
    );
evUSBStreamOut_V_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => evUSBStreamOut_V_V_1_sel_rd_i_1_n_0,
      Q => evUSBStreamOut_V_V_1_sel,
      R => ap_rst_n_inv
    );
evUSBStreamOut_V_V_1_sel_wr_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => r_V_reg_85,
      I1 => evUSBStreamOut_V_V_1_ack_in,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => evUSBStreamOut_V_V_1_sel_wr,
      O => evUSBStreamOut_V_V_1_sel_wr_i_1_n_0
    );
evUSBStreamOut_V_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => evUSBStreamOut_V_V_1_sel_wr_i_1_n_0,
      Q => evUSBStreamOut_V_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\evUSBStreamOut_V_V_1_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE2A2A2A00000000"
    )
        port map (
      I0 => \^evusbstreamout_v_v_tvalid\,
      I1 => evUSBStreamOut_V_V_1_ack_in,
      I2 => evUSBStreamOut_V_V_TREADY,
      I3 => r_V_reg_85,
      I4 => ap_enable_reg_pp0_iter1,
      I5 => ap_rst_n,
      O => \evUSBStreamOut_V_V_1_state[0]_i_1_n_0\
    );
\evUSBStreamOut_V_V_1_state[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => ap_rst_n_inv
    );
\evUSBStreamOut_V_V_1_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FFF0F"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => r_V_reg_85,
      I2 => \^evusbstreamout_v_v_tvalid\,
      I3 => evUSBStreamOut_V_V_TREADY,
      I4 => evUSBStreamOut_V_V_1_ack_in,
      O => evUSBStreamOut_V_V_1_state(1)
    );
\evUSBStreamOut_V_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \evUSBStreamOut_V_V_1_state[0]_i_1_n_0\,
      Q => \^evusbstreamout_v_v_tvalid\,
      R => '0'
    );
\evUSBStreamOut_V_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => evUSBStreamOut_V_V_1_state(1),
      Q => evUSBStreamOut_V_V_1_ack_in,
      R => ap_rst_n_inv
    );
\evUSBStreamOut_V_V_TDATA[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => evUSBStreamOut_V_V_1_payload_B(0),
      I1 => evUSBStreamOut_V_V_1_payload_A(0),
      I2 => evUSBStreamOut_V_V_1_sel,
      O => evUSBStreamOut_V_V_TDATA(0)
    );
\evUSBStreamOut_V_V_TDATA[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => evUSBStreamOut_V_V_1_payload_B(1),
      I1 => evUSBStreamOut_V_V_1_payload_A(1),
      I2 => evUSBStreamOut_V_V_1_sel,
      O => evUSBStreamOut_V_V_TDATA(1)
    );
\evUSBStreamOut_V_V_TDATA[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => evUSBStreamOut_V_V_1_payload_B(2),
      I1 => evUSBStreamOut_V_V_1_payload_A(2),
      I2 => evUSBStreamOut_V_V_1_sel,
      O => evUSBStreamOut_V_V_TDATA(2)
    );
\evUSBStreamOut_V_V_TDATA[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => evUSBStreamOut_V_V_1_payload_B(3),
      I1 => evUSBStreamOut_V_V_1_payload_A(3),
      I2 => evUSBStreamOut_V_V_1_sel,
      O => evUSBStreamOut_V_V_TDATA(3)
    );
\evUSBStreamOut_V_V_TDATA[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => evUSBStreamOut_V_V_1_payload_B(4),
      I1 => evUSBStreamOut_V_V_1_payload_A(4),
      I2 => evUSBStreamOut_V_V_1_sel,
      O => evUSBStreamOut_V_V_TDATA(4)
    );
\evUSBStreamOut_V_V_TDATA[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => evUSBStreamOut_V_V_1_payload_B(5),
      I1 => evUSBStreamOut_V_V_1_payload_A(5),
      I2 => evUSBStreamOut_V_V_1_sel,
      O => evUSBStreamOut_V_V_TDATA(5)
    );
\evUSBStreamOut_V_V_TDATA[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => evUSBStreamOut_V_V_1_payload_B(6),
      I1 => evUSBStreamOut_V_V_1_payload_A(6),
      I2 => evUSBStreamOut_V_V_1_sel,
      O => evUSBStreamOut_V_V_TDATA(6)
    );
\evUSBStreamOut_V_V_TDATA[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => evUSBStreamOut_V_V_1_payload_B(7),
      I1 => evUSBStreamOut_V_V_1_payload_A(7),
      I2 => evUSBStreamOut_V_V_1_sel,
      O => evUSBStreamOut_V_V_TDATA(7)
    );
\r_V_reg_85[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => dataReady_V(0),
      I1 => dataValid_V(0),
      O => r_V_fu_74_p2
    );
\r_V_reg_85_pp0_iter1_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0F7"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => r_V_reg_85,
      I2 => evUSBStreamOut_V_V_1_ack_in,
      I3 => ap_enable_reg_pp0_iter2,
      O => ap_block_pp0_stage0_11001
    );
\r_V_reg_85_pp0_iter1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_11001,
      D => r_V_reg_85,
      Q => eventFIFODVReg_V(0),
      R => '0'
    );
\r_V_reg_85_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_11001,
      D => r_V_fu_74_p2,
      Q => r_V_reg_85,
      R => '0'
    );
\tmp_V_reg_80_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_11001,
      D => dataToCheck_V(0),
      Q => tmp_V_reg_80(0),
      R => '0'
    );
\tmp_V_reg_80_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_11001,
      D => dataToCheck_V(1),
      Q => tmp_V_reg_80(1),
      R => '0'
    );
\tmp_V_reg_80_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_11001,
      D => dataToCheck_V(2),
      Q => tmp_V_reg_80(2),
      R => '0'
    );
\tmp_V_reg_80_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_11001,
      D => dataToCheck_V(3),
      Q => tmp_V_reg_80(3),
      R => '0'
    );
\tmp_V_reg_80_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_11001,
      D => dataToCheck_V(4),
      Q => tmp_V_reg_80(4),
      R => '0'
    );
\tmp_V_reg_80_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_11001,
      D => dataToCheck_V(5),
      Q => tmp_V_reg_80(5),
      R => '0'
    );
\tmp_V_reg_80_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_11001,
      D => dataToCheck_V(6),
      Q => tmp_V_reg_80(6),
      R => '0'
    );
\tmp_V_reg_80_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_11001,
      D => dataToCheck_V(7),
      Q => tmp_V_reg_80(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_convertToStream_0_1 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of brd_convertToStream_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of brd_convertToStream_0_1 : entity is "brd_convertToStream_0_1,convertToStream,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of brd_convertToStream_0_1 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of brd_convertToStream_0_1 : entity is "convertToStream,Vivado 2018.1";
end brd_convertToStream_0_1;

architecture STRUCTURE of brd_convertToStream_0_1 is
  attribute x_interface_info : string;
  attribute x_interface_info of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF evUSBStreamOut_V_V, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute x_interface_info of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute x_interface_info of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute x_interface_info of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute x_interface_parameter of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute x_interface_info of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute x_interface_parameter of ap_start : signal is "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute x_interface_info of evUSBStreamOut_V_V_TREADY : signal is "xilinx.com:interface:axis:1.0 evUSBStreamOut_V_V TREADY";
  attribute x_interface_info of evUSBStreamOut_V_V_TVALID : signal is "xilinx.com:interface:axis:1.0 evUSBStreamOut_V_V TVALID";
  attribute x_interface_parameter of evUSBStreamOut_V_V_TVALID : signal is "XIL_INTERFACENAME evUSBStreamOut_V_V, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of dataReady_V : signal is "xilinx.com:signal:data:1.0 dataReady_V DATA";
  attribute x_interface_parameter of dataReady_V : signal is "XIL_INTERFACENAME dataReady_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
  attribute x_interface_info of dataToCheck_V : signal is "xilinx.com:signal:data:1.0 dataToCheck_V DATA";
  attribute x_interface_parameter of dataToCheck_V : signal is "XIL_INTERFACENAME dataToCheck_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
  attribute x_interface_info of dataValid_V : signal is "xilinx.com:signal:data:1.0 dataValid_V DATA";
  attribute x_interface_parameter of dataValid_V : signal is "XIL_INTERFACENAME dataValid_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
  attribute x_interface_info of evUSBStreamOut_V_V_TDATA : signal is "xilinx.com:interface:axis:1.0 evUSBStreamOut_V_V TDATA";
  attribute x_interface_info of eventFIFODVReg_V : signal is "xilinx.com:signal:data:1.0 eventFIFODVReg_V DATA";
  attribute x_interface_parameter of eventFIFODVReg_V : signal is "XIL_INTERFACENAME eventFIFODVReg_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
begin
U0: entity work.brd_convertToStream_0_1_convertToStream
     port map (
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      dataReady_V(0) => dataReady_V(0),
      dataToCheck_V(7 downto 0) => dataToCheck_V(7 downto 0),
      dataValid_V(0) => dataValid_V(0),
      evUSBStreamOut_V_V_TDATA(7 downto 0) => evUSBStreamOut_V_V_TDATA(7 downto 0),
      evUSBStreamOut_V_V_TREADY => evUSBStreamOut_V_V_TREADY,
      evUSBStreamOut_V_V_TVALID => evUSBStreamOut_V_V_TVALID,
      eventFIFODVReg_V(0) => eventFIFODVReg_V(0)
    );
end STRUCTURE;
