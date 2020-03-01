-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Sat Feb 29 09:40:14 2020
-- Host        : DESKTOP-MC69HMJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top brd_checkEvUSBStream_0_1 -prefix
--               brd_checkEvUSBStream_0_1_ brd_checkEvUSBStream_0_1_sim_netlist.vhdl
-- Design      : brd_checkEvUSBStream_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z100ffg900-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_checkEvUSBStream_0_1_checkEvUSBStream is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    evUSBStreamIn_V_V_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    evUSBStreamIn_V_V_TVALID : in STD_LOGIC;
    evUSBStreamIn_V_V_TREADY : out STD_LOGIC;
    dataReg_V : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dataReg_V_ap_vld : out STD_LOGIC;
    nonMonTSDiffFlgReg_V : out STD_LOGIC_VECTOR ( 0 to 0 );
    nonMonTSDiffFlgReg_V_ap_vld : out STD_LOGIC;
    tsReg_V : out STD_LOGIC_VECTOR ( 63 downto 0 );
    tsReg_V_ap_vld : out STD_LOGIC;
    glLastTSReg_V : out STD_LOGIC_VECTOR ( 63 downto 0 );
    glLastTSReg_V_ap_vld : out STD_LOGIC
  );
end brd_checkEvUSBStream_0_1_checkEvUSBStream;

architecture STRUCTURE of brd_checkEvUSBStream_0_1_checkEvUSBStream is
  signal \<const0>\ : STD_LOGIC;
  signal \ap_CS_fsm[0]_i_1_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_1_n_0\ : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal \^ap_done\ : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_i_1_n_0 : STD_LOGIC;
  signal \^ap_ready\ : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal \^datareg_v\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^datareg_v_ap_vld\ : STD_LOGIC;
  signal evUSBStreamIn_V_V_0_ack_out : STD_LOGIC;
  signal evUSBStreamIn_V_V_0_load_B : STD_LOGIC;
  signal evUSBStreamIn_V_V_0_payload_A : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \evUSBStreamIn_V_V_0_payload_A[7]_i_1_n_0\ : STD_LOGIC;
  signal evUSBStreamIn_V_V_0_payload_B : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal evUSBStreamIn_V_V_0_sel : STD_LOGIC;
  signal evUSBStreamIn_V_V_0_sel_rd_i_1_n_0 : STD_LOGIC;
  signal evUSBStreamIn_V_V_0_sel_wr : STD_LOGIC;
  signal evUSBStreamIn_V_V_0_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \evUSBStreamIn_V_V_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \evUSBStreamIn_V_V_0_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \evUSBStreamIn_V_V_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \^evusbstreamin_v_v_tready\ : STD_LOGIC;
  signal \^gllasttsreg_v\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_10_n_1\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_10_n_2\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_10_n_3\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_19_n_1\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_19_n_2\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_19_n_3\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_28_n_1\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_28_n_2\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_28_n_3\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_37_n_1\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_37_n_2\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_37_n_3\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_44_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_45_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_46_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_47_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_48_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_49_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_50_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_51_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_52_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_53_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_n_1\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_n_2\ : STD_LOGIC;
  signal \nonMonTSDiffFlgReg_V[0]_INST_0_n_3\ : STD_LOGIC;
  signal \^nonmontsdiffflgreg_v_ap_vld\ : STD_LOGIC;
  signal tmp_2_fu_130_p2 : STD_LOGIC;
  signal tmp_8_fu_151_p2 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal \^tsreg_v\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal tsWrap_V0 : STD_LOGIC;
  signal \tsWrap_V[0]_i_3_n_0\ : STD_LOGIC;
  signal \tsWrap_V[0]_i_4_n_0\ : STD_LOGIC;
  signal \tsWrap_V[0]_i_5_n_0\ : STD_LOGIC;
  signal \tsWrap_V[0]_i_6_n_0\ : STD_LOGIC;
  signal \tsWrap_V[4]_i_2_n_0\ : STD_LOGIC;
  signal \tsWrap_V[4]_i_3_n_0\ : STD_LOGIC;
  signal \tsWrap_V[4]_i_4_n_0\ : STD_LOGIC;
  signal \tsWrap_V[4]_i_5_n_0\ : STD_LOGIC;
  signal \tsWrap_V[8]_i_2_n_0\ : STD_LOGIC;
  signal \tsWrap_V[8]_i_3_n_0\ : STD_LOGIC;
  signal \tsWrap_V[8]_i_4_n_0\ : STD_LOGIC;
  signal \tsWrap_V[8]_i_5_n_0\ : STD_LOGIC;
  signal tsWrap_V_reg : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal \tsWrap_V_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \tsWrap_V_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \tsWrap_V_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \tsWrap_V_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \tsWrap_V_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \tsWrap_V_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \tsWrap_V_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \tsWrap_V_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \tsWrap_V_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \tsWrap_V_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \tsWrap_V_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \tsWrap_V_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \tsWrap_V_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \tsWrap_V_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \tsWrap_V_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \tsWrap_V_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \tsWrap_V_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \tsWrap_V_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \tsWrap_V_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \tsWrap_V_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \tsWrap_V_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \tsWrap_V_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \tsWrap_V_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \tsWrap_V_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \tsWrap_V_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \tsWrap_V_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \tsWrap_V_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \tsWrap_V_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \tsWrap_V_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \tsWrap_V_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \tsWrap_V_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \tsWrap_V_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \tsWrap_V_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \tsWrap_V_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \tsWrap_V_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \tsWrap_V_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \tsWrap_V_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \tsWrap_V_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \tsWrap_V_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \tsWrap_V_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \tsWrap_V_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \tsWrap_V_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \tsWrap_V_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \tsWrap_V_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \tsWrap_V_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \tsWrap_V_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \tsWrap_V_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \tsWrap_V_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \tsWrap_V_reg[32]_i_1_n_7\ : STD_LOGIC;
  signal \tsWrap_V_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \tsWrap_V_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \tsWrap_V_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \tsWrap_V_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \tsWrap_V_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \tsWrap_V_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \tsWrap_V_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \tsWrap_V_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \tsWrap_V_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \tsWrap_V_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \tsWrap_V_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \tsWrap_V_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \tsWrap_V_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \tsWrap_V_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \tsWrap_V_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \tsWrap_V_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal ts_V : STD_LOGIC;
  signal \ts_V[14]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[15]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[16]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[17]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[18]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[18]_i_3_n_0\ : STD_LOGIC;
  signal \ts_V[18]_i_4_n_0\ : STD_LOGIC;
  signal \ts_V[18]_i_5_n_0\ : STD_LOGIC;
  signal \ts_V[18]_i_6_n_0\ : STD_LOGIC;
  signal \ts_V[19]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[20]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[21]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[22]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[22]_i_3_n_0\ : STD_LOGIC;
  signal \ts_V[22]_i_4_n_0\ : STD_LOGIC;
  signal \ts_V[22]_i_5_n_0\ : STD_LOGIC;
  signal \ts_V[22]_i_6_n_0\ : STD_LOGIC;
  signal \ts_V[23]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[24]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[25]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[26]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[26]_i_3_n_0\ : STD_LOGIC;
  signal \ts_V[26]_i_4_n_0\ : STD_LOGIC;
  signal \ts_V[26]_i_5_n_0\ : STD_LOGIC;
  signal \ts_V[26]_i_6_n_0\ : STD_LOGIC;
  signal \ts_V[27]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[28]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[29]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[30]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[31]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[32]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[33]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[34]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[35]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[36]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[37]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[38]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[39]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[40]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[41]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[42]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[43]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[44]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[45]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[46]_i_1_n_0\ : STD_LOGIC;
  signal \ts_V[47]_i_2_n_0\ : STD_LOGIC;
  signal \ts_V_reg[18]_i_2_n_0\ : STD_LOGIC;
  signal \ts_V_reg[18]_i_2_n_1\ : STD_LOGIC;
  signal \ts_V_reg[18]_i_2_n_2\ : STD_LOGIC;
  signal \ts_V_reg[18]_i_2_n_3\ : STD_LOGIC;
  signal \ts_V_reg[22]_i_2_n_0\ : STD_LOGIC;
  signal \ts_V_reg[22]_i_2_n_1\ : STD_LOGIC;
  signal \ts_V_reg[22]_i_2_n_2\ : STD_LOGIC;
  signal \ts_V_reg[22]_i_2_n_3\ : STD_LOGIC;
  signal \ts_V_reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \ts_V_reg[26]_i_2_n_1\ : STD_LOGIC;
  signal \ts_V_reg[26]_i_2_n_2\ : STD_LOGIC;
  signal \ts_V_reg[26]_i_2_n_3\ : STD_LOGIC;
  signal \ts_V_reg[30]_i_2_n_0\ : STD_LOGIC;
  signal \ts_V_reg[30]_i_2_n_1\ : STD_LOGIC;
  signal \ts_V_reg[30]_i_2_n_2\ : STD_LOGIC;
  signal \ts_V_reg[30]_i_2_n_3\ : STD_LOGIC;
  signal \ts_V_reg[34]_i_2_n_0\ : STD_LOGIC;
  signal \ts_V_reg[34]_i_2_n_1\ : STD_LOGIC;
  signal \ts_V_reg[34]_i_2_n_2\ : STD_LOGIC;
  signal \ts_V_reg[34]_i_2_n_3\ : STD_LOGIC;
  signal \ts_V_reg[38]_i_2_n_0\ : STD_LOGIC;
  signal \ts_V_reg[38]_i_2_n_1\ : STD_LOGIC;
  signal \ts_V_reg[38]_i_2_n_2\ : STD_LOGIC;
  signal \ts_V_reg[38]_i_2_n_3\ : STD_LOGIC;
  signal \ts_V_reg[42]_i_2_n_0\ : STD_LOGIC;
  signal \ts_V_reg[42]_i_2_n_1\ : STD_LOGIC;
  signal \ts_V_reg[42]_i_2_n_2\ : STD_LOGIC;
  signal \ts_V_reg[42]_i_2_n_3\ : STD_LOGIC;
  signal \ts_V_reg[46]_i_2_n_0\ : STD_LOGIC;
  signal \ts_V_reg[46]_i_2_n_1\ : STD_LOGIC;
  signal \ts_V_reg[46]_i_2_n_2\ : STD_LOGIC;
  signal \ts_V_reg[46]_i_2_n_3\ : STD_LOGIC;
  signal \NLW_nonMonTSDiffFlgReg_V[0]_INST_0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_nonMonTSDiffFlgReg_V[0]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_nonMonTSDiffFlgReg_V[0]_INST_0_i_10_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_nonMonTSDiffFlgReg_V[0]_INST_0_i_19_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_nonMonTSDiffFlgReg_V[0]_INST_0_i_28_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_nonMonTSDiffFlgReg_V[0]_INST_0_i_37_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tsWrap_V_reg[32]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tsWrap_V_reg[32]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_ts_V_reg[47]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ts_V_reg[47]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter0_reg_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of ap_idle_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \dataReg_V[10]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \dataReg_V[11]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \dataReg_V[12]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \dataReg_V[13]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \dataReg_V[15]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \dataReg_V[8]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \dataReg_V[9]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of dataReg_V_ap_vld_INST_0 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of evUSBStreamIn_V_V_0_sel_rd_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of evUSBStreamIn_V_V_0_sel_wr_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \evUSBStreamIn_V_V_0_state[1]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ts_V[43]_i_1\ : label is "soft_lutpair0";
