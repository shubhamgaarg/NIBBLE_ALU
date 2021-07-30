library ieee;
use ieee.std_logic_1164.all;

entity AND_2 is 
	port (I0 ,I1:IN std_logic;
			O0 : OUT std_logic);
end entity;

architecture FUNC of AND_2 is
begin
	O0 <=  I0 and I1;
END FUNC;