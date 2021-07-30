library ieee;
use ieeE.std_logic_1164.all;
USE WORK.EE_232_Q1.ALL;
USE WORK.EE_232_PACKG.ALL;
entity multiply_4 is 
port (A, B : IN std_logic_vector(3 downto 0);
P0,P1,P2,P3,P4,P5,P6,P7 :OUT STD_LOGIC);
END ENTITY;
ARCHITECTURE FUNC OF MULTIPLY_4 IS
SIGNAL J1,J2,J3,J4,J5,J6,J7,J8,J9,J10,J11,J12,J13,J14,J15,K0,K1,K2,K3,K4,K5,K6,K7 : STD_LOGIC;
BEGIN 
U0  : AND_2 port map (A(0),B(0),P0);
U1  : AND_2 port map (A(1),B(0),J1);
U2  : AND_2 port map (A(2),B(0),J2);
U3  : AND_2 port map (A(3),B(0),J3);
U4  : AND_2 port map (A(0),B(1),J4);
U5  : AND_2 port map (A(1),B(1),J5);
U6  : AND_2 port map (A(2),B(1),J6);
U7  : AND_2 port map (A(3),B(1),J7);

F0  : FOUR_BIT_ADDER port map (J1,J2,J3,'0',J4,J5,J6,J7,'0',P1,K0,K1,K2,K3);

U8  : AND_2 port map (A(0),B(2),J8);
U9  : AND_2 port map (A(1),B(2),J9);
U10 : AND_2 port map (A(2),B(2),J10);
U011: AND_2 port map (A(3),B(2),J11);

F1  : FOUR_BIT_ADDER port map (K0,K1,K2,K3,J8,J9,J10,J11,'0',P2,K4,K5,K6,K7);

U12 : AND_2 port map (A(0),B(3),J12);
U13 : AND_2 port map (A(1),B(3),J13);
U14 : AND_2 port map (A(2),B(3),J14);
U15 : AND_2 port map (A(3),B(3),J15);

F2  : FOUR_BIT_ADDER port map (K4,K5,K6,K7,J12,J13,J14,J15,'0',P3,P4,P5,P6,P7);

END ARCHITECTURE;