begin
  ap_done <= \^ap_done\;
  ap_ready <= \^ap_ready\;
  dataReg_V(15 downto 0) <= \^datareg_v\(15 downto 0);
  dataReg_V_ap_vld <= \^datareg_v_ap_vld\;
  evUSBStreamIn_V_V_TREADY <= \^evusbstreamin_v_v_tready\;
  glLastTSReg_V(63) <= \<const0>\;
  glLastTSReg_V(62) <= \<const0>\;
  glLastTSReg_V(61) <= \<const0>\;
  glLastTSReg_V(60) <= \<const0>\;
  glLastTSReg_V(59) <= \<const0>\;
  glLastTSReg_V(58) <= \<const0>\;
  glLastTSReg_V(57) <= \<const0>\;
  glLastTSReg_V(56) <= \<const0>\;
  glLastTSReg_V(55) <= \<const0>\;
  glLastTSReg_V(54) <= \<const0>\;
  glLastTSReg_V(53) <= \<const0>\;
  glLastTSReg_V(52) <= \<const0>\;
  glLastTSReg_V(51) <= \<const0>\;
  glLastTSReg_V(50) <= \<const0>\;
  glLastTSReg_V(49) <= \<const0>\;
  glLastTSReg_V(48) <= \<const0>\;
  glLastTSReg_V(47 downto 0) <= \^gllasttsreg_v\(47 downto 0);
  glLastTSReg_V_ap_vld <= \^nonmontsdiffflgreg_v_ap_vld\;
  nonMonTSDiffFlgReg_V_ap_vld <= \^nonmontsdiffflgreg_v_ap_vld\;
  tsReg_V(63) <= \<const0>\;
  tsReg_V(62) <= \<const0>\;
  tsReg_V(61) <= \<const0>\;
  tsReg_V(60) <= \<const0>\;
  tsReg_V(59) <= \<const0>\;
  tsReg_V(58) <= \<const0>\;
  tsReg_V(57) <= \<const0>\;
  tsReg_V(56) <= \<const0>\;
  tsReg_V(55) <= \<const0>\;
  tsReg_V(54) <= \<const0>\;
  tsReg_V(53) <= \<const0>\;
  tsReg_V(52) <= \<const0>\;
  tsReg_V(51) <= \<const0>\;
  tsReg_V(50) <= \<const0>\;
  tsReg_V(49) <= \<const0>\;
  tsReg_V(48) <= \<const0>\;
  tsReg_V(47 downto 0) <= \^tsreg_v\(47 downto 0);
  tsReg_V_ap_vld <= \^nonmontsdiffflgreg_v_ap_vld\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555FBB1B"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_enable_reg_pp0_iter0_reg,
      I2 => ap_start,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \evUSBStreamIn_V_V_0_state_reg_n_0_[0]\,
      O => \ap_CS_fsm[0]_i_1_n_0\
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA044E4"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_enable_reg_pp0_iter0_reg,
      I2 => ap_start,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \evUSBStreamIn_V_V_0_state_reg_n_0_[0]\,
      O => \ap_CS_fsm[1]_i_1_n_0\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm[0]_i_1_n_0\,
      Q => \ap_CS_fsm_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm[1]_i_1_n_0\,
      Q => ap_CS_fsm_pp0_stage1,
      R => ap_rst_n_inv
    );
ap_done_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA02A200000000"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => ap_enable_reg_pp0_iter0_reg,
      I2 => \ap_CS_fsm_reg_n_0_[0]\,
      I3 => ap_start,
      I4 => \evUSBStreamIn_V_V_0_state_reg_n_0_[0]\,
      I5 => ap_CS_fsm_pp0_stage1,
      O => \^ap_done\
    );
ap_enable_reg_pp0_iter0_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ap_start,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp0_iter0_reg,
      O => ap_enable_reg_pp0_iter0
    );
ap_enable_reg_pp0_iter0_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter0,
      Q => ap_enable_reg_pp0_iter0_reg,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5FFF55580888000"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage1,
      I1 => \evUSBStreamIn_V_V_0_state_reg_n_0_[0]\,
      I2 => ap_start,
      I3 => \ap_CS_fsm_reg_n_0_[0]\,
      I4 => ap_enable_reg_pp0_iter0_reg,
      I5 => ap_enable_reg_pp0_iter1,
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
ap_idle_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_start,
      O => ap_idle
    );
ap_ready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2000000"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0_reg,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_start,
      I3 => \evUSBStreamIn_V_V_0_state_reg_n_0_[0]\,
      I4 => ap_CS_fsm_pp0_stage1,
      O => \^ap_ready\
    );
\dataReg_V[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => evUSBStreamIn_V_V_0_payload_B(2),
      I1 => evUSBStreamIn_V_V_0_payload_A(2),
      I2 => evUSBStreamIn_V_V_0_sel,
      O => \^datareg_v\(10)
    );
\dataReg_V[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => evUSBStreamIn_V_V_0_payload_B(3),
      I1 => evUSBStreamIn_V_V_0_payload_A(3),
      I2 => evUSBStreamIn_V_V_0_sel,
      O => \^datareg_v\(11)
    );
\dataReg_V[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => evUSBStreamIn_V_V_0_payload_B(4),
      I1 => evUSBStreamIn_V_V_0_payload_A(4),
      I2 => evUSBStreamIn_V_V_0_sel,
      O => \^datareg_v\(12)
    );
\dataReg_V[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => evUSBStreamIn_V_V_0_payload_B(5),
      I1 => evUSBStreamIn_V_V_0_payload_A(5),
      I2 => evUSBStreamIn_V_V_0_sel,
      O => \^datareg_v\(13)
    );
\dataReg_V[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => evUSBStreamIn_V_V_0_payload_B(6),
      I1 => evUSBStreamIn_V_V_0_payload_A(6),
      I2 => evUSBStreamIn_V_V_0_sel,
      O => \^datareg_v\(14)
    );
\dataReg_V[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => evUSBStreamIn_V_V_0_payload_B(7),
      I1 => evUSBStreamIn_V_V_0_payload_A(7),
      I2 => evUSBStreamIn_V_V_0_sel,
      O => \^datareg_v\(15)
    );
\dataReg_V[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => evUSBStreamIn_V_V_0_payload_B(0),
      I1 => evUSBStreamIn_V_V_0_payload_A(0),
      I2 => evUSBStreamIn_V_V_0_sel,
      O => \^datareg_v\(8)
    );
\dataReg_V[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => evUSBStreamIn_V_V_0_payload_B(1),
      I1 => evUSBStreamIn_V_V_0_payload_A(1),
      I2 => evUSBStreamIn_V_V_0_sel,
      O => \^datareg_v\(9)
    );
dataReg_V_ap_vld_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \evUSBStreamIn_V_V_0_state_reg_n_0_[0]\,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => \ap_CS_fsm_reg_n_0_[0]\,
      O => \^datareg_v_ap_vld\
    );
\evUSBStreamIn_V_V_0_payload_A[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \evUSBStreamIn_V_V_0_state_reg_n_0_[0]\,
      I1 => \^evusbstreamin_v_v_tready\,
      I2 => evUSBStreamIn_V_V_0_sel_wr,
      O => \evUSBStreamIn_V_V_0_payload_A[7]_i_1_n_0\
    );
\evUSBStreamIn_V_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \evUSBStreamIn_V_V_0_payload_A[7]_i_1_n_0\,
      D => evUSBStreamIn_V_V_TDATA(0),
      Q => evUSBStreamIn_V_V_0_payload_A(0),
      R => '0'
    );
\evUSBStreamIn_V_V_0_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \evUSBStreamIn_V_V_0_payload_A[7]_i_1_n_0\,
      D => evUSBStreamIn_V_V_TDATA(1),
      Q => evUSBStreamIn_V_V_0_payload_A(1),
      R => '0'
    );
\evUSBStreamIn_V_V_0_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \evUSBStreamIn_V_V_0_payload_A[7]_i_1_n_0\,
      D => evUSBStreamIn_V_V_TDATA(2),
      Q => evUSBStreamIn_V_V_0_payload_A(2),
      R => '0'
    );
\evUSBStreamIn_V_V_0_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \evUSBStreamIn_V_V_0_payload_A[7]_i_1_n_0\,
      D => evUSBStreamIn_V_V_TDATA(3),
      Q => evUSBStreamIn_V_V_0_payload_A(3),
      R => '0'
    );
\evUSBStreamIn_V_V_0_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \evUSBStreamIn_V_V_0_payload_A[7]_i_1_n_0\,
      D => evUSBStreamIn_V_V_TDATA(4),
      Q => evUSBStreamIn_V_V_0_payload_A(4),
      R => '0'
    );
\evUSBStreamIn_V_V_0_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \evUSBStreamIn_V_V_0_payload_A[7]_i_1_n_0\,
      D => evUSBStreamIn_V_V_TDATA(5),
      Q => evUSBStreamIn_V_V_0_payload_A(5),
      R => '0'
    );
\evUSBStreamIn_V_V_0_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \evUSBStreamIn_V_V_0_payload_A[7]_i_1_n_0\,
      D => evUSBStreamIn_V_V_TDATA(6),
      Q => evUSBStreamIn_V_V_0_payload_A(6),
      R => '0'
    );
\evUSBStreamIn_V_V_0_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \evUSBStreamIn_V_V_0_payload_A[7]_i_1_n_0\,
      D => evUSBStreamIn_V_V_TDATA(7),
      Q => evUSBStreamIn_V_V_0_payload_A(7),
      R => '0'
    );
