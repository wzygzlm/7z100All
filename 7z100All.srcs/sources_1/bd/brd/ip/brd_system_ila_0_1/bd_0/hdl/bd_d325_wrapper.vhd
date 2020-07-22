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
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end bd_d325_wrapper;

architecture STRUCTURE of bd_d325_wrapper is
  component bd_d325 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component bd_d325;
begin
bd_d325_i: component bd_d325
     port map (
      clk => clk,
      probe0(0) => probe0(0),
      probe1(0) => probe1(0)
    );
end STRUCTURE;
