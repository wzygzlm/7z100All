-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Wed Feb 19 20:15:01 2020
-- Host        : DESKTOP-MC69HMJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_RawStreamToFIFO_0_0/brd_RawStreamToFIFO_0_0_sim_netlist.vhdl
-- Design      : brd_RawStreamToFIFO_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z100ffg900-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_RawStreamToFIFO_0_0_RawStreamToFIFO is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    streamIn_V_V_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    streamIn_V_V_TVALID : in STD_LOGIC;
    streamIn_V_V_TREADY : out STD_LOGIC;
    fifoIFInFull_n_V : in STD_LOGIC_VECTOR ( 0 to 0 );
    fifoIFOutData_V : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fifoIFOutData_V_ap_vld : out STD_LOGIC;
    skippedData_V : out STD_LOGIC_VECTOR ( 15 downto 0 );
    skippedData_V_ap_vld : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of brd_RawStreamToFIFO_0_0_RawStreamToFIFO : entity is "RawStreamToFIFO";
end brd_RawStreamToFIFO_0_0_RawStreamToFIFO;

architecture STRUCTURE of brd_RawStreamToFIFO_0_0_RawStreamToFIFO is
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_i_1_n_0 : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal fifoIFInFull_n_V_rea_reg_100 : STD_LOGIC;
  signal \fifoIFInFull_n_V_rea_reg_100[0]_i_1_n_0\ : STD_LOGIC;
  signal \^skippeddata_v\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal streamIn_V_V_0_load_B : STD_LOGIC;
  signal streamIn_V_V_0_payload_A : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \streamIn_V_V_0_payload_A[15]_i_1_n_0\ : STD_LOGIC;
  signal streamIn_V_V_0_payload_B : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal streamIn_V_V_0_sel : STD_LOGIC;
  signal streamIn_V_V_0_sel_rd_i_1_n_0 : STD_LOGIC;
  signal streamIn_V_V_0_sel_wr : STD_LOGIC;
  signal streamIn_V_V_0_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \streamIn_V_V_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \streamIn_V_V_0_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \streamIn_V_V_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \^streamin_v_v_tready\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ap_done_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter1_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of ap_ready_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \fifoIFInFull_n_V_rea_reg_100[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of fifoIFOutData_V_ap_vld_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \skippedData_V[0]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \skippedData_V[10]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \skippedData_V[11]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \skippedData_V[12]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \skippedData_V[13]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \skippedData_V[14]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \skippedData_V[15]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \skippedData_V[1]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \skippedData_V[2]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \skippedData_V[3]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \skippedData_V[4]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \skippedData_V[5]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \skippedData_V[6]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \skippedData_V[7]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \skippedData_V[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \skippedData_V[9]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of skippedData_V_ap_vld_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of streamIn_V_V_0_sel_rd_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of streamIn_V_V_0_sel_wr_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \streamIn_V_V_0_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \streamIn_V_V_0_state[1]_i_2\ : label is "soft_lutpair1";
begin
  fifoIFOutData_V(15 downto 0) <= \^skippeddata_v\(15 downto 0);
  skippedData_V(15 downto 0) <= \^skippeddata_v\(15 downto 0);
  streamIn_V_V_TREADY <= \^streamin_v_v_tready\;
ap_done_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \streamIn_V_V_0_state_reg_n_0_[0]\,
      I1 => ap_enable_reg_pp0_iter1,
      O => ap_done
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => ap_start,
      I1 => \streamIn_V_V_0_state_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp0_iter1,
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
ap_idle_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => ap_start,
      O => ap_idle
    );
ap_ready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => ap_start,
      I1 => \streamIn_V_V_0_state_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp0_iter1,
      O => ap_ready
    );
\fifoIFInFull_n_V_rea_reg_100[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => fifoIFInFull_n_V(0),
      I1 => \streamIn_V_V_0_state_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => fifoIFInFull_n_V_rea_reg_100,
      O => \fifoIFInFull_n_V_rea_reg_100[0]_i_1_n_0\
    );
\fifoIFInFull_n_V_rea_reg_100_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \fifoIFInFull_n_V_rea_reg_100[0]_i_1_n_0\,
      Q => fifoIFInFull_n_V_rea_reg_100,
      R => '0'
    );