\evUSBStreamIn_V_V_0_payload_B[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => evUSBStreamIn_V_V_0_sel_wr,
      I1 => \evUSBStreamIn_V_V_0_state_reg_n_0_[0]\,
      I2 => \^evusbstreamin_v_v_tready\,
      O => evUSBStreamIn_V_V_0_load_B
    );
\evUSBStreamIn_V_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => evUSBStreamIn_V_V_0_load_B,
      D => evUSBStreamIn_V_V_TDATA(0),
      Q => evUSBStreamIn_V_V_0_payload_B(0),
      R => '0'
    );
\evUSBStreamIn_V_V_0_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => evUSBStreamIn_V_V_0_load_B,
      D => evUSBStreamIn_V_V_TDATA(1),
      Q => evUSBStreamIn_V_V_0_payload_B(1),
      R => '0'
    );
\evUSBStreamIn_V_V_0_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => evUSBStreamIn_V_V_0_load_B,
      D => evUSBStreamIn_V_V_TDATA(2),
      Q => evUSBStreamIn_V_V_0_payload_B(2),
      R => '0'
    );
\evUSBStreamIn_V_V_0_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => evUSBStreamIn_V_V_0_load_B,
      D => evUSBStreamIn_V_V_TDATA(3),
      Q => evUSBStreamIn_V_V_0_payload_B(3),
      R => '0'
    );
\evUSBStreamIn_V_V_0_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => evUSBStreamIn_V_V_0_load_B,
      D => evUSBStreamIn_V_V_TDATA(4),
      Q => evUSBStreamIn_V_V_0_payload_B(4),
      R => '0'
    );
\evUSBStreamIn_V_V_0_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => evUSBStreamIn_V_V_0_load_B,
      D => evUSBStreamIn_V_V_TDATA(5),
      Q => evUSBStreamIn_V_V_0_payload_B(5),
      R => '0'
    );
\evUSBStreamIn_V_V_0_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => evUSBStreamIn_V_V_0_load_B,
      D => evUSBStreamIn_V_V_TDATA(6),
      Q => evUSBStreamIn_V_V_0_payload_B(6),
      R => '0'
    );
\evUSBStreamIn_V_V_0_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => evUSBStreamIn_V_V_0_load_B,
      D => evUSBStreamIn_V_V_TDATA(7),
      Q => evUSBStreamIn_V_V_0_payload_B(7),
      R => '0'
    );
evUSBStreamIn_V_V_0_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => evUSBStreamIn_V_V_0_ack_out,
      I1 => \evUSBStreamIn_V_V_0_state_reg_n_0_[0]\,
      I2 => evUSBStreamIn_V_V_0_sel,
      O => evUSBStreamIn_V_V_0_sel_rd_i_1_n_0
    );
evUSBStreamIn_V_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => evUSBStreamIn_V_V_0_sel_rd_i_1_n_0,
      Q => evUSBStreamIn_V_V_0_sel,
      R => ap_rst_n_inv
    );
evUSBStreamIn_V_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^evusbstreamin_v_v_tready\,
      I1 => evUSBStreamIn_V_V_TVALID,
      I2 => evUSBStreamIn_V_V_0_sel_wr,
      O => evUSBStreamIn_V_V_0_sel_wr_i_1_n_0
    );
evUSBStreamIn_V_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => evUSBStreamIn_V_V_0_sel_wr_i_1_n_0,
      Q => evUSBStreamIn_V_V_0_sel_wr,
      R => ap_rst_n_inv
    );
\evUSBStreamIn_V_V_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A80888"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \evUSBStreamIn_V_V_0_state_reg_n_0_[0]\,
      I2 => \^evusbstreamin_v_v_tready\,
      I3 => evUSBStreamIn_V_V_0_ack_out,
      I4 => evUSBStreamIn_V_V_TVALID,
      O => \evUSBStreamIn_V_V_0_state[0]_i_1_n_0\
    );
\evUSBStreamIn_V_V_0_state[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => ap_rst_n_inv
    );
\evUSBStreamIn_V_V_0_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAFF"
    )
        port map (
      I0 => evUSBStreamIn_V_V_0_ack_out,
      I1 => evUSBStreamIn_V_V_TVALID,
      I2 => \^evusbstreamin_v_v_tready\,
      I3 => \evUSBStreamIn_V_V_0_state_reg_n_0_[0]\,
      O => \evUSBStreamIn_V_V_0_state[1]_i_2_n_0\
    );
\evUSBStreamIn_V_V_0_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8A80800000000"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage1,
      I1 => ap_enable_reg_pp0_iter0_reg,
      I2 => \ap_CS_fsm_reg_n_0_[0]\,
      I3 => ap_start,
      I4 => ap_enable_reg_pp0_iter1,
      I5 => \evUSBStreamIn_V_V_0_state_reg_n_0_[0]\,
      O => evUSBStreamIn_V_V_0_ack_out
    );
\evUSBStreamIn_V_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \evUSBStreamIn_V_V_0_state[0]_i_1_n_0\,
      Q => \evUSBStreamIn_V_V_0_state_reg_n_0_[0]\,
      R => '0'
    );
\evUSBStreamIn_V_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \evUSBStreamIn_V_V_0_state[1]_i_2_n_0\,
      Q => \^evusbstreamin_v_v_tready\,
      R => ap_rst_n_inv
    );
glLastTSReg_V_ap_vld_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF1D000000000000"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0_reg,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_start,
      I3 => \evUSBStreamIn_V_V_0_state_reg_n_0_[0]\,
      I4 => ap_CS_fsm_pp0_stage1,
      I5 => ap_enable_reg_pp0_iter1,
      O => \^nonmontsdiffflgreg_v_ap_vld\
    );
\glLastTS_V_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(0),
      Q => \^gllasttsreg_v\(0),
      R => '0'
    );
\glLastTS_V_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(10),
      Q => \^gllasttsreg_v\(10),
      R => '0'
    );
\glLastTS_V_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(11),
      Q => \^gllasttsreg_v\(11),
      R => '0'
    );
\glLastTS_V_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(12),
      Q => \^gllasttsreg_v\(12),
      R => '0'
    );
\glLastTS_V_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(13),
      Q => \^gllasttsreg_v\(13),
      R => '0'
    );
\glLastTS_V_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(14),
      Q => \^gllasttsreg_v\(14),
      R => '0'
    );
\glLastTS_V_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(15),
      Q => \^gllasttsreg_v\(15),
      R => '0'
    );
\glLastTS_V_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(16),
      Q => \^gllasttsreg_v\(16),
      R => '0'
    );
\glLastTS_V_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(17),
      Q => \^gllasttsreg_v\(17),
      R => '0'
    );
\glLastTS_V_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(18),
      Q => \^gllasttsreg_v\(18),
      R => '0'
    );
\glLastTS_V_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(19),
      Q => \^gllasttsreg_v\(19),
      R => '0'
    );
\glLastTS_V_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(1),
      Q => \^gllasttsreg_v\(1),
      R => '0'
    );
\glLastTS_V_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(20),
      Q => \^gllasttsreg_v\(20),
      R => '0'
    );
\glLastTS_V_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(21),
      Q => \^gllasttsreg_v\(21),
      R => '0'
    );
\glLastTS_V_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(22),
      Q => \^gllasttsreg_v\(22),
      R => '0'
    );
\glLastTS_V_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(23),
      Q => \^gllasttsreg_v\(23),
      R => '0'
    );
\glLastTS_V_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(24),
      Q => \^gllasttsreg_v\(24),
      R => '0'
    );
\glLastTS_V_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(25),
      Q => \^gllasttsreg_v\(25),
      R => '0'
    );
\glLastTS_V_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(26),
      Q => \^gllasttsreg_v\(26),
      R => '0'
    );
\glLastTS_V_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(27),
      Q => \^gllasttsreg_v\(27),
      R => '0'
    );
\glLastTS_V_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(28),
      Q => \^gllasttsreg_v\(28),
      R => '0'
    );
\glLastTS_V_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(29),
      Q => \^gllasttsreg_v\(29),
      R => '0'
    );
\glLastTS_V_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(2),
      Q => \^gllasttsreg_v\(2),
      R => '0'
    );
\glLastTS_V_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(30),
      Q => \^gllasttsreg_v\(30),
      R => '0'
    );
\glLastTS_V_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(31),
      Q => \^gllasttsreg_v\(31),
      R => '0'
    );
\glLastTS_V_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(32),
      Q => \^gllasttsreg_v\(32),
      R => '0'
    );
\glLastTS_V_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(33),
      Q => \^gllasttsreg_v\(33),
      R => '0'
    );
\glLastTS_V_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(34),
      Q => \^gllasttsreg_v\(34),
      R => '0'
    );
\glLastTS_V_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(35),
      Q => \^gllasttsreg_v\(35),
      R => '0'
    );
\glLastTS_V_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(36),
      Q => \^gllasttsreg_v\(36),
      R => '0'
    );
\glLastTS_V_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(37),
      Q => \^gllasttsreg_v\(37),
      R => '0'
    );
\glLastTS_V_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(38),
      Q => \^gllasttsreg_v\(38),
      R => '0'
    );
\glLastTS_V_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(39),
      Q => \^gllasttsreg_v\(39),
      R => '0'
    );
\glLastTS_V_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(3),
      Q => \^gllasttsreg_v\(3),
      R => '0'
    );
\glLastTS_V_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(40),
      Q => \^gllasttsreg_v\(40),
      R => '0'
    );
\glLastTS_V_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(41),
      Q => \^gllasttsreg_v\(41),
      R => '0'
    );
\glLastTS_V_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(42),
      Q => \^gllasttsreg_v\(42),
      R => '0'
    );
\glLastTS_V_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(43),
      Q => \^gllasttsreg_v\(43),
      R => '0'
    );
\glLastTS_V_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(44),
      Q => \^gllasttsreg_v\(44),
      R => '0'
    );
\glLastTS_V_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(45),
      Q => \^gllasttsreg_v\(45),
      R => '0'
    );
\glLastTS_V_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(46),
      Q => \^gllasttsreg_v\(46),
      R => '0'
    );
\glLastTS_V_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(47),
      Q => \^gllasttsreg_v\(47),
      R => '0'
    );
\glLastTS_V_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(4),
      Q => \^gllasttsreg_v\(4),
      R => '0'
    );
