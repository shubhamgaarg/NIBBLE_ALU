LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

entity half_adder is 
port (I0, I1: IN std_logic;
S, C : OUT std_logic);
end half_adder;

architecture str of half_adder is 
component AND_2 is 
	port ( I0 ,I1:IN std_logic;
			O0 : OUT std_logic);
end component;
component XOR_2 is
port ( I0 , I1 : IN std_logic;
O0 :OUT std_logic);
end component;
begin
UO : XOR_2 port map(I0, I1, S);
U1 : AND_2 port map(I0, I1, C);
end str; 