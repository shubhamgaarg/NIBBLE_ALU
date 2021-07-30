library ieee;
use ieee.std_logic_1164.all;

entity OR_2 is 
	port (I0 ,I1:IN std_logic;
			O0 : OUT std_logic);
end entity;

architecture FUNC of OR_2 is
begin
	O0 <=  I0 or I1;
END FUNC;