\glLastTS_V_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(5),
      Q => \^gllasttsreg_v\(5),
      R => '0'
    );
\glLastTS_V_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(6),
      Q => \^gllasttsreg_v\(6),
      R => '0'
    );
\glLastTS_V_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(7),
      Q => \^gllasttsreg_v\(7),
      R => '0'
    );
\glLastTS_V_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(8),
      Q => \^gllasttsreg_v\(8),
      R => '0'
    );
\glLastTS_V_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done\,
      D => \^tsreg_v\(9),
      Q => \^gllasttsreg_v\(9),
      R => '0'
    );
\nonMonTSDiffFlgReg_V[0]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \nonMonTSDiffFlgReg_V[0]_INST_0_i_1_n_0\,
      CO(3) => nonMonTSDiffFlgReg_V(0),
      CO(2) => \nonMonTSDiffFlgReg_V[0]_INST_0_n_1\,
      CO(1) => \nonMonTSDiffFlgReg_V[0]_INST_0_n_2\,
      CO(0) => \nonMonTSDiffFlgReg_V[0]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_2_n_0\,
      DI(2) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_3_n_0\,
      DI(1) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_4_n_0\,
      DI(0) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_5_n_0\,
      O(3 downto 0) => \NLW_nonMonTSDiffFlgReg_V[0]_INST_0_O_UNCONNECTED\(3 downto 0),
      S(3) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_6_n_0\,
      S(2) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_7_n_0\,
      S(1) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_8_n_0\,
      S(0) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_9_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \nonMonTSDiffFlgReg_V[0]_INST_0_i_10_n_0\,
      CO(3) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_1_n_0\,
      CO(2) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_1_n_1\,
      CO(1) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_1_n_2\,
      CO(0) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_11_n_0\,
      DI(2) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_12_n_0\,
      DI(1) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_13_n_0\,
      DI(0) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_14_n_0\,
      O(3 downto 0) => \NLW_nonMonTSDiffFlgReg_V[0]_INST_0_i_1_O_UNCONNECTED\(3 downto 0),
      S(3) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_15_n_0\,
      S(2) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_16_n_0\,
      S(1) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_17_n_0\,
      S(0) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_18_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \nonMonTSDiffFlgReg_V[0]_INST_0_i_19_n_0\,
      CO(3) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_10_n_0\,
      CO(2) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_10_n_1\,
      CO(1) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_10_n_2\,
      CO(0) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_10_n_3\,
      CYINIT => '0',
      DI(3) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_20_n_0\,
      DI(2) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_21_n_0\,
      DI(1) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_22_n_0\,
      DI(0) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_23_n_0\,
      O(3 downto 0) => \NLW_nonMonTSDiffFlgReg_V[0]_INST_0_i_10_O_UNCONNECTED\(3 downto 0),
      S(3) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_24_n_0\,
      S(2) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_25_n_0\,
      S(1) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_26_n_0\,
      S(0) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_27_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^gllasttsreg_v\(38),
      I1 => \^tsreg_v\(38),
      I2 => \^tsreg_v\(39),
      I3 => \^gllasttsreg_v\(39),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_11_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^gllasttsreg_v\(36),
      I1 => \^tsreg_v\(36),
      I2 => \^tsreg_v\(37),
      I3 => \^gllasttsreg_v\(37),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_12_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^gllasttsreg_v\(34),
      I1 => \^tsreg_v\(34),
      I2 => \^tsreg_v\(35),
      I3 => \^gllasttsreg_v\(35),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_13_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^gllasttsreg_v\(32),
      I1 => \^tsreg_v\(32),
      I2 => \^tsreg_v\(33),
      I3 => \^gllasttsreg_v\(33),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_14_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gllasttsreg_v\(38),
      I1 => \^tsreg_v\(38),
      I2 => \^gllasttsreg_v\(39),
      I3 => \^tsreg_v\(39),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_15_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gllasttsreg_v\(36),
      I1 => \^tsreg_v\(36),
      I2 => \^gllasttsreg_v\(37),
      I3 => \^tsreg_v\(37),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_16_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gllasttsreg_v\(34),
      I1 => \^tsreg_v\(34),
      I2 => \^gllasttsreg_v\(35),
      I3 => \^tsreg_v\(35),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_17_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gllasttsreg_v\(32),
      I1 => \^tsreg_v\(32),
      I2 => \^gllasttsreg_v\(33),
      I3 => \^tsreg_v\(33),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_18_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_19\: unisim.vcomponents.CARRY4
     port map (
      CI => \nonMonTSDiffFlgReg_V[0]_INST_0_i_28_n_0\,
      CO(3) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_19_n_0\,
      CO(2) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_19_n_1\,
      CO(1) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_19_n_2\,
      CO(0) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_19_n_3\,
      CYINIT => '0',
      DI(3) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_29_n_0\,
      DI(2) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_30_n_0\,
      DI(1) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_31_n_0\,
      DI(0) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_32_n_0\,
      O(3 downto 0) => \NLW_nonMonTSDiffFlgReg_V[0]_INST_0_i_19_O_UNCONNECTED\(3 downto 0),
      S(3) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_33_n_0\,
      S(2) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_34_n_0\,
      S(1) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_35_n_0\,
      S(0) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_36_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^gllasttsreg_v\(46),
      I1 => \^tsreg_v\(46),
      I2 => \^tsreg_v\(47),
      I3 => \^gllasttsreg_v\(47),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_2_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^gllasttsreg_v\(30),
      I1 => \^tsreg_v\(30),
      I2 => \^tsreg_v\(31),
      I3 => \^gllasttsreg_v\(31),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_20_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^gllasttsreg_v\(28),
      I1 => \^tsreg_v\(28),
      I2 => \^tsreg_v\(29),
      I3 => \^gllasttsreg_v\(29),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_21_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^gllasttsreg_v\(26),
      I1 => \^tsreg_v\(26),
      I2 => \^tsreg_v\(27),
      I3 => \^gllasttsreg_v\(27),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_22_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^gllasttsreg_v\(24),
      I1 => \^tsreg_v\(24),
      I2 => \^tsreg_v\(25),
      I3 => \^gllasttsreg_v\(25),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_23_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gllasttsreg_v\(30),
      I1 => \^tsreg_v\(30),
      I2 => \^gllasttsreg_v\(31),
      I3 => \^tsreg_v\(31),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_24_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gllasttsreg_v\(28),
      I1 => \^tsreg_v\(28),
      I2 => \^gllasttsreg_v\(29),
      I3 => \^tsreg_v\(29),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_25_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gllasttsreg_v\(26),
      I1 => \^tsreg_v\(26),
      I2 => \^gllasttsreg_v\(27),
      I3 => \^tsreg_v\(27),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_26_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gllasttsreg_v\(24),
      I1 => \^tsreg_v\(24),
      I2 => \^gllasttsreg_v\(25),
      I3 => \^tsreg_v\(25),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_27_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_28\: unisim.vcomponents.CARRY4
     port map (
      CI => \nonMonTSDiffFlgReg_V[0]_INST_0_i_37_n_0\,
      CO(3) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_28_n_0\,
      CO(2) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_28_n_1\,
      CO(1) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_28_n_2\,
      CO(0) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_28_n_3\,
      CYINIT => '0',
      DI(3) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_38_n_0\,
      DI(2) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_39_n_0\,
      DI(1) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_40_n_0\,
      DI(0) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_41_n_0\,
      O(3 downto 0) => \NLW_nonMonTSDiffFlgReg_V[0]_INST_0_i_28_O_UNCONNECTED\(3 downto 0),
      S(3) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_42_n_0\,
      S(2) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_43_n_0\,
      S(1) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_44_n_0\,
      S(0) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_45_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^gllasttsreg_v\(22),
      I1 => \^tsreg_v\(22),
      I2 => \^tsreg_v\(23),
      I3 => \^gllasttsreg_v\(23),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_29_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^gllasttsreg_v\(44),
      I1 => \^tsreg_v\(44),
      I2 => \^tsreg_v\(45),
      I3 => \^gllasttsreg_v\(45),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_3_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^gllasttsreg_v\(20),
      I1 => \^tsreg_v\(20),
      I2 => \^tsreg_v\(21),
      I3 => \^gllasttsreg_v\(21),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_30_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^gllasttsreg_v\(18),
      I1 => \^tsreg_v\(18),
      I2 => \^tsreg_v\(19),
      I3 => \^gllasttsreg_v\(19),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_31_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^gllasttsreg_v\(16),
      I1 => \^tsreg_v\(16),
      I2 => \^tsreg_v\(17),
      I3 => \^gllasttsreg_v\(17),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_32_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gllasttsreg_v\(22),
      I1 => \^tsreg_v\(22),
      I2 => \^gllasttsreg_v\(23),
      I3 => \^tsreg_v\(23),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_33_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gllasttsreg_v\(20),
      I1 => \^tsreg_v\(20),
      I2 => \^gllasttsreg_v\(21),
      I3 => \^tsreg_v\(21),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_34_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gllasttsreg_v\(18),
      I1 => \^tsreg_v\(18),
      I2 => \^gllasttsreg_v\(19),
      I3 => \^tsreg_v\(19),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_35_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gllasttsreg_v\(16),
      I1 => \^tsreg_v\(16),
      I2 => \^gllasttsreg_v\(17),
      I3 => \^tsreg_v\(17),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_36_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_37\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_37_n_0\,
      CO(2) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_37_n_1\,
      CO(1) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_37_n_2\,
      CO(0) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_37_n_3\,
      CYINIT => '0',
      DI(3) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_46_n_0\,
      DI(2) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_47_n_0\,
      DI(1) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_48_n_0\,
      DI(0) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_49_n_0\,
      O(3 downto 0) => \NLW_nonMonTSDiffFlgReg_V[0]_INST_0_i_37_O_UNCONNECTED\(3 downto 0),
      S(3) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_50_n_0\,
      S(2) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_51_n_0\,
      S(1) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_52_n_0\,
      S(0) => \nonMonTSDiffFlgReg_V[0]_INST_0_i_53_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_38\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^gllasttsreg_v\(14),
      I1 => \^tsreg_v\(14),
      I2 => \^tsreg_v\(15),
      I3 => \^gllasttsreg_v\(15),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_38_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_39\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^gllasttsreg_v\(12),
      I1 => \^tsreg_v\(12),
      I2 => \^tsreg_v\(13),
      I3 => \^gllasttsreg_v\(13),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_39_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^gllasttsreg_v\(42),
      I1 => \^tsreg_v\(42),
      I2 => \^tsreg_v\(43),
      I3 => \^gllasttsreg_v\(43),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_4_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_40\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^gllasttsreg_v\(10),
      I1 => \^tsreg_v\(10),
      I2 => \^tsreg_v\(11),
      I3 => \^gllasttsreg_v\(11),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_40_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_41\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^gllasttsreg_v\(8),
      I1 => \^tsreg_v\(8),
      I2 => \^tsreg_v\(9),
      I3 => \^gllasttsreg_v\(9),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_41_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_42\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gllasttsreg_v\(14),
      I1 => \^tsreg_v\(14),
      I2 => \^gllasttsreg_v\(15),
      I3 => \^tsreg_v\(15),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_42_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_43\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gllasttsreg_v\(12),
      I1 => \^tsreg_v\(12),
      I2 => \^gllasttsreg_v\(13),
      I3 => \^tsreg_v\(13),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_43_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_44\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gllasttsreg_v\(10),
      I1 => \^tsreg_v\(10),
      I2 => \^gllasttsreg_v\(11),
      I3 => \^tsreg_v\(11),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_44_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_45\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gllasttsreg_v\(8),
      I1 => \^tsreg_v\(8),
      I2 => \^gllasttsreg_v\(9),
      I3 => \^tsreg_v\(9),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_45_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_46\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^gllasttsreg_v\(6),
      I1 => \^tsreg_v\(6),
      I2 => \^tsreg_v\(7),
      I3 => \^gllasttsreg_v\(7),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_46_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_47\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^gllasttsreg_v\(4),
      I1 => \^tsreg_v\(4),
      I2 => \^tsreg_v\(5),
      I3 => \^gllasttsreg_v\(5),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_47_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_48\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^gllasttsreg_v\(2),
      I1 => \^tsreg_v\(2),
      I2 => \^tsreg_v\(3),
      I3 => \^gllasttsreg_v\(3),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_48_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_49\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^gllasttsreg_v\(0),
      I1 => \^tsreg_v\(0),
      I2 => \^tsreg_v\(1),
      I3 => \^gllasttsreg_v\(1),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_49_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^gllasttsreg_v\(40),
      I1 => \^tsreg_v\(40),
      I2 => \^tsreg_v\(41),
      I3 => \^gllasttsreg_v\(41),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_5_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_50\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gllasttsreg_v\(6),
      I1 => \^tsreg_v\(6),
      I2 => \^gllasttsreg_v\(7),
      I3 => \^tsreg_v\(7),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_50_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_51\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gllasttsreg_v\(4),
      I1 => \^tsreg_v\(4),
      I2 => \^gllasttsreg_v\(5),
      I3 => \^tsreg_v\(5),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_51_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_52\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gllasttsreg_v\(2),
      I1 => \^tsreg_v\(2),
      I2 => \^gllasttsreg_v\(3),
      I3 => \^tsreg_v\(3),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_52_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_53\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gllasttsreg_v\(0),
      I1 => \^tsreg_v\(0),
      I2 => \^gllasttsreg_v\(1),
      I3 => \^tsreg_v\(1),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_53_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gllasttsreg_v\(46),
      I1 => \^tsreg_v\(46),
      I2 => \^gllasttsreg_v\(47),
      I3 => \^tsreg_v\(47),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_6_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gllasttsreg_v\(44),
      I1 => \^tsreg_v\(44),
      I2 => \^gllasttsreg_v\(45),
      I3 => \^tsreg_v\(45),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_7_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gllasttsreg_v\(42),
      I1 => \^tsreg_v\(42),
      I2 => \^gllasttsreg_v\(43),
      I3 => \^tsreg_v\(43),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_8_n_0\
    );
\nonMonTSDiffFlgReg_V[0]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gllasttsreg_v\(40),
      I1 => \^tsreg_v\(40),
      I2 => \^gllasttsreg_v\(41),
      I3 => \^tsreg_v\(41),
      O => \nonMonTSDiffFlgReg_V[0]_INST_0_i_9_n_0\
    );
