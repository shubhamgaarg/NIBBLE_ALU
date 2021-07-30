library IEEE;
use IEEE.std_logic_1164.all;

package EE_232_Q1 is

	component AND_2 is 
	port (I0 ,I1 :in std_logic;
			O0 : out std_logic);
	end component;
	
	component OR_2 is 
	port (I0 ,I1 :in std_logic;
			O0 : out std_logic);
	end component;
	
	component NOT_2 is 
	port (I0 :in std_logic;
			O0 : out std_logic);
			end component;
	
end package;