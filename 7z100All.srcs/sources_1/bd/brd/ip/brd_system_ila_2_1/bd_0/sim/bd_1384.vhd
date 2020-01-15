--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_1384.bd
--Design : bd_1384
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_1384 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe12 : in STD_LOGIC_VECTOR ( 47 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe16 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe17 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe18 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe19 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe20 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe21 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe22 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe23 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe24 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe25 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe26 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe27 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe28 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe29 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe30 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe31 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe32 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe33 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe34 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe35 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe36 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe37 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe38 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe39 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe40 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe41 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe42 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe43 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe44 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe45 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe46 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe47 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe48 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe49 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe50 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe51 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe52 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 47 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_1384 : entity is "bd_1384,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_1384,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_1384 : entity is "brd_system_ila_2_1.hwdef";
end bd_1384;

architecture STRUCTURE of bd_1384 is
  component bd_1384_ila_lib_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 47 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe12 : in STD_LOGIC_VECTOR ( 47 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe16 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe17 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe18 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe19 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe20 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe21 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe22 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe23 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe24 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe25 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe26 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe27 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe28 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe29 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe30 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe31 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe32 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe33 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe34 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe35 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe36 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe37 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe38 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe39 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe40 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe41 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe42 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe43 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe44 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe45 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe46 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe47 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe48 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe49 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe50 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe51 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe52 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component bd_1384_ila_lib_0;
  signal clk_1 : STD_LOGIC;
  signal probe0_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal probe10_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe11_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe12_1 : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal probe13_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal probe14_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal probe15_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe16_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe17_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe18_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe19_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe1_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe20_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe21_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe22_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe23_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe24_1 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal probe25_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe26_1 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal probe27_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe28_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe29_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal probe2_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe30_1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal probe31_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe32_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe33_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal probe34_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe35_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal probe36_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal probe37_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe38_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe39_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe3_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe40_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal probe41_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe42_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe43_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal probe44_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe45_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe46_1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal probe47_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe48_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe49_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe4_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal probe50_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal probe51_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe52_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal probe5_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe6_1 : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal probe7_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe8_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe9_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN bd_1384_clk, FREQ_HZ 100000000, PHASE 0.000";
begin
  clk_1 <= clk;
  probe0_1(1 downto 0) <= probe0(1 downto 0);
  probe10_1(0) <= probe10(0);
  probe11_1(0) <= probe11(0);
  probe12_1(47 downto 0) <= probe12(47 downto 0);
  probe13_1(1 downto 0) <= probe13(1 downto 0);
  probe14_1(7 downto 0) <= probe14(7 downto 0);
  probe15_1(0) <= probe15(0);
  probe16_1(0) <= probe16(0);
  probe17_1(0) <= probe17(0);
  probe18_1(0) <= probe18(0);
  probe19_1(0) <= probe19(0);
  probe1_1(0) <= probe1(0);
  probe20_1(0) <= probe20(0);
  probe21_1(0) <= probe21(0);
  probe22_1(0) <= probe22(0);
  probe23_1(0) <= probe23(0);
  probe24_1(5 downto 0) <= probe24(5 downto 0);
  probe25_1(0) <= probe25(0);
  probe26_1(5 downto 0) <= probe26(5 downto 0);
  probe27_1(0) <= probe27(0);
  probe28_1(0) <= probe28(0);
  probe29_1(3 downto 0) <= probe29(3 downto 0);
  probe2_1(0) <= probe2(0);
  probe30_1(2 downto 0) <= probe30(2 downto 0);
  probe31_1(0) <= probe31(0);
  probe32_1(0) <= probe32(0);
  probe33_1(7 downto 0) <= probe33(7 downto 0);
  probe34_1(0) <= probe34(0);
  probe35_1(7 downto 0) <= probe35(7 downto 0);
  probe36_1(7 downto 0) <= probe36(7 downto 0);
  probe37_1(0) <= probe37(0);
  probe38_1(0) <= probe38(0);
  probe39_1(0) <= probe39(0);
  probe3_1(0) <= probe3(0);
  probe40_1(7 downto 0) <= probe40(7 downto 0);
  probe41_1(0) <= probe41(0);
  probe42_1(0) <= probe42(0);
  probe43_1(7 downto 0) <= probe43(7 downto 0);
  probe44_1(0) <= probe44(0);
  probe45_1(0) <= probe45(0);
  probe46_1(2 downto 0) <= probe46(2 downto 0);
  probe47_1(0) <= probe47(0);
  probe48_1(0) <= probe48(0);
  probe49_1(0) <= probe49(0);
  probe4_1(7 downto 0) <= probe4(7 downto 0);
  probe50_1(1 downto 0) <= probe50(1 downto 0);
  probe51_1(0) <= probe51(0);
  probe52_1(7 downto 0) <= probe52(7 downto 0);
  probe5_1(0) <= probe5(0);
  probe6_1(47 downto 0) <= probe6(47 downto 0);
  probe7_1(0) <= probe7(0);
  probe8_1(0) <= probe8(0);
  probe9_1(0) <= probe9(0);
ila_lib: component bd_1384_ila_lib_0
     port map (
      clk => clk_1,
      probe0(1 downto 0) => probe0_1(1 downto 0),
      probe1(0) => probe1_1(0),
      probe10(0) => probe10_1(0),
      probe11(0) => probe11_1(0),
      probe12(47 downto 0) => probe12_1(47 downto 0),
      probe13(1 downto 0) => probe13_1(1 downto 0),
      probe14(7 downto 0) => probe14_1(7 downto 0),
      probe15(0) => probe15_1(0),
      probe16(0) => probe16_1(0),
      probe17(0) => probe17_1(0),
      probe18(0) => probe18_1(0),
      probe19(0) => probe19_1(0),
      probe2(0) => probe2_1(0),
      probe20(0) => probe20_1(0),
      probe21(0) => probe21_1(0),
      probe22(0) => probe22_1(0),
      probe23(0) => probe23_1(0),
      probe24(5 downto 0) => probe24_1(5 downto 0),
      probe25(0) => probe25_1(0),
      probe26(5 downto 0) => probe26_1(5 downto 0),
      probe27(0) => probe27_1(0),
      probe28(0) => probe28_1(0),
      probe29(3 downto 0) => probe29_1(3 downto 0),
      probe3(0) => probe3_1(0),
      probe30(2 downto 0) => probe30_1(2 downto 0),
      probe31(0) => probe31_1(0),
      probe32(0) => probe32_1(0),
      probe33(7 downto 0) => probe33_1(7 downto 0),
      probe34(0) => probe34_1(0),
      probe35(7 downto 0) => probe35_1(7 downto 0),
      probe36(7 downto 0) => probe36_1(7 downto 0),
      probe37(0) => probe37_1(0),
      probe38(0) => probe38_1(0),
      probe39(0) => probe39_1(0),
      probe4(7 downto 0) => probe4_1(7 downto 0),
      probe40(7 downto 0) => probe40_1(7 downto 0),
      probe41(0) => probe41_1(0),
      probe42(0) => probe42_1(0),
      probe43(7 downto 0) => probe43_1(7 downto 0),
      probe44(0) => probe44_1(0),
      probe45(0) => probe45_1(0),
      probe46(2 downto 0) => probe46_1(2 downto 0),
      probe47(0) => probe47_1(0),
      probe48(0) => probe48_1(0),
      probe49(0) => probe49_1(0),
      probe5(0) => probe5_1(0),
      probe50(1 downto 0) => probe50_1(1 downto 0),
      probe51(0) => probe51_1(0),
      probe52(7 downto 0) => probe52_1(7 downto 0),
      probe6(47 downto 0) => probe6_1(47 downto 0),
      probe7(0) => probe7_1(0),
      probe8(0) => probe8_1(0),
      probe9(0) => probe9_1(0)
    );
end STRUCTURE;