\tmp_V_reg_229_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \^datareg_v\(8),
      Q => \^datareg_v\(0),
      R => '0'
    );
\tmp_V_reg_229_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \^datareg_v\(9),
      Q => \^datareg_v\(1),
      R => '0'
    );
\tmp_V_reg_229_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \^datareg_v\(10),
      Q => \^datareg_v\(2),
      R => '0'
    );
\tmp_V_reg_229_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \^datareg_v\(11),
      Q => \^datareg_v\(3),
      R => '0'
    );
\tmp_V_reg_229_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \^datareg_v\(12),
      Q => \^datareg_v\(4),
      R => '0'
    );
\tmp_V_reg_229_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \^datareg_v\(13),
      Q => \^datareg_v\(5),
      R => '0'
    );
\tmp_V_reg_229_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \^datareg_v\(14),
      Q => \^datareg_v\(6),
      R => '0'
    );
\tmp_V_reg_229_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \^datareg_v\(15),
      Q => \^datareg_v\(7),
      R => '0'
    );
\tsWrap_V[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"220A0000"
    )
        port map (
      I0 => \^datareg_v_ap_vld\,
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_2_fu_130_p2,
      O => tsWrap_V0
    );
\tsWrap_V[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^datareg_v\(3),
      I1 => tsWrap_V_reg(3),
      O => \tsWrap_V[0]_i_3_n_0\
    );
\tsWrap_V[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^datareg_v\(2),
      I1 => tsWrap_V_reg(2),
      O => \tsWrap_V[0]_i_4_n_0\
    );
\tsWrap_V[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^datareg_v\(1),
      I1 => tsWrap_V_reg(1),
      O => \tsWrap_V[0]_i_5_n_0\
    );
\tsWrap_V[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^datareg_v\(0),
      I1 => tsWrap_V_reg(0),
      O => \tsWrap_V[0]_i_6_n_0\
    );
\tsWrap_V[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^datareg_v\(7),
      I1 => tsWrap_V_reg(7),
      O => \tsWrap_V[4]_i_2_n_0\
    );
\tsWrap_V[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^datareg_v\(6),
      I1 => tsWrap_V_reg(6),
      O => \tsWrap_V[4]_i_3_n_0\
    );
\tsWrap_V[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^datareg_v\(5),
      I1 => tsWrap_V_reg(5),
      O => \tsWrap_V[4]_i_4_n_0\
    );
\tsWrap_V[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^datareg_v\(4),
      I1 => tsWrap_V_reg(4),
      O => \tsWrap_V[4]_i_5_n_0\
    );
\tsWrap_V[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => evUSBStreamIn_V_V_0_sel,
      I1 => evUSBStreamIn_V_V_0_payload_A(3),
      I2 => evUSBStreamIn_V_V_0_payload_B(3),
      I3 => tsWrap_V_reg(11),
      O => \tsWrap_V[8]_i_2_n_0\
    );
\tsWrap_V[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => evUSBStreamIn_V_V_0_sel,
      I1 => evUSBStreamIn_V_V_0_payload_A(2),
      I2 => evUSBStreamIn_V_V_0_payload_B(2),
      I3 => tsWrap_V_reg(10),
      O => \tsWrap_V[8]_i_3_n_0\
    );
\tsWrap_V[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => evUSBStreamIn_V_V_0_sel,
      I1 => evUSBStreamIn_V_V_0_payload_A(1),
      I2 => evUSBStreamIn_V_V_0_payload_B(1),
      I3 => tsWrap_V_reg(9),
      O => \tsWrap_V[8]_i_4_n_0\
    );
\tsWrap_V[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BE4"
    )
        port map (
      I0 => evUSBStreamIn_V_V_0_sel,
      I1 => evUSBStreamIn_V_V_0_payload_A(0),
      I2 => evUSBStreamIn_V_V_0_payload_B(0),
      I3 => tsWrap_V_reg(8),
      O => \tsWrap_V[8]_i_5_n_0\
    );
\tsWrap_V_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[0]_i_2_n_7\,
      Q => tsWrap_V_reg(0),
      R => '0'
    );
\tsWrap_V_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \tsWrap_V_reg[0]_i_2_n_0\,
      CO(2) => \tsWrap_V_reg[0]_i_2_n_1\,
      CO(1) => \tsWrap_V_reg[0]_i_2_n_2\,
      CO(0) => \tsWrap_V_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^datareg_v\(3 downto 0),
      O(3) => \tsWrap_V_reg[0]_i_2_n_4\,
      O(2) => \tsWrap_V_reg[0]_i_2_n_5\,
      O(1) => \tsWrap_V_reg[0]_i_2_n_6\,
      O(0) => \tsWrap_V_reg[0]_i_2_n_7\,
      S(3) => \tsWrap_V[0]_i_3_n_0\,
      S(2) => \tsWrap_V[0]_i_4_n_0\,
      S(1) => \tsWrap_V[0]_i_5_n_0\,
      S(0) => \tsWrap_V[0]_i_6_n_0\
    );
\tsWrap_V_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[8]_i_1_n_5\,
      Q => tsWrap_V_reg(10),
      R => '0'
    );
\tsWrap_V_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[8]_i_1_n_4\,
      Q => tsWrap_V_reg(11),
      R => '0'
    );
\tsWrap_V_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[12]_i_1_n_7\,
      Q => tsWrap_V_reg(12),
      R => '0'
    );
\tsWrap_V_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tsWrap_V_reg[8]_i_1_n_0\,
      CO(3) => \tsWrap_V_reg[12]_i_1_n_0\,
      CO(2) => \tsWrap_V_reg[12]_i_1_n_1\,
      CO(1) => \tsWrap_V_reg[12]_i_1_n_2\,
      CO(0) => \tsWrap_V_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tsWrap_V_reg[12]_i_1_n_4\,
      O(2) => \tsWrap_V_reg[12]_i_1_n_5\,
      O(1) => \tsWrap_V_reg[12]_i_1_n_6\,
      O(0) => \tsWrap_V_reg[12]_i_1_n_7\,
      S(3 downto 0) => tsWrap_V_reg(15 downto 12)
    );
\tsWrap_V_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[12]_i_1_n_6\,
      Q => tsWrap_V_reg(13),
      R => '0'
    );
\tsWrap_V_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[12]_i_1_n_5\,
      Q => tsWrap_V_reg(14),
      R => '0'
    );
\tsWrap_V_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[12]_i_1_n_4\,
      Q => tsWrap_V_reg(15),
      R => '0'
    );
