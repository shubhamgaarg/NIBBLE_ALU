LIBRARY IEEE;
USE IEee.std_logic_1164.all;
use work.ee_232_packg.all;

entity mux_16_4 is 

PORT ( X0, X1, X2, X3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
S : IN STD_LOGIC_VECTOR(1 DOWNTO 0) ;
Y : OUT STD_LOGIC_VECTOR(3 DOWNTO 0) ) ;

END mux_16_4 ;
ARCHITECTURE FUNC OF mux_16_4 IS
BEGIN
M0 : MUX_4_1 PORT MAP (X0(0), X1(0), X2(0), X3(0), S, Y(0));
M1 : MUX_4_1 PORT MAP (X0(1), X1(1), X2(1), X3(1), S, Y(1));
M2 : MUX_4_1 PORT MAP (X0(2), X1(2), X2(2), X3(2), S, Y(2));
M3 : MUX_4_1 PORT MAP (X0(3), X1(3), X2(3), X3(3), S, Y(3));

END FUNC ;

