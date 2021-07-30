library ieee;
use ieee.std_logic_1164.all;
use work.EE_232_Q1.all;
use work.EE_232_PACKG.all;

entity FULL_ADDER is
	port( A, B, CI : in std_logic;
			S, CO : out std_logic);
end FULL_ADDER;

architecture STRUCTURE of FULL_ADDER is
	signal S0, C0, C1: std_logic;

begin
	HA0: HALF_ADDER port map(A, B, S0, C0);
	HA1: HALF_ADDER port map(S0, CI, S, C1);
	U0: OR_2 port map(C0, C1, CO);
end STRUCTURE;