\tsWrap_V_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[16]_i_1_n_7\,
      Q => tsWrap_V_reg(16),
      R => '0'
    );
\tsWrap_V_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tsWrap_V_reg[12]_i_1_n_0\,
      CO(3) => \tsWrap_V_reg[16]_i_1_n_0\,
      CO(2) => \tsWrap_V_reg[16]_i_1_n_1\,
      CO(1) => \tsWrap_V_reg[16]_i_1_n_2\,
      CO(0) => \tsWrap_V_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tsWrap_V_reg[16]_i_1_n_4\,
      O(2) => \tsWrap_V_reg[16]_i_1_n_5\,
      O(1) => \tsWrap_V_reg[16]_i_1_n_6\,
      O(0) => \tsWrap_V_reg[16]_i_1_n_7\,
      S(3 downto 0) => tsWrap_V_reg(19 downto 16)
    );
\tsWrap_V_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[16]_i_1_n_6\,
      Q => tsWrap_V_reg(17),
      R => '0'
    );
\tsWrap_V_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[16]_i_1_n_5\,
      Q => tsWrap_V_reg(18),
      R => '0'
    );
\tsWrap_V_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[16]_i_1_n_4\,
      Q => tsWrap_V_reg(19),
      R => '0'
    );
\tsWrap_V_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[0]_i_2_n_6\,
      Q => tsWrap_V_reg(1),
      R => '0'
    );
\tsWrap_V_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[20]_i_1_n_7\,
      Q => tsWrap_V_reg(20),
      R => '0'
    );
\tsWrap_V_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tsWrap_V_reg[16]_i_1_n_0\,
      CO(3) => \tsWrap_V_reg[20]_i_1_n_0\,
      CO(2) => \tsWrap_V_reg[20]_i_1_n_1\,
      CO(1) => \tsWrap_V_reg[20]_i_1_n_2\,
      CO(0) => \tsWrap_V_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tsWrap_V_reg[20]_i_1_n_4\,
      O(2) => \tsWrap_V_reg[20]_i_1_n_5\,
      O(1) => \tsWrap_V_reg[20]_i_1_n_6\,
      O(0) => \tsWrap_V_reg[20]_i_1_n_7\,
      S(3 downto 0) => tsWrap_V_reg(23 downto 20)
    );
\tsWrap_V_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[20]_i_1_n_6\,
      Q => tsWrap_V_reg(21),
      R => '0'
    );
\tsWrap_V_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[20]_i_1_n_5\,
      Q => tsWrap_V_reg(22),
      R => '0'
    );
\tsWrap_V_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[20]_i_1_n_4\,
      Q => tsWrap_V_reg(23),
      R => '0'
    );
\tsWrap_V_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[24]_i_1_n_7\,
      Q => tsWrap_V_reg(24),
      R => '0'
    );
\tsWrap_V_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tsWrap_V_reg[20]_i_1_n_0\,
      CO(3) => \tsWrap_V_reg[24]_i_1_n_0\,
      CO(2) => \tsWrap_V_reg[24]_i_1_n_1\,
      CO(1) => \tsWrap_V_reg[24]_i_1_n_2\,
      CO(0) => \tsWrap_V_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tsWrap_V_reg[24]_i_1_n_4\,
      O(2) => \tsWrap_V_reg[24]_i_1_n_5\,
      O(1) => \tsWrap_V_reg[24]_i_1_n_6\,
      O(0) => \tsWrap_V_reg[24]_i_1_n_7\,
      S(3 downto 0) => tsWrap_V_reg(27 downto 24)
    );
\tsWrap_V_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[24]_i_1_n_6\,
      Q => tsWrap_V_reg(25),
      R => '0'
    );
\tsWrap_V_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[24]_i_1_n_5\,
      Q => tsWrap_V_reg(26),
      R => '0'
    );
\tsWrap_V_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[24]_i_1_n_4\,
      Q => tsWrap_V_reg(27),
      R => '0'
    );
\tsWrap_V_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[28]_i_1_n_7\,
      Q => tsWrap_V_reg(28),
      R => '0'
    );
\tsWrap_V_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tsWrap_V_reg[24]_i_1_n_0\,
      CO(3) => \tsWrap_V_reg[28]_i_1_n_0\,
      CO(2) => \tsWrap_V_reg[28]_i_1_n_1\,
      CO(1) => \tsWrap_V_reg[28]_i_1_n_2\,
      CO(0) => \tsWrap_V_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tsWrap_V_reg[28]_i_1_n_4\,
      O(2) => \tsWrap_V_reg[28]_i_1_n_5\,
      O(1) => \tsWrap_V_reg[28]_i_1_n_6\,
      O(0) => \tsWrap_V_reg[28]_i_1_n_7\,
      S(3 downto 0) => tsWrap_V_reg(31 downto 28)
    );
\tsWrap_V_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[28]_i_1_n_6\,
      Q => tsWrap_V_reg(29),
      R => '0'
    );
\tsWrap_V_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[0]_i_2_n_5\,
      Q => tsWrap_V_reg(2),
      R => '0'
    );
\tsWrap_V_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[28]_i_1_n_5\,
      Q => tsWrap_V_reg(30),
      R => '0'
    );
\tsWrap_V_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[28]_i_1_n_4\,
      Q => tsWrap_V_reg(31),
      R => '0'
    );
\tsWrap_V_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[32]_i_1_n_7\,
      Q => tsWrap_V_reg(32),
      R => '0'
    );
\tsWrap_V_reg[32]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tsWrap_V_reg[28]_i_1_n_0\,
      CO(3 downto 0) => \NLW_tsWrap_V_reg[32]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_tsWrap_V_reg[32]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \tsWrap_V_reg[32]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => tsWrap_V_reg(32)
    );
\tsWrap_V_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[0]_i_2_n_4\,
      Q => tsWrap_V_reg(3),
      R => '0'
    );
\tsWrap_V_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[4]_i_1_n_7\,
      Q => tsWrap_V_reg(4),
      R => '0'
    );
\tsWrap_V_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tsWrap_V_reg[0]_i_2_n_0\,
      CO(3) => \tsWrap_V_reg[4]_i_1_n_0\,
      CO(2) => \tsWrap_V_reg[4]_i_1_n_1\,
      CO(1) => \tsWrap_V_reg[4]_i_1_n_2\,
      CO(0) => \tsWrap_V_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^datareg_v\(7 downto 4),
      O(3) => \tsWrap_V_reg[4]_i_1_n_4\,
      O(2) => \tsWrap_V_reg[4]_i_1_n_5\,
      O(1) => \tsWrap_V_reg[4]_i_1_n_6\,
      O(0) => \tsWrap_V_reg[4]_i_1_n_7\,
      S(3) => \tsWrap_V[4]_i_2_n_0\,
      S(2) => \tsWrap_V[4]_i_3_n_0\,
      S(1) => \tsWrap_V[4]_i_4_n_0\,
      S(0) => \tsWrap_V[4]_i_5_n_0\
    );
\tsWrap_V_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[4]_i_1_n_6\,
      Q => tsWrap_V_reg(5),
      R => '0'
    );
\tsWrap_V_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[4]_i_1_n_5\,
      Q => tsWrap_V_reg(6),
      R => '0'
    );
\tsWrap_V_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[4]_i_1_n_4\,
      Q => tsWrap_V_reg(7),
      R => '0'
    );
\tsWrap_V_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[8]_i_1_n_7\,
      Q => tsWrap_V_reg(8),
      R => '0'
    );
\tsWrap_V_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tsWrap_V_reg[4]_i_1_n_0\,
      CO(3) => \tsWrap_V_reg[8]_i_1_n_0\,
      CO(2) => \tsWrap_V_reg[8]_i_1_n_1\,
      CO(1) => \tsWrap_V_reg[8]_i_1_n_2\,
      CO(0) => \tsWrap_V_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => tsWrap_V_reg(11 downto 8),
      O(3) => \tsWrap_V_reg[8]_i_1_n_4\,
      O(2) => \tsWrap_V_reg[8]_i_1_n_5\,
      O(1) => \tsWrap_V_reg[8]_i_1_n_6\,
      O(0) => \tsWrap_V_reg[8]_i_1_n_7\,
      S(3) => \tsWrap_V[8]_i_2_n_0\,
      S(2) => \tsWrap_V[8]_i_3_n_0\,
      S(1) => \tsWrap_V[8]_i_4_n_0\,
      S(0) => \tsWrap_V[8]_i_5_n_0\
    );
\tsWrap_V_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => tsWrap_V0,
      D => \tsWrap_V_reg[8]_i_1_n_6\,
      Q => tsWrap_V_reg(9),
      R => '0'
    );
\ts_V[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00088088"
    )
        port map (
      I0 => tmp_2_fu_130_p2,
      I1 => \^datareg_v_ap_vld\,
      I2 => evUSBStreamIn_V_V_0_sel,
      I3 => evUSBStreamIn_V_V_0_payload_A(7),
      I4 => evUSBStreamIn_V_V_0_payload_B(7),
      O => \ts_V[14]_i_1_n_0\
    );
\ts_V[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(0),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(0),
      O => \ts_V[15]_i_1_n_0\
    );
\ts_V[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(1),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(1),
      O => \ts_V[16]_i_1_n_0\
    );
\ts_V[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(2),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(2),
      O => \ts_V[17]_i_1_n_0\
    );
\ts_V[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(3),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(3),
      O => \ts_V[18]_i_1_n_0\
    );
\ts_V[18]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tsWrap_V_reg(3),
      I1 => \^datareg_v\(3),
      O => \ts_V[18]_i_3_n_0\
    );
\ts_V[18]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tsWrap_V_reg(2),
      I1 => \^datareg_v\(2),
      O => \ts_V[18]_i_4_n_0\
    );
\ts_V[18]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tsWrap_V_reg(1),
      I1 => \^datareg_v\(1),
      O => \ts_V[18]_i_5_n_0\
    );
\ts_V[18]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tsWrap_V_reg(0),
      I1 => \^datareg_v\(0),
      O => \ts_V[18]_i_6_n_0\
    );
\ts_V[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(4),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(4),
      O => \ts_V[19]_i_1_n_0\
    );
\ts_V[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(5),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(5),
      O => \ts_V[20]_i_1_n_0\
    );
\ts_V[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(6),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(6),
      O => \ts_V[21]_i_1_n_0\
    );
\ts_V[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(7),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(7),
      O => \ts_V[22]_i_1_n_0\
    );
