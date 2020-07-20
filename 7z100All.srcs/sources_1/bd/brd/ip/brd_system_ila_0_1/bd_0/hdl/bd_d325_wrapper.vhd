--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_d325_wrapper.bd
--Design : bd_d325_wrapper
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_d325_wrapper is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe12 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe16 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe17 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe18 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe19 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe20 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe21 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe22 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe23 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe24 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe25 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe26 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe27 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe28 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe29 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe30 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe31 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe32 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe33 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe34 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe35 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe36 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe37 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    probe38 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe39 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe40 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe41 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe42 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end bd_d325_wrapper;

architecture STRUCTURE of bd_d325_wrapper is
  component bd_d325 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe12 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe16 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe17 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe18 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe19 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe20 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe21 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe22 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe23 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe24 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe25 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe26 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe27 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe28 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe29 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe30 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe31 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe32 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe33 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe34 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe35 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe36 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe37 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    probe38 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe39 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe40 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe41 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe42 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component bd_d325;
begin
bd_d325_i: component bd_d325
     port map (
      clk => clk,
      probe0(0) => probe0(0),
      probe1(10 downto 0) => probe1(10 downto 0),
      probe10(0) => probe10(0),
      probe11(0) => probe11(0),
      probe12(31 downto 0) => probe12(31 downto 0),
      probe13(63 downto 0) => probe13(63 downto 0),
      probe14(0) => probe14(0),
      probe15(0) => probe15(0),
      probe16(0) => probe16(0),
      probe17(0) => probe17(0),
      probe18(15 downto 0) => probe18(15 downto 0),
      probe19(63 downto 0) => probe19(63 downto 0),
      probe2(0) => probe2(0),
      probe20(0) => probe20(0),
      probe21(0) => probe21(0),
      probe22(15 downto 0) => probe22(15 downto 0),
      probe23(15 downto 0) => probe23(15 downto 0),
      probe24(63 downto 0) => probe24(63 downto 0),
      probe25(63 downto 0) => probe25(63 downto 0),
      probe26(0) => probe26(0),
      probe27(15 downto 0) => probe27(15 downto 0),
      probe28(15 downto 0) => probe28(15 downto 0),
      probe29(0) => probe29(0),
      probe3(0) => probe3(0),
      probe30(15 downto 0) => probe30(15 downto 0),
      probe31(0) => probe31(0),
      probe32(0) => probe32(0),
      probe33(15 downto 0) => probe33(15 downto 0),
      probe34(63 downto 0) => probe34(63 downto 0),
      probe35(7 downto 0) => probe35(7 downto 0),
      probe36(0) => probe36(0),
      probe37(9 downto 0) => probe37(9 downto 0),
      probe38(0) => probe38(0),
      probe39(0) => probe39(0),
      probe4(0) => probe4(0),
      probe40(0) => probe40(0),
      probe41(0) => probe41(0),
      probe42(15 downto 0) => probe42(15 downto 0),
      probe5(7 downto 0) => probe5(7 downto 0),
      probe6(13 downto 0) => probe6(13 downto 0),
      probe7(0) => probe7(0),
      probe8(0) => probe8(0),
      probe9(0) => probe9(0)
    );
end STRUCTURE;