fifoIFOutData_V_ap_vld_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => \streamIn_V_V_0_state_reg_n_0_[0]\,
      I2 => fifoIFInFull_n_V_rea_reg_100,
      O => fifoIFOutData_V_ap_vld
    );
\skippedData_V[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => streamIn_V_V_0_payload_B(8),
      I1 => streamIn_V_V_0_payload_A(8),
      I2 => streamIn_V_V_0_sel,
      O => \^skippeddata_v\(0)
    );
\skippedData_V[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => streamIn_V_V_0_payload_B(2),
      I1 => streamIn_V_V_0_payload_A(2),
      I2 => streamIn_V_V_0_sel,
      O => \^skippeddata_v\(10)
    );
\skippedData_V[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => streamIn_V_V_0_payload_B(3),
      I1 => streamIn_V_V_0_payload_A(3),
      I2 => streamIn_V_V_0_sel,
      O => \^skippeddata_v\(11)
    );
\skippedData_V[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => streamIn_V_V_0_payload_B(4),
      I1 => streamIn_V_V_0_payload_A(4),
      I2 => streamIn_V_V_0_sel,
      O => \^skippeddata_v\(12)
    );
\skippedData_V[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => streamIn_V_V_0_payload_B(5),
      I1 => streamIn_V_V_0_payload_A(5),
      I2 => streamIn_V_V_0_sel,
      O => \^skippeddata_v\(13)
    );
\skippedData_V[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => streamIn_V_V_0_payload_B(6),
      I1 => streamIn_V_V_0_payload_A(6),
      I2 => streamIn_V_V_0_sel,
      O => \^skippeddata_v\(14)
    );
\skippedData_V[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => streamIn_V_V_0_payload_B(7),
      I1 => streamIn_V_V_0_payload_A(7),
      I2 => streamIn_V_V_0_sel,
      O => \^skippeddata_v\(15)
    );
\skippedData_V[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => streamIn_V_V_0_payload_B(9),
      I1 => streamIn_V_V_0_payload_A(9),
      I2 => streamIn_V_V_0_sel,
      O => \^skippeddata_v\(1)
    );
\skippedData_V[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => streamIn_V_V_0_payload_B(10),
      I1 => streamIn_V_V_0_payload_A(10),
      I2 => streamIn_V_V_0_sel,
      O => \^skippeddata_v\(2)
    );
\skippedData_V[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => streamIn_V_V_0_payload_B(11),
      I1 => streamIn_V_V_0_payload_A(11),
      I2 => streamIn_V_V_0_sel,
      O => \^skippeddata_v\(3)
    );
\skippedData_V[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => streamIn_V_V_0_payload_B(12),
      I1 => streamIn_V_V_0_payload_A(12),
      I2 => streamIn_V_V_0_sel,
      O => \^skippeddata_v\(4)
    );
\skippedData_V[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => streamIn_V_V_0_payload_B(13),
      I1 => streamIn_V_V_0_payload_A(13),
      I2 => streamIn_V_V_0_sel,
      O => \^skippeddata_v\(5)
    );
\skippedData_V[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => streamIn_V_V_0_payload_B(14),
      I1 => streamIn_V_V_0_payload_A(14),
      I2 => streamIn_V_V_0_sel,
      O => \^skippeddata_v\(6)
    );
\skippedData_V[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => streamIn_V_V_0_payload_B(15),
      I1 => streamIn_V_V_0_payload_A(15),
      I2 => streamIn_V_V_0_sel,
      O => \^skippeddata_v\(7)
    );
\skippedData_V[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => streamIn_V_V_0_payload_B(0),
      I1 => streamIn_V_V_0_payload_A(0),
      I2 => streamIn_V_V_0_sel,
      O => \^skippeddata_v\(8)
    );
\skippedData_V[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => streamIn_V_V_0_payload_B(1),
      I1 => streamIn_V_V_0_payload_A(1),
      I2 => streamIn_V_V_0_sel,
      O => \^skippeddata_v\(9)
    );
skippedData_V_ap_vld_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => \streamIn_V_V_0_state_reg_n_0_[0]\,
      I2 => fifoIFInFull_n_V_rea_reg_100,
      O => skippedData_V_ap_vld
    );
\streamIn_V_V_0_payload_A[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \streamIn_V_V_0_state_reg_n_0_[0]\,
      I1 => \^streamin_v_v_tready\,
      I2 => streamIn_V_V_0_sel_wr,
      O => \streamIn_V_V_0_payload_A[15]_i_1_n_0\
    );
