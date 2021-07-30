library ieee;
use ieee.std_logic_1164.all;

entity FOUR_BIT_ADDER is
	port( A0, A1, A2, A3, B0, B1, B2, B3, CI0 : in std_logic;
			S0, S1, S2, S3, CO : out std_logic);
end FOUR_BIT_ADDER;

architecture STRUCTURE of FOUR_BIT_ADDER is
	signal CI1, CI2, CI3: std_logic;
	COMPONENT FULL_ADDER is
	port( A, B, CI : in std_logic;
			S, CO : out std_logic);
end COMPONENT;

begin

	FA0: FULL_ADDER port map(A0, B0, CI0, S0, CI1);
	FA1: FULL_ADDER port map(A1, B1, CI1, S1, CI2);
	FA2: FULL_ADDER port map(A2, B2, CI2, S2, CI3);
	FA3: FULL_ADDER port map(A3, B3, CI3, S3, CO);
	
end STRUCTURE;