library ieee;
use ieee.std_logic_1164.all;
use work.EE_232_Q1.all;
entity mux_2_1 is 
port (x0,x1,s : In std_logic;
		y : out std_logic);
end entity;
architecture func of mux_2_1 is 
signal q,w,e : std_logic;
begin
UO : NOT_2 port map (s,q);
U1 : AND_2 port map (q,x0,w);
U2 : AND_2 port map (s,x1,e);
U3 : or_2 port map ( w,e,y);
end func;
