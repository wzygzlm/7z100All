--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_1384_wrapper.bd
--Design : bd_1384_wrapper
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_1384_wrapper is
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
end bd_1384_wrapper;

architecture STRUCTURE of bd_1384_wrapper is
  component bd_1384 is
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
  end component bd_1384;
begin
bd_1384_i: component bd_1384
     port map (
      clk => clk,
      probe0(1 downto 0) => probe0(1 downto 0),
      probe1(0) => probe1(0),
      probe10(0) => probe10(0),
      probe11(0) => probe11(0),
      probe12(47 downto 0) => probe12(47 downto 0),
      probe13(1 downto 0) => probe13(1 downto 0),
      probe14(7 downto 0) => probe14(7 downto 0),
      probe15(0) => probe15(0),
      probe16(0) => probe16(0),
      probe17(0) => probe17(0),
      probe18(0) => probe18(0),
      probe19(0) => probe19(0),
      probe2(0) => probe2(0),
      probe20(0) => probe20(0),
      probe21(0) => probe21(0),
      probe22(0) => probe22(0),
      probe23(0) => probe23(0),
      probe24(5 downto 0) => probe24(5 downto 0),
      probe25(0) => probe25(0),
      probe26(5 downto 0) => probe26(5 downto 0),
      probe27(0) => probe27(0),
      probe28(0) => probe28(0),
      probe29(3 downto 0) => probe29(3 downto 0),
      probe3(0) => probe3(0),
      probe30(2 downto 0) => probe30(2 downto 0),
      probe31(0) => probe31(0),
      probe32(0) => probe32(0),
      probe33(7 downto 0) => probe33(7 downto 0),
      probe34(0) => probe34(0),
      probe35(7 downto 0) => probe35(7 downto 0),
      probe36(7 downto 0) => probe36(7 downto 0),
      probe37(0) => probe37(0),
      probe38(0) => probe38(0),
      probe39(0) => probe39(0),
      probe4(7 downto 0) => probe4(7 downto 0),
      probe40(7 downto 0) => probe40(7 downto 0),
      probe41(0) => probe41(0),
      probe42(0) => probe42(0),
      probe43(7 downto 0) => probe43(7 downto 0),
      probe44(0) => probe44(0),
      probe45(0) => probe45(0),
      probe46(2 downto 0) => probe46(2 downto 0),
      probe47(0) => probe47(0),
      probe48(0) => probe48(0),
      probe49(0) => probe49(0),
      probe5(0) => probe5(0),
      probe50(1 downto 0) => probe50(1 downto 0),
      probe51(0) => probe51(0),
      probe52(7 downto 0) => probe52(7 downto 0),
      probe6(47 downto 0) => probe6(47 downto 0),
      probe7(0) => probe7(0),
      probe8(0) => probe8(0),
      probe9(0) => probe9(0)
    );
end STRUCTURE;
