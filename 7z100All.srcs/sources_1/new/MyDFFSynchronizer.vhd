----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/29/2020 08:04:37 PM
-- Design Name: 
-- Module Name: MyDFFSynchronizer - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

library ieee;
use ieee.std_logic_1164.all;

-- Synchronize signal to new clock domain, represented by SyncClock_CI,
-- by using two Flip-Flops in series, to avoid meta-stability problems.
entity MyDFFSynchronizer is
	generic(
		SIZE        : integer   := 1;
		RESET_VALUE : std_logic := '0');
	port(
		SyncClock_CI    : in  std_logic;
		Reset_RI        : in  std_logic;

		-- Signal(s) to synchronize in and out.
		SignalToSync_SI : in  std_logic_vector(SIZE - 1 downto 0);
		SyncedSignal_SO : out std_logic_vector(SIZE - 1 downto 0));
end MyDFFSynchronizer;

architecture Behavioral of MyDFFSynchronizer is
	signal SyncSignalDemetFF_S, SyncSignalSyncFF_S : std_logic_vector(SIZE - 1 downto 0);
begin
	-- Output the result of the sync FF directly.
	SyncedSignal_SO <= SyncSignalSyncFF_S;

	-- Change state on clock edge (synchronous).
	registerUpdate : process(SyncClock_CI, Reset_RI)
	begin
		if Reset_RI = '1' then          -- asynchronous reset (active-high for FPGAs)
			if RESET_VALUE = '1' then
				SyncSignalSyncFF_S  <= (others => '1');
				SyncSignalDemetFF_S <= (others => '1');
			else
				SyncSignalSyncFF_S  <= (others => '0');
				SyncSignalDemetFF_S <= (others => '0');
			end if;
		elsif rising_edge(SyncClock_CI) then
			SyncSignalSyncFF_S  <= SyncSignalDemetFF_S;
			SyncSignalDemetFF_S <= SignalToSync_SI;
		end if;
	end process registerUpdate;
end Behavioral;