\streamIn_V_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \streamIn_V_V_0_payload_A[15]_i_1_n_0\,
      D => streamIn_V_V_TDATA(0),
      Q => streamIn_V_V_0_payload_A(0),
      R => '0'
    );
\streamIn_V_V_0_payload_A_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \streamIn_V_V_0_payload_A[15]_i_1_n_0\,
      D => streamIn_V_V_TDATA(10),
      Q => streamIn_V_V_0_payload_A(10),
      R => '0'
    );
\streamIn_V_V_0_payload_A_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \streamIn_V_V_0_payload_A[15]_i_1_n_0\,
      D => streamIn_V_V_TDATA(11),
      Q => streamIn_V_V_0_payload_A(11),
      R => '0'
    );
\streamIn_V_V_0_payload_A_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \streamIn_V_V_0_payload_A[15]_i_1_n_0\,
      D => streamIn_V_V_TDATA(12),
      Q => streamIn_V_V_0_payload_A(12),
      R => '0'
    );
\streamIn_V_V_0_payload_A_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \streamIn_V_V_0_payload_A[15]_i_1_n_0\,
      D => streamIn_V_V_TDATA(13),
      Q => streamIn_V_V_0_payload_A(13),
      R => '0'
    );
\streamIn_V_V_0_payload_A_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \streamIn_V_V_0_payload_A[15]_i_1_n_0\,
      D => streamIn_V_V_TDATA(14),
      Q => streamIn_V_V_0_payload_A(14),
      R => '0'
    );
\streamIn_V_V_0_payload_A_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \streamIn_V_V_0_payload_A[15]_i_1_n_0\,
      D => streamIn_V_V_TDATA(15),
      Q => streamIn_V_V_0_payload_A(15),
      R => '0'
    );
\streamIn_V_V_0_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \streamIn_V_V_0_payload_A[15]_i_1_n_0\,
      D => streamIn_V_V_TDATA(1),
      Q => streamIn_V_V_0_payload_A(1),
      R => '0'
    );
\streamIn_V_V_0_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \streamIn_V_V_0_payload_A[15]_i_1_n_0\,
      D => streamIn_V_V_TDATA(2),
      Q => streamIn_V_V_0_payload_A(2),
      R => '0'
    );
\streamIn_V_V_0_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \streamIn_V_V_0_payload_A[15]_i_1_n_0\,
      D => streamIn_V_V_TDATA(3),
      Q => streamIn_V_V_0_payload_A(3),
      R => '0'
    );
\streamIn_V_V_0_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \streamIn_V_V_0_payload_A[15]_i_1_n_0\,
      D => streamIn_V_V_TDATA(4),
      Q => streamIn_V_V_0_payload_A(4),
      R => '0'
    );
\streamIn_V_V_0_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \streamIn_V_V_0_payload_A[15]_i_1_n_0\,
      D => streamIn_V_V_TDATA(5),
      Q => streamIn_V_V_0_payload_A(5),
      R => '0'
    );
\streamIn_V_V_0_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \streamIn_V_V_0_payload_A[15]_i_1_n_0\,
      D => streamIn_V_V_TDATA(6),
      Q => streamIn_V_V_0_payload_A(6),
      R => '0'
    );
\streamIn_V_V_0_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \streamIn_V_V_0_payload_A[15]_i_1_n_0\,
      D => streamIn_V_V_TDATA(7),
      Q => streamIn_V_V_0_payload_A(7),
      R => '0'
    );
\streamIn_V_V_0_payload_A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \streamIn_V_V_0_payload_A[15]_i_1_n_0\,
      D => streamIn_V_V_TDATA(8),
      Q => streamIn_V_V_0_payload_A(8),
      R => '0'
    );
\streamIn_V_V_0_payload_A_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \streamIn_V_V_0_payload_A[15]_i_1_n_0\,
      D => streamIn_V_V_TDATA(9),
      Q => streamIn_V_V_0_payload_A(9),
      R => '0'
    );
\streamIn_V_V_0_payload_B[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => streamIn_V_V_0_sel_wr,
      I1 => \streamIn_V_V_0_state_reg_n_0_[0]\,
      I2 => \^streamin_v_v_tready\,
      O => streamIn_V_V_0_load_B
    );
