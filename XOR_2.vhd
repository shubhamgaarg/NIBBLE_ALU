LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.EE_232_Q1.ALL;
ENTITY XOR_2 IS 
PORT (I0, I1 : IN STD_LOGIC;
O0 : OUT STD_LOGIC);
END ENTITY;
ARCHITECTURE STR OF XOR_2 IS 
signal a1, a2, a3, a4 : std_logic;
begin
U0 : NOT_2 port map (I0, a1);
U1 : NOT_2 port map (I1, a2);
U2 : AND_2 port map (a1, I1, a3);
U3 : AND_2 port map (I0, a2, a4);
U4 : OR_2  port map (a3, a4, O0);
end STR;