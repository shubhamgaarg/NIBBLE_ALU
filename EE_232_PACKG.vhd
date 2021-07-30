LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
package EE_232_PACKG is

component XOR_2 is
port ( I0 , I1 : IN std_logic;
O0 :OUT std_logic);
end component;

component half_adder is 
port (I0, I1: IN std_logic;
S, C : OUT std_logic);
end component;

COMPONENT FULL_ADDER is
	port( A, B, CI : in std_logic;
			S, CO : out std_logic);
end COMPONENT;

COMPONENT FOUR_BIT_ADDER is
	port( A0, A1, A2, A3, B0, B1, B2, B3, CI0 : in std_logic;
			S0, S1, S2, S3, CO : out std_logic);
end COMPONENT;

component mux_2_1 is 
port (x0,x1,s : In std_logic;
		y : out std_logic);
end component;
COMPONENT mux_4_1 is 
port (x0,x1,x2,x3 : in std_logic ;
      S : in std_logic_vector(1 downto 0);
      y : out std_logic);
end COMPONENT;

COMPONENT mux_16_4 is 
PORT ( x0, x1, x2, x3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
s : IN STD_LOGIC_VECTOR(1 DOWNTO 0) ;
y : OUT STD_LOGIC_VECTOR(3 DOWNTO 0) ) ;
END COMPONENT ;

COMPONENT SUB_4 is 
port (A0,A1,A2,A3,B0,B1,B2,B3,AS : IN std_logic;
S0,S1,S2,S3,CO :OUT STD_LOGIC);
END COMPONENT;

component multiply_4 is 
port (A, B : IN std_logic_vector(3 downto 0);
P0,P1,P2,P3,P4,P5,P6,P7 :OUT STD_LOGIC);
END component;

COMPONENT MUX_8_1 IS 
PORT (X0, X1, X2, X3, X4, X5, X6, X7 : IN  STD_LOGIC;
      S : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		Y : OUT STD_LOGIC);
END COMPONENT;

end package;