\ts_V[22]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tsWrap_V_reg(7),
      I1 => \^datareg_v\(7),
      O => \ts_V[22]_i_3_n_0\
    );
\ts_V[22]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tsWrap_V_reg(6),
      I1 => \^datareg_v\(6),
      O => \ts_V[22]_i_4_n_0\
    );
\ts_V[22]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tsWrap_V_reg(5),
      I1 => \^datareg_v\(5),
      O => \ts_V[22]_i_5_n_0\
    );
\ts_V[22]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tsWrap_V_reg(4),
      I1 => \^datareg_v\(4),
      O => \ts_V[22]_i_6_n_0\
    );
\ts_V[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(8),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(8),
      O => \ts_V[23]_i_1_n_0\
    );
\ts_V[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(9),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(9),
      O => \ts_V[24]_i_1_n_0\
    );
\ts_V[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(10),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(10),
      O => \ts_V[25]_i_1_n_0\
    );
\ts_V[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(11),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(11),
      O => \ts_V[26]_i_1_n_0\
    );
\ts_V[26]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => tsWrap_V_reg(11),
      I1 => evUSBStreamIn_V_V_0_sel,
      I2 => evUSBStreamIn_V_V_0_payload_A(3),
      I3 => evUSBStreamIn_V_V_0_payload_B(3),
      O => \ts_V[26]_i_3_n_0\
    );
\ts_V[26]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => tsWrap_V_reg(10),
      I1 => evUSBStreamIn_V_V_0_sel,
      I2 => evUSBStreamIn_V_V_0_payload_A(2),
      I3 => evUSBStreamIn_V_V_0_payload_B(2),
      O => \ts_V[26]_i_4_n_0\
    );
\ts_V[26]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => tsWrap_V_reg(9),
      I1 => evUSBStreamIn_V_V_0_sel,
      I2 => evUSBStreamIn_V_V_0_payload_A(1),
      I3 => evUSBStreamIn_V_V_0_payload_B(1),
      O => \ts_V[26]_i_5_n_0\
    );
\ts_V[26]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => tsWrap_V_reg(8),
      I1 => evUSBStreamIn_V_V_0_sel,
      I2 => evUSBStreamIn_V_V_0_payload_A(0),
      I3 => evUSBStreamIn_V_V_0_payload_B(0),
      O => \ts_V[26]_i_6_n_0\
    );
\ts_V[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(12),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(12),
      O => \ts_V[27]_i_1_n_0\
    );
\ts_V[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(13),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(13),
      O => \ts_V[28]_i_1_n_0\
    );
\ts_V[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(14),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(14),
      O => \ts_V[29]_i_1_n_0\
    );
\ts_V[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(15),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(15),
      O => \ts_V[30]_i_1_n_0\
    );
\ts_V[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(16),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(16),
      O => \ts_V[31]_i_1_n_0\
    );
\ts_V[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(17),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(17),
      O => \ts_V[32]_i_1_n_0\
    );
\ts_V[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(18),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(18),
      O => \ts_V[33]_i_1_n_0\
    );
\ts_V[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(19),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(19),
      O => \ts_V[34]_i_1_n_0\
    );
\ts_V[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(20),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(20),
      O => \ts_V[35]_i_1_n_0\
    );
\ts_V[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(21),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(21),
      O => \ts_V[36]_i_1_n_0\
    );
\ts_V[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(22),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(22),
      O => \ts_V[37]_i_1_n_0\
    );
\ts_V[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(23),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(23),
      O => \ts_V[38]_i_1_n_0\
    );
\ts_V[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(24),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(24),
      O => \ts_V[39]_i_1_n_0\
    );
\ts_V[40]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(25),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(25),
      O => \ts_V[40]_i_1_n_0\
    );
\ts_V[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(26),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(26),
      O => \ts_V[41]_i_1_n_0\
    );
\ts_V[42]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(27),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(27),
      O => \ts_V[42]_i_1_n_0\
    );
\ts_V[43]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(28),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(28),
      O => \ts_V[43]_i_1_n_0\
    );
\ts_V[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(29),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(29),
      O => \ts_V[44]_i_1_n_0\
    );
\ts_V[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(30),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(30),
      O => \ts_V[45]_i_1_n_0\
    );
\ts_V[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(31),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(31),
      O => \ts_V[46]_i_1_n_0\
    );
\ts_V[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A8AA88"
    )
        port map (
      I0 => \^datareg_v_ap_vld\,
      I1 => tmp_2_fu_130_p2,
      I2 => evUSBStreamIn_V_V_0_payload_B(7),
      I3 => evUSBStreamIn_V_V_0_payload_A(7),
      I4 => evUSBStreamIn_V_V_0_sel,
      O => ts_V
    );
\ts_V[47]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => tsWrap_V_reg(32),
      I1 => evUSBStreamIn_V_V_0_payload_B(7),
      I2 => evUSBStreamIn_V_V_0_payload_A(7),
      I3 => evUSBStreamIn_V_V_0_sel,
      I4 => tmp_8_fu_151_p2(32),
      O => \ts_V[47]_i_2_n_0\
    );
\ts_V[47]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000C000A0A00000"
    )
        port map (
      I0 => evUSBStreamIn_V_V_0_payload_A(5),
      I1 => evUSBStreamIn_V_V_0_payload_B(5),
      I2 => \^datareg_v\(12),
      I3 => evUSBStreamIn_V_V_0_payload_B(6),
      I4 => evUSBStreamIn_V_V_0_payload_A(6),
      I5 => evUSBStreamIn_V_V_0_sel,
      O => tmp_2_fu_130_p2
    );
\ts_V_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \^datareg_v\(0),
      Q => \^tsreg_v\(0),
      R => \ts_V[14]_i_1_n_0\
    );
\ts_V_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \^datareg_v\(10),
      Q => \^tsreg_v\(10),
      R => \ts_V[14]_i_1_n_0\
    );
\ts_V_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \^datareg_v\(11),
      Q => \^tsreg_v\(11),
      R => \ts_V[14]_i_1_n_0\
    );
\ts_V_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \^datareg_v\(12),
      Q => \^tsreg_v\(12),
      R => \ts_V[14]_i_1_n_0\
    );
\ts_V_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \^datareg_v\(13),
      Q => \^tsreg_v\(13),
      R => \ts_V[14]_i_1_n_0\
    );
\ts_V_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \^datareg_v\(14),
      Q => \^tsreg_v\(14),
      R => \ts_V[14]_i_1_n_0\
    );
\ts_V_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[15]_i_1_n_0\,
      Q => \^tsreg_v\(15),
      R => '0'
    );
\ts_V_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[16]_i_1_n_0\,
      Q => \^tsreg_v\(16),
      R => '0'
    );
\ts_V_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[17]_i_1_n_0\,
      Q => \^tsreg_v\(17),
      R => '0'
    );
\ts_V_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[18]_i_1_n_0\,
      Q => \^tsreg_v\(18),
      R => '0'
    );
\ts_V_reg[18]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ts_V_reg[18]_i_2_n_0\,
      CO(2) => \ts_V_reg[18]_i_2_n_1\,
      CO(1) => \ts_V_reg[18]_i_2_n_2\,
      CO(0) => \ts_V_reg[18]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => tsWrap_V_reg(3 downto 0),
      O(3 downto 0) => tmp_8_fu_151_p2(3 downto 0),
      S(3) => \ts_V[18]_i_3_n_0\,
      S(2) => \ts_V[18]_i_4_n_0\,
      S(1) => \ts_V[18]_i_5_n_0\,
      S(0) => \ts_V[18]_i_6_n_0\
    );
\ts_V_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[19]_i_1_n_0\,
      Q => \^tsreg_v\(19),
      R => '0'
    );
\ts_V_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \^datareg_v\(1),
      Q => \^tsreg_v\(1),
      R => \ts_V[14]_i_1_n_0\
    );
\ts_V_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[20]_i_1_n_0\,
      Q => \^tsreg_v\(20),
      R => '0'
    );
\ts_V_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[21]_i_1_n_0\,
      Q => \^tsreg_v\(21),
      R => '0'
    );
\ts_V_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[22]_i_1_n_0\,
      Q => \^tsreg_v\(22),
      R => '0'
    );
\ts_V_reg[22]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ts_V_reg[18]_i_2_n_0\,
      CO(3) => \ts_V_reg[22]_i_2_n_0\,
      CO(2) => \ts_V_reg[22]_i_2_n_1\,
      CO(1) => \ts_V_reg[22]_i_2_n_2\,
      CO(0) => \ts_V_reg[22]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => tsWrap_V_reg(7 downto 4),
      O(3 downto 0) => tmp_8_fu_151_p2(7 downto 4),
      S(3) => \ts_V[22]_i_3_n_0\,
      S(2) => \ts_V[22]_i_4_n_0\,
      S(1) => \ts_V[22]_i_5_n_0\,
      S(0) => \ts_V[22]_i_6_n_0\
    );
\ts_V_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[23]_i_1_n_0\,
      Q => \^tsreg_v\(23),
      R => '0'
    );
\ts_V_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[24]_i_1_n_0\,
      Q => \^tsreg_v\(24),
      R => '0'
    );
\ts_V_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[25]_i_1_n_0\,
      Q => \^tsreg_v\(25),
      R => '0'
    );
\ts_V_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[26]_i_1_n_0\,
      Q => \^tsreg_v\(26),
      R => '0'
    );
\ts_V_reg[26]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ts_V_reg[22]_i_2_n_0\,
      CO(3) => \ts_V_reg[26]_i_2_n_0\,
      CO(2) => \ts_V_reg[26]_i_2_n_1\,
      CO(1) => \ts_V_reg[26]_i_2_n_2\,
      CO(0) => \ts_V_reg[26]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => tsWrap_V_reg(11 downto 8),
      O(3 downto 0) => tmp_8_fu_151_p2(11 downto 8),
      S(3) => \ts_V[26]_i_3_n_0\,
      S(2) => \ts_V[26]_i_4_n_0\,
      S(1) => \ts_V[26]_i_5_n_0\,
      S(0) => \ts_V[26]_i_6_n_0\
    );
\ts_V_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[27]_i_1_n_0\,
      Q => \^tsreg_v\(27),
      R => '0'
    );
\ts_V_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[28]_i_1_n_0\,
      Q => \^tsreg_v\(28),
      R => '0'
    );
\ts_V_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[29]_i_1_n_0\,
      Q => \^tsreg_v\(29),
      R => '0'
    );