\streamIn_V_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => streamIn_V_V_0_load_B,
      D => streamIn_V_V_TDATA(0),
      Q => streamIn_V_V_0_payload_B(0),
      R => '0'
    );
\streamIn_V_V_0_payload_B_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => streamIn_V_V_0_load_B,
      D => streamIn_V_V_TDATA(10),
      Q => streamIn_V_V_0_payload_B(10),
      R => '0'
    );
\streamIn_V_V_0_payload_B_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => streamIn_V_V_0_load_B,
      D => streamIn_V_V_TDATA(11),
      Q => streamIn_V_V_0_payload_B(11),
      R => '0'
    );
\streamIn_V_V_0_payload_B_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => streamIn_V_V_0_load_B,
      D => streamIn_V_V_TDATA(12),
      Q => streamIn_V_V_0_payload_B(12),
      R => '0'
    );
\streamIn_V_V_0_payload_B_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => streamIn_V_V_0_load_B,
      D => streamIn_V_V_TDATA(13),
      Q => streamIn_V_V_0_payload_B(13),
      R => '0'
    );
\streamIn_V_V_0_payload_B_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => streamIn_V_V_0_load_B,
      D => streamIn_V_V_TDATA(14),
      Q => streamIn_V_V_0_payload_B(14),
      R => '0'
    );
\streamIn_V_V_0_payload_B_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => streamIn_V_V_0_load_B,
      D => streamIn_V_V_TDATA(15),
      Q => streamIn_V_V_0_payload_B(15),
      R => '0'
    );
\streamIn_V_V_0_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => streamIn_V_V_0_load_B,
      D => streamIn_V_V_TDATA(1),
      Q => streamIn_V_V_0_payload_B(1),
      R => '0'
    );
\streamIn_V_V_0_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => streamIn_V_V_0_load_B,
      D => streamIn_V_V_TDATA(2),
      Q => streamIn_V_V_0_payload_B(2),
      R => '0'
    );
\streamIn_V_V_0_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => streamIn_V_V_0_load_B,
      D => streamIn_V_V_TDATA(3),
      Q => streamIn_V_V_0_payload_B(3),
      R => '0'
    );
\streamIn_V_V_0_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => streamIn_V_V_0_load_B,
      D => streamIn_V_V_TDATA(4),
      Q => streamIn_V_V_0_payload_B(4),
      R => '0'
    );
\streamIn_V_V_0_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => streamIn_V_V_0_load_B,
      D => streamIn_V_V_TDATA(5),
      Q => streamIn_V_V_0_payload_B(5),
      R => '0'
    );
\streamIn_V_V_0_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => streamIn_V_V_0_load_B,
      D => streamIn_V_V_TDATA(6),
      Q => streamIn_V_V_0_payload_B(6),
      R => '0'
    );
\streamIn_V_V_0_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => streamIn_V_V_0_load_B,
      D => streamIn_V_V_TDATA(7),
      Q => streamIn_V_V_0_payload_B(7),
      R => '0'
    );
\streamIn_V_V_0_payload_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => streamIn_V_V_0_load_B,
      D => streamIn_V_V_TDATA(8),
      Q => streamIn_V_V_0_payload_B(8),
      R => '0'
    );
\streamIn_V_V_0_payload_B_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => streamIn_V_V_0_load_B,
      D => streamIn_V_V_TDATA(9),
      Q => streamIn_V_V_0_payload_B(9),
      R => '0'
    );
streamIn_V_V_0_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \streamIn_V_V_0_state_reg_n_0_[0]\,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => streamIn_V_V_0_sel,
      O => streamIn_V_V_0_sel_rd_i_1_n_0
    );
streamIn_V_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => streamIn_V_V_0_sel_rd_i_1_n_0,
      Q => streamIn_V_V_0_sel,
      R => ap_rst_n_inv
    );
streamIn_V_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^streamin_v_v_tready\,
      I1 => streamIn_V_V_TVALID,
      I2 => streamIn_V_V_0_sel_wr,
      O => streamIn_V_V_0_sel_wr_i_1_n_0
    );
streamIn_V_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => streamIn_V_V_0_sel_wr_i_1_n_0,
      Q => streamIn_V_V_0_sel_wr,
      R => ap_rst_n_inv
    );