\ts_V_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \^datareg_v\(2),
      Q => \^tsreg_v\(2),
      R => \ts_V[14]_i_1_n_0\
    );
\ts_V_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[30]_i_1_n_0\,
      Q => \^tsreg_v\(30),
      R => '0'
    );
\ts_V_reg[30]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ts_V_reg[26]_i_2_n_0\,
      CO(3) => \ts_V_reg[30]_i_2_n_0\,
      CO(2) => \ts_V_reg[30]_i_2_n_1\,
      CO(1) => \ts_V_reg[30]_i_2_n_2\,
      CO(0) => \ts_V_reg[30]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_8_fu_151_p2(15 downto 12),
      S(3 downto 0) => tsWrap_V_reg(15 downto 12)
    );
\ts_V_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[31]_i_1_n_0\,
      Q => \^tsreg_v\(31),
      R => '0'
    );
\ts_V_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[32]_i_1_n_0\,
      Q => \^tsreg_v\(32),
      R => '0'
    );
\ts_V_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[33]_i_1_n_0\,
      Q => \^tsreg_v\(33),
      R => '0'
    );
\ts_V_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[34]_i_1_n_0\,
      Q => \^tsreg_v\(34),
      R => '0'
    );
\ts_V_reg[34]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ts_V_reg[30]_i_2_n_0\,
      CO(3) => \ts_V_reg[34]_i_2_n_0\,
      CO(2) => \ts_V_reg[34]_i_2_n_1\,
      CO(1) => \ts_V_reg[34]_i_2_n_2\,
      CO(0) => \ts_V_reg[34]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_8_fu_151_p2(19 downto 16),
      S(3 downto 0) => tsWrap_V_reg(19 downto 16)
    );
\ts_V_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[35]_i_1_n_0\,
      Q => \^tsreg_v\(35),
      R => '0'
    );
\ts_V_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[36]_i_1_n_0\,
      Q => \^tsreg_v\(36),
      R => '0'
    );
\ts_V_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[37]_i_1_n_0\,
      Q => \^tsreg_v\(37),
      R => '0'
    );
\ts_V_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[38]_i_1_n_0\,
      Q => \^tsreg_v\(38),
      R => '0'
    );
\ts_V_reg[38]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ts_V_reg[34]_i_2_n_0\,
      CO(3) => \ts_V_reg[38]_i_2_n_0\,
      CO(2) => \ts_V_reg[38]_i_2_n_1\,
      CO(1) => \ts_V_reg[38]_i_2_n_2\,
      CO(0) => \ts_V_reg[38]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_8_fu_151_p2(23 downto 20),
      S(3 downto 0) => tsWrap_V_reg(23 downto 20)
    );
\ts_V_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[39]_i_1_n_0\,
      Q => \^tsreg_v\(39),
      R => '0'
    );
\ts_V_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \^datareg_v\(3),
      Q => \^tsreg_v\(3),
      R => \ts_V[14]_i_1_n_0\
    );
\ts_V_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[40]_i_1_n_0\,
      Q => \^tsreg_v\(40),
      R => '0'
    );
\ts_V_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[41]_i_1_n_0\,
      Q => \^tsreg_v\(41),
      R => '0'
    );
\ts_V_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[42]_i_1_n_0\,
      Q => \^tsreg_v\(42),
      R => '0'
    );
\ts_V_reg[42]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ts_V_reg[38]_i_2_n_0\,
      CO(3) => \ts_V_reg[42]_i_2_n_0\,
      CO(2) => \ts_V_reg[42]_i_2_n_1\,
      CO(1) => \ts_V_reg[42]_i_2_n_2\,
      CO(0) => \ts_V_reg[42]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_8_fu_151_p2(27 downto 24),
      S(3 downto 0) => tsWrap_V_reg(27 downto 24)
    );
\ts_V_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[43]_i_1_n_0\,
      Q => \^tsreg_v\(43),
      R => '0'
    );
\ts_V_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[44]_i_1_n_0\,
      Q => \^tsreg_v\(44),
      R => '0'
    );
\ts_V_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[45]_i_1_n_0\,
      Q => \^tsreg_v\(45),
      R => '0'
    );
\ts_V_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[46]_i_1_n_0\,
      Q => \^tsreg_v\(46),
      R => '0'
    );
\ts_V_reg[46]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ts_V_reg[42]_i_2_n_0\,
      CO(3) => \ts_V_reg[46]_i_2_n_0\,
      CO(2) => \ts_V_reg[46]_i_2_n_1\,
      CO(1) => \ts_V_reg[46]_i_2_n_2\,
      CO(0) => \ts_V_reg[46]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_8_fu_151_p2(31 downto 28),
      S(3 downto 0) => tsWrap_V_reg(31 downto 28)
    );
\ts_V_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \ts_V[47]_i_2_n_0\,
      Q => \^tsreg_v\(47),
      R => '0'
    );
\ts_V_reg[47]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \ts_V_reg[46]_i_2_n_0\,
      CO(3 downto 0) => \NLW_ts_V_reg[47]_i_4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_ts_V_reg[47]_i_4_O_UNCONNECTED\(3 downto 1),
      O(0) => tmp_8_fu_151_p2(32),
      S(3 downto 1) => B"000",
      S(0) => tsWrap_V_reg(32)
    );
\ts_V_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \^datareg_v\(4),
      Q => \^tsreg_v\(4),
      R => \ts_V[14]_i_1_n_0\
    );
\ts_V_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \^datareg_v\(5),
      Q => \^tsreg_v\(5),
      R => \ts_V[14]_i_1_n_0\
    );
\ts_V_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \^datareg_v\(6),
      Q => \^tsreg_v\(6),
      R => \ts_V[14]_i_1_n_0\
    );
\ts_V_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \^datareg_v\(7),
      Q => \^tsreg_v\(7),
      R => \ts_V[14]_i_1_n_0\
    );
\ts_V_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \^datareg_v\(8),
      Q => \^tsreg_v\(8),
      R => \ts_V[14]_i_1_n_0\
    );
\ts_V_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ts_V,
      D => \^datareg_v\(9),
      Q => \^tsreg_v\(9),
      R => \ts_V[14]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_checkEvUSBStream_0_1 is
  port (
    dataReg_V_ap_vld : out STD_LOGIC;
    nonMonTSDiffFlgReg_V_ap_vld : out STD_LOGIC;
    tsReg_V_ap_vld : out STD_LOGIC;
    glLastTSReg_V_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    evUSBStreamIn_V_V_TVALID : in STD_LOGIC;
    evUSBStreamIn_V_V_TREADY : out STD_LOGIC;
    evUSBStreamIn_V_V_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dataReg_V : out STD_LOGIC_VECTOR ( 15 downto 0 );
    nonMonTSDiffFlgReg_V : out STD_LOGIC_VECTOR ( 0 to 0 );
    tsReg_V : out STD_LOGIC_VECTOR ( 63 downto 0 );
    glLastTSReg_V : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of brd_checkEvUSBStream_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of brd_checkEvUSBStream_0_1 : entity is "brd_checkEvUSBStream_0_1,checkEvUSBStream,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of brd_checkEvUSBStream_0_1 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of brd_checkEvUSBStream_0_1 : entity is "checkEvUSBStream,Vivado 2018.1";
end brd_checkEvUSBStream_0_1;

architecture STRUCTURE of brd_checkEvUSBStream_0_1 is
  attribute x_interface_info : string;
  attribute x_interface_info of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF evUSBStreamIn_V_V, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute x_interface_info of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute x_interface_info of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute x_interface_info of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute x_interface_parameter of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute x_interface_info of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute x_interface_parameter of ap_start : signal is "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute x_interface_info of evUSBStreamIn_V_V_TREADY : signal is "xilinx.com:interface:axis:1.0 evUSBStreamIn_V_V TREADY";
  attribute x_interface_info of evUSBStreamIn_V_V_TVALID : signal is "xilinx.com:interface:axis:1.0 evUSBStreamIn_V_V TVALID";
  attribute x_interface_parameter of evUSBStreamIn_V_V_TVALID : signal is "XIL_INTERFACENAME evUSBStreamIn_V_V, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of dataReg_V : signal is "xilinx.com:signal:data:1.0 dataReg_V DATA";
  attribute x_interface_parameter of dataReg_V : signal is "XIL_INTERFACENAME dataReg_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
  attribute x_interface_info of evUSBStreamIn_V_V_TDATA : signal is "xilinx.com:interface:axis:1.0 evUSBStreamIn_V_V TDATA";
  attribute x_interface_info of glLastTSReg_V : signal is "xilinx.com:signal:data:1.0 glLastTSReg_V DATA";
  attribute x_interface_parameter of glLastTSReg_V : signal is "XIL_INTERFACENAME glLastTSReg_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
  attribute x_interface_info of nonMonTSDiffFlgReg_V : signal is "xilinx.com:signal:data:1.0 nonMonTSDiffFlgReg_V DATA";
  attribute x_interface_parameter of nonMonTSDiffFlgReg_V : signal is "XIL_INTERFACENAME nonMonTSDiffFlgReg_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
  attribute x_interface_info of tsReg_V : signal is "xilinx.com:signal:data:1.0 tsReg_V DATA";
  attribute x_interface_parameter of tsReg_V : signal is "XIL_INTERFACENAME tsReg_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
begin
U0: entity work.brd_checkEvUSBStream_0_1_checkEvUSBStream
     port map (
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      dataReg_V(15 downto 0) => dataReg_V(15 downto 0),
      dataReg_V_ap_vld => dataReg_V_ap_vld,
      evUSBStreamIn_V_V_TDATA(7 downto 0) => evUSBStreamIn_V_V_TDATA(7 downto 0),
      evUSBStreamIn_V_V_TREADY => evUSBStreamIn_V_V_TREADY,
      evUSBStreamIn_V_V_TVALID => evUSBStreamIn_V_V_TVALID,
      glLastTSReg_V(63 downto 0) => glLastTSReg_V(63 downto 0),
      glLastTSReg_V_ap_vld => glLastTSReg_V_ap_vld,
      nonMonTSDiffFlgReg_V(0) => nonMonTSDiffFlgReg_V(0),
      nonMonTSDiffFlgReg_V_ap_vld => nonMonTSDiffFlgReg_V_ap_vld,
      tsReg_V(63 downto 0) => tsReg_V(63 downto 0),
      tsReg_V_ap_vld => tsReg_V_ap_vld
    );
end STRUCTURE;