\streamIn_V_V_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAA8080"
    )
        port map (
      I0 => ap_rst_n,
      I1 => streamIn_V_V_TVALID,
      I2 => \^streamin_v_v_tready\,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \streamIn_V_V_0_state_reg_n_0_[0]\,
      O => \streamIn_V_V_0_state[0]_i_1_n_0\
    );
\streamIn_V_V_0_state[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => ap_rst_n_inv
    );
\streamIn_V_V_0_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAFF"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => streamIn_V_V_TVALID,
      I2 => \^streamin_v_v_tready\,
      I3 => \streamIn_V_V_0_state_reg_n_0_[0]\,
      O => \streamIn_V_V_0_state[1]_i_2_n_0\
    );
\streamIn_V_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \streamIn_V_V_0_state[0]_i_1_n_0\,
      Q => \streamIn_V_V_0_state_reg_n_0_[0]\,
      R => '0'
    );
\streamIn_V_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \streamIn_V_V_0_state[1]_i_2_n_0\,
      Q => \^streamin_v_v_tready\,
      R => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_RawStreamToFIFO_0_0 is
  port (
    fifoIFOutData_V_ap_vld : out STD_LOGIC;
    skippedData_V_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    streamIn_V_V_TVALID : in STD_LOGIC;
    streamIn_V_V_TREADY : out STD_LOGIC;
    streamIn_V_V_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fifoIFInFull_n_V : in STD_LOGIC_VECTOR ( 0 to 0 );
    fifoIFOutData_V : out STD_LOGIC_VECTOR ( 15 downto 0 );
    skippedData_V : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of brd_RawStreamToFIFO_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of brd_RawStreamToFIFO_0_0 : entity is "brd_RawStreamToFIFO_0_0,RawStreamToFIFO,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of brd_RawStreamToFIFO_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of brd_RawStreamToFIFO_0_0 : entity is "RawStreamToFIFO,Vivado 2018.1";
end brd_RawStreamToFIFO_0_0;

architecture STRUCTURE of brd_RawStreamToFIFO_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF streamIn_V_V, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0";
  attribute x_interface_info of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute x_interface_info of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute x_interface_info of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute x_interface_info of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute x_interface_parameter of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute x_interface_info of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute x_interface_parameter of ap_start : signal is "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute x_interface_info of streamIn_V_V_TREADY : signal is "xilinx.com:interface:axis:1.0 streamIn_V_V TREADY";
  attribute x_interface_info of streamIn_V_V_TVALID : signal is "xilinx.com:interface:axis:1.0 streamIn_V_V TVALID";
  attribute x_interface_parameter of streamIn_V_V_TVALID : signal is "XIL_INTERFACENAME streamIn_V_V, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0";
  attribute x_interface_info of fifoIFInFull_n_V : signal is "xilinx.com:signal:data:1.0 fifoIFInFull_n_V DATA";
  attribute x_interface_parameter of fifoIFInFull_n_V : signal is "XIL_INTERFACENAME fifoIFInFull_n_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
  attribute x_interface_info of fifoIFOutData_V : signal is "xilinx.com:signal:data:1.0 fifoIFOutData_V DATA";
  attribute x_interface_parameter of fifoIFOutData_V : signal is "XIL_INTERFACENAME fifoIFOutData_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
  attribute x_interface_info of skippedData_V : signal is "xilinx.com:signal:data:1.0 skippedData_V DATA";
  attribute x_interface_parameter of skippedData_V : signal is "XIL_INTERFACENAME skippedData_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
  attribute x_interface_info of streamIn_V_V_TDATA : signal is "xilinx.com:interface:axis:1.0 streamIn_V_V TDATA";
begin
U0: entity work.brd_RawStreamToFIFO_0_0_RawStreamToFIFO
     port map (
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      fifoIFInFull_n_V(0) => fifoIFInFull_n_V(0),
      fifoIFOutData_V(15 downto 0) => fifoIFOutData_V(15 downto 0),
      fifoIFOutData_V_ap_vld => fifoIFOutData_V_ap_vld,
      skippedData_V(15 downto 0) => skippedData_V(15 downto 0),
      skippedData_V_ap_vld => skippedData_V_ap_vld,
      streamIn_V_V_TDATA(15 downto 0) => streamIn_V_V_TDATA(15 downto 0),
      streamIn_V_V_TREADY => streamIn_V_V_TREADY,
      streamIn_V_V_TVALID => streamIn_V_V_TVALID
    );
end STRUCTURE;
