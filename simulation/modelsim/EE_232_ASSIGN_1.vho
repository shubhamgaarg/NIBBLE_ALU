-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/29/2020 17:55:40"

-- 
-- Device: Altera EP2C5T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU_4 IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	S : IN std_logic_vector(2 DOWNTO 0);
	F : OUT std_logic_vector(3 DOWNTO 0);
	O : OUT std_logic
	);
END ALU_4;

-- Design Ports Information
-- F[0]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- F[1]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- F[2]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- F[3]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- O	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S[0]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- S[1]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- S[2]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ALU_4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_F : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_O : std_logic;
SIGNAL \M5|U3|O0~0_combout\ : std_logic;
SIGNAL \A3|F0|FA1|U0|O0~0_combout\ : std_logic;
SIGNAL \A3|F0|FA1|U0|O0~1_combout\ : std_logic;
SIGNAL \A3|F0|FA2|HA1|UO|U4|O0~0_combout\ : std_logic;
SIGNAL \A2|F0|FA3|HA1|UO|U4|O0~0_combout\ : std_logic;
SIGNAL \AO|F0|FA2|HA0|UO|U4|O0~0_combout\ : std_logic;
SIGNAL \AO|F0|FA2|HA0|U1|O0~combout\ : std_logic;
SIGNAL \AO|F0|FA3|HA0|UO|U4|O0~0_combout\ : std_logic;
SIGNAL \AO|F0|FA3|HA1|UO|U4|O0~0_combout\ : std_logic;
SIGNAL \M6|M2|U3|O0~0_combout\ : std_logic;
SIGNAL \M6|M2|U3|O0~1_combout\ : std_logic;
SIGNAL \M6|M2|U3|O0~2_combout\ : std_logic;
SIGNAL \M6|M2|U3|O0~3_combout\ : std_logic;
SIGNAL \A2|F0|FA2|U0|O0~combout\ : std_logic;
SIGNAL \A3|F2|FA1|HA1|UO|U4|O0~0_combout\ : std_logic;
SIGNAL \M2|U3|O0~0_combout\ : std_logic;
SIGNAL \M2|U3|O0~1_combout\ : std_logic;
SIGNAL \M3|U3|O0~0_combout\ : std_logic;
SIGNAL \A3|F0|FA0|HA0|UO|U4|O0~0_combout\ : std_logic;
SIGNAL \M3|U3|O0~1_combout\ : std_logic;
SIGNAL \A2|F0|FA0|U0|O0~0_combout\ : std_logic;
SIGNAL \A2|F0|FA1|HA1|UO|U4|O0~0_combout\ : std_logic;
SIGNAL \AO|F0|FA0|U0|O0~0_combout\ : std_logic;
SIGNAL \AO|F0|FA1|HA1|UO|U4|O0~0_combout\ : std_logic;
SIGNAL \M3|U3|O0~2_combout\ : std_logic;
SIGNAL \M3|U3|O0~4_combout\ : std_logic;
SIGNAL \U1|O0~combout\ : std_logic;
SIGNAL \M3|U3|O0~5_combout\ : std_logic;
SIGNAL \M3|U3|O0~3_combout\ : std_logic;
SIGNAL \U2|O0~combout\ : std_logic;
SIGNAL \A2|F0|FA1|U0|O0~combout\ : std_logic;
SIGNAL \A2|F0|FA2|HA1|UO|U4|O0~0_combout\ : std_logic;
SIGNAL \A3|F1|FA0|HA0|UO|U4|O0~0_combout\ : std_logic;
SIGNAL \A3|F1|FA0|HA0|UO|U4|O0~1_combout\ : std_logic;
SIGNAL \M4|U3|O0~2_combout\ : std_logic;
SIGNAL \M4|U3|O0~3_combout\ : std_logic;
SIGNAL \AO|F0|FA1|U0|O0~combout\ : std_logic;
SIGNAL \AO|F0|FA2|HA1|UO|U4|O0~0_combout\ : std_logic;
SIGNAL \M4|U3|O0~0_combout\ : std_logic;
SIGNAL \M4|U3|O0~1_combout\ : std_logic;
SIGNAL \A2|F0|FA3|HA1|UO|U4|O0~1_combout\ : std_logic;
SIGNAL \M5|U3|O0~2_combout\ : std_logic;
SIGNAL \A3|U9|O0~combout\ : std_logic;
SIGNAL \A3|U12|O0~combout\ : std_logic;
SIGNAL \A3|F1|FA0|HA0|U1|O0~combout\ : std_logic;
SIGNAL \A3|F2|FA0|HA0|UO|U4|O0~0_combout\ : std_logic;
SIGNAL \M5|U3|O0~1_combout\ : std_logic;
SIGNAL \U3|O0~combout\ : std_logic;
SIGNAL \M5|U3|O0~3_combout\ : std_logic;
SIGNAL \M6|M2|U3|O0~6_combout\ : std_logic;
SIGNAL \M6|M2|U3|O0~4_combout\ : std_logic;
SIGNAL \M6|M2|U3|O0~5_combout\ : std_logic;
SIGNAL \A3|U3|O0~combout\ : std_logic;
SIGNAL \A3|F0|FA2|U0|O0~0_combout\ : std_logic;
SIGNAL \A3|F2|FA1|HA1|UO|U4|O0~1_combout\ : std_logic;
SIGNAL \A3|F2|FA1|HA1|UO|U4|O0~2_combout\ : std_logic;
SIGNAL \M6|M2|U3|O0~7_combout\ : std_logic;
SIGNAL \S~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
ww_S <= S;
F <= ww_F;
O <= ww_O;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X10_Y7_N8
\M5|U3|O0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M5|U3|O0~0_combout\ = (\S~combout\(1) & (\S~combout\(0))) # (!\S~combout\(1) & ((\B~combout\(3) & ((!\A~combout\(3)) # (!\S~combout\(0)))) # (!\B~combout\(3) & ((\A~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(0),
	datab => \B~combout\(3),
	datac => \S~combout\(1),
	datad => \A~combout\(3),
	combout => \M5|U3|O0~0_combout\);

-- Location: LCCOMB_X8_Y9_N10
\A3|F0|FA1|U0|O0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A3|F0|FA1|U0|O0~0_combout\ = (\B~combout\(0) & \A~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datad => \A~combout\(1),
	combout => \A3|F0|FA1|U0|O0~0_combout\);

-- Location: LCCOMB_X8_Y9_N20
\A3|F0|FA1|U0|O0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \A3|F0|FA1|U0|O0~1_combout\ = (\A3|F0|FA1|U0|O0~0_combout\ & (\B~combout\(1) & ((\A~combout\(0)) # (\A~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|F0|FA1|U0|O0~0_combout\,
	datab => \B~combout\(1),
	datac => \A~combout\(0),
	datad => \A~combout\(2),
	combout => \A3|F0|FA1|U0|O0~1_combout\);

-- Location: LCCOMB_X8_Y9_N24
\A3|F0|FA2|HA1|UO|U4|O0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A3|F0|FA2|HA1|UO|U4|O0~0_combout\ = \A3|F0|FA1|U0|O0~1_combout\ $ (\A3|U3|O0~combout\ $ (((\B~combout\(1) & \A~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|F0|FA1|U0|O0~1_combout\,
	datab => \B~combout\(1),
	datac => \A3|U3|O0~combout\,
	datad => \A~combout\(2),
	combout => \A3|F0|FA2|HA1|UO|U4|O0~0_combout\);

-- Location: LCCOMB_X9_Y6_N10
\A2|F0|FA3|HA1|UO|U4|O0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A2|F0|FA3|HA1|UO|U4|O0~0_combout\ = (\B~combout\(2) & ((\A2|F0|FA1|U0|O0~combout\ & (!\S~combout\(1))) # (!\A2|F0|FA1|U0|O0~combout\ & ((\A~combout\(2)))))) # (!\B~combout\(2) & ((\A2|F0|FA1|U0|O0~combout\ & ((\A~combout\(2)))) # 
-- (!\A2|F0|FA1|U0|O0~combout\ & (\S~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A2|F0|FA1|U0|O0~combout\,
	datac => \S~combout\(1),
	datad => \A~combout\(2),
	combout => \A2|F0|FA3|HA1|UO|U4|O0~0_combout\);

-- Location: LCCOMB_X9_Y6_N20
\AO|F0|FA2|HA0|UO|U4|O0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \AO|F0|FA2|HA0|UO|U4|O0~0_combout\ = \A~combout\(2) $ (\S~combout\(0) $ (\B~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(2),
	datac => \S~combout\(0),
	datad => \B~combout\(2),
	combout => \AO|F0|FA2|HA0|UO|U4|O0~0_combout\);

-- Location: LCCOMB_X9_Y6_N6
\AO|F0|FA2|HA0|U1|O0\ : cycloneii_lcell_comb
-- Equation(s):
-- \AO|F0|FA2|HA0|U1|O0~combout\ = (\A~combout\(2) & (\S~combout\(0) $ (\B~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(2),
	datac => \S~combout\(0),
	datad => \B~combout\(2),
	combout => \AO|F0|FA2|HA0|U1|O0~combout\);

-- Location: LCCOMB_X10_Y7_N28
\AO|F0|FA3|HA0|UO|U4|O0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \AO|F0|FA3|HA0|UO|U4|O0~0_combout\ = \B~combout\(3) $ (\S~combout\(0) $ (\A~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(3),
	datac => \S~combout\(0),
	datad => \A~combout\(3),
	combout => \AO|F0|FA3|HA0|UO|U4|O0~0_combout\);

-- Location: LCCOMB_X10_Y7_N14
\AO|F0|FA3|HA1|UO|U4|O0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \AO|F0|FA3|HA1|UO|U4|O0~0_combout\ = \AO|F0|FA3|HA0|UO|U4|O0~0_combout\ $ (((\AO|F0|FA2|HA0|U1|O0~combout\) # ((\AO|F0|FA1|U0|O0~combout\ & \AO|F0|FA2|HA0|UO|U4|O0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AO|F0|FA1|U0|O0~combout\,
	datab => \AO|F0|FA2|HA0|U1|O0~combout\,
	datac => \AO|F0|FA2|HA0|UO|U4|O0~0_combout\,
	datad => \AO|F0|FA3|HA0|UO|U4|O0~0_combout\,
	combout => \AO|F0|FA3|HA1|UO|U4|O0~0_combout\);

-- Location: LCCOMB_X10_Y7_N30
\M6|M2|U3|O0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M6|M2|U3|O0~0_combout\ = (\A~combout\(3) & (\B~combout\(3) $ (\S~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(3),
	datac => \S~combout\(0),
	datad => \A~combout\(3),
	combout => \M6|M2|U3|O0~0_combout\);

-- Location: LCCOMB_X10_Y7_N24
\M6|M2|U3|O0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \M6|M2|U3|O0~1_combout\ = (!\S~combout\(1) & (!\S~combout\(2) & ((\AO|F0|FA3|HA0|UO|U4|O0~0_combout\) # (\M6|M2|U3|O0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AO|F0|FA3|HA0|UO|U4|O0~0_combout\,
	datab => \M6|M2|U3|O0~0_combout\,
	datac => \S~combout\(1),
	datad => \S~combout\(2),
	combout => \M6|M2|U3|O0~1_combout\);

-- Location: LCCOMB_X10_Y7_N2
\M6|M2|U3|O0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \M6|M2|U3|O0~2_combout\ = (\AO|F0|FA2|HA0|U1|O0~combout\) # ((\A~combout\(3) & (\S~combout\(0) $ (\B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(0),
	datab => \AO|F0|FA2|HA0|U1|O0~combout\,
	datac => \B~combout\(3),
	datad => \A~combout\(3),
	combout => \M6|M2|U3|O0~2_combout\);

-- Location: LCCOMB_X10_Y7_N20
\M6|M2|U3|O0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \M6|M2|U3|O0~3_combout\ = (\M6|M2|U3|O0~1_combout\ & ((\M6|M2|U3|O0~2_combout\) # ((\AO|F0|FA2|HA0|UO|U4|O0~0_combout\ & \AO|F0|FA1|U0|O0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M6|M2|U3|O0~1_combout\,
	datab => \AO|F0|FA2|HA0|UO|U4|O0~0_combout\,
	datac => \AO|F0|FA1|U0|O0~combout\,
	datad => \M6|M2|U3|O0~2_combout\,
	combout => \M6|M2|U3|O0~3_combout\);

-- Location: LCCOMB_X9_Y6_N24
\A2|F0|FA2|U0|O0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A2|F0|FA2|U0|O0~combout\ = (\B~combout\(2) & ((\A2|F0|FA1|U0|O0~combout\) # (\S~combout\(1) $ (\A~combout\(2))))) # (!\B~combout\(2) & (\A2|F0|FA1|U0|O0~combout\ & (\S~combout\(1) $ (\A~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A2|F0|FA1|U0|O0~combout\,
	datac => \S~combout\(1),
	datad => \A~combout\(2),
	combout => \A2|F0|FA2|U0|O0~combout\);

-- Location: LCCOMB_X8_Y9_N6
\A3|F2|FA1|HA1|UO|U4|O0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A3|F2|FA1|HA1|UO|U4|O0~0_combout\ = (\A~combout\(2) & (\B~combout\(2) $ (((\B~combout\(1) & \A~combout\(3)))))) # (!\A~combout\(2) & (\B~combout\(1) & ((\A~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \B~combout\(1),
	datac => \B~combout\(2),
	datad => \A~combout\(3),
	combout => \A3|F2|FA1|HA1|UO|U4|O0~0_combout\);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\S[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_S(0),
	combout => \S~combout\(0));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\S[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_S(2),
	combout => \S~combout\(2));

-- Location: LCCOMB_X8_Y5_N4
\M2|U3|O0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2|U3|O0~0_combout\ = (\S~combout\(0) & (!\S~combout\(1))) # (!\S~combout\(0) & (\S~combout\(2) & (\S~combout\(1) $ (\B~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(1),
	datab => \B~combout\(0),
	datac => \S~combout\(0),
	datad => \S~combout\(2),
	combout => \M2|U3|O0~0_combout\);

-- Location: LCCOMB_X8_Y5_N14
\M2|U3|O0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \M2|U3|O0~1_combout\ = (\A~combout\(0) & (\B~combout\(0) $ (\S~combout\(0) $ (!\M2|U3|O0~0_combout\)))) # (!\A~combout\(0) & ((\B~combout\(0) & ((\M2|U3|O0~0_combout\) # (!\S~combout\(0)))) # (!\B~combout\(0) & (!\S~combout\(0) & \M2|U3|O0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \A~combout\(0),
	datac => \S~combout\(0),
	datad => \M2|U3|O0~0_combout\,
	combout => \M2|U3|O0~1_combout\);

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: LCCOMB_X8_Y5_N8
\M3|U3|O0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M3|U3|O0~0_combout\ = (\S~combout\(1) & (((\S~combout\(0))))) # (!\S~combout\(1) & ((\A~combout\(1) & ((!\S~combout\(0)) # (!\B~combout\(1)))) # (!\A~combout\(1) & (\B~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(1),
	datab => \A~combout\(1),
	datac => \B~combout\(1),
	datad => \S~combout\(0),
	combout => \M3|U3|O0~0_combout\);

-- Location: LCCOMB_X8_Y5_N10
\A3|F0|FA0|HA0|UO|U4|O0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A3|F0|FA0|HA0|UO|U4|O0~0_combout\ = (\B~combout\(1) & (\A~combout\(0) $ (((\B~combout\(0) & \A~combout\(1)))))) # (!\B~combout\(1) & (\B~combout\(0) & (\A~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \B~combout\(0),
	datac => \A~combout\(1),
	datad => \A~combout\(0),
	combout => \A3|F0|FA0|HA0|UO|U4|O0~0_combout\);

-- Location: LCCOMB_X8_Y5_N12
\M3|U3|O0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \M3|U3|O0~1_combout\ = (\S~combout\(1) & ((\M3|U3|O0~0_combout\ & ((\A3|F0|FA0|HA0|UO|U4|O0~0_combout\))) # (!\M3|U3|O0~0_combout\ & (!\A~combout\(1))))) # (!\S~combout\(1) & (((\M3|U3|O0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(1),
	datab => \A~combout\(1),
	datac => \M3|U3|O0~0_combout\,
	datad => \A3|F0|FA0|HA0|UO|U4|O0~0_combout\,
	combout => \M3|U3|O0~1_combout\);

-- Location: LCCOMB_X8_Y5_N16
\A2|F0|FA0|U0|O0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A2|F0|FA0|U0|O0~0_combout\ = (\A~combout\(0) & ((\B~combout\(0)))) # (!\A~combout\(0) & (\S~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(1),
	datab => \A~combout\(0),
	datac => \B~combout\(0),
	combout => \A2|F0|FA0|U0|O0~0_combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\S[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_S(1),
	combout => \S~combout\(1));

-- Location: LCCOMB_X8_Y5_N18
\A2|F0|FA1|HA1|UO|U4|O0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A2|F0|FA1|HA1|UO|U4|O0~0_combout\ = \B~combout\(1) $ (\A~combout\(1) $ (\A2|F0|FA0|U0|O0~0_combout\ $ (\S~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(1),
	datac => \A2|F0|FA0|U0|O0~0_combout\,
	datad => \S~combout\(1),
	combout => \A2|F0|FA1|HA1|UO|U4|O0~0_combout\);

-- Location: LCCOMB_X8_Y5_N30
\AO|F0|FA0|U0|O0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \AO|F0|FA0|U0|O0~0_combout\ = (\B~combout\(0) & ((\A~combout\(0)))) # (!\B~combout\(0) & (\S~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(0),
	datac => \S~combout\(0),
	datad => \A~combout\(0),
	combout => \AO|F0|FA0|U0|O0~0_combout\);

-- Location: LCCOMB_X8_Y5_N24
\AO|F0|FA1|HA1|UO|U4|O0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \AO|F0|FA1|HA1|UO|U4|O0~0_combout\ = \B~combout\(1) $ (\A~combout\(1) $ (\S~combout\(0) $ (\AO|F0|FA0|U0|O0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(1),
	datac => \S~combout\(0),
	datad => \AO|F0|FA0|U0|O0~0_combout\,
	combout => \AO|F0|FA1|HA1|UO|U4|O0~0_combout\);

-- Location: LCCOMB_X8_Y5_N22
\M3|U3|O0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \M3|U3|O0~2_combout\ = (\S~combout\(2)) # ((\S~combout\(1) & \S~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(1),
	datac => \S~combout\(0),
	datad => \S~combout\(2),
	combout => \M3|U3|O0~2_combout\);

-- Location: LCCOMB_X8_Y5_N26
\M3|U3|O0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \M3|U3|O0~4_combout\ = (\M3|U3|O0~3_combout\ & ((\A2|F0|FA1|HA1|UO|U4|O0~0_combout\) # ((\M3|U3|O0~2_combout\)))) # (!\M3|U3|O0~3_combout\ & (((\AO|F0|FA1|HA1|UO|U4|O0~0_combout\ & !\M3|U3|O0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|U3|O0~3_combout\,
	datab => \A2|F0|FA1|HA1|UO|U4|O0~0_combout\,
	datac => \AO|F0|FA1|HA1|UO|U4|O0~0_combout\,
	datad => \M3|U3|O0~2_combout\,
	combout => \M3|U3|O0~4_combout\);

-- Location: LCCOMB_X8_Y5_N20
\U1|O0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|O0~combout\ = (\A~combout\(1) & \B~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(1),
	datac => \B~combout\(1),
	combout => \U1|O0~combout\);

-- Location: LCCOMB_X8_Y5_N6
\M3|U3|O0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \M3|U3|O0~5_combout\ = (\M3|U3|O0~4_combout\ & (((\U1|O0~combout\) # (!\M3|U3|O0~2_combout\)))) # (!\M3|U3|O0~4_combout\ & (\M3|U3|O0~1_combout\ & ((\M3|U3|O0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|U3|O0~1_combout\,
	datab => \M3|U3|O0~4_combout\,
	datac => \U1|O0~combout\,
	datad => \M3|U3|O0~2_combout\,
	combout => \M3|U3|O0~5_combout\);

-- Location: LCCOMB_X8_Y5_N28
\M3|U3|O0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \M3|U3|O0~3_combout\ = (\S~combout\(1) & !\S~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S~combout\(1),
	datad => \S~combout\(2),
	combout => \M3|U3|O0~3_combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: LCCOMB_X9_Y6_N22
\U2|O0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U2|O0~combout\ = (\A~combout\(2) & \B~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(2),
	datad => \B~combout\(2),
	combout => \U2|O0~combout\);

-- Location: LCCOMB_X8_Y5_N0
\A2|F0|FA1|U0|O0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A2|F0|FA1|U0|O0~combout\ = (\B~combout\(1) & ((\A2|F0|FA0|U0|O0~0_combout\) # (\A~combout\(1) $ (\S~combout\(1))))) # (!\B~combout\(1) & (\A2|F0|FA0|U0|O0~0_combout\ & (\A~combout\(1) $ (\S~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(1),
	datac => \A2|F0|FA0|U0|O0~0_combout\,
	datad => \S~combout\(1),
	combout => \A2|F0|FA1|U0|O0~combout\);

-- Location: LCCOMB_X9_Y6_N8
\A2|F0|FA2|HA1|UO|U4|O0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A2|F0|FA2|HA1|UO|U4|O0~0_combout\ = \B~combout\(2) $ (\A2|F0|FA1|U0|O0~combout\ $ (\S~combout\(1) $ (\A~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A2|F0|FA1|U0|O0~combout\,
	datac => \S~combout\(1),
	datad => \A~combout\(2),
	combout => \A2|F0|FA2|HA1|UO|U4|O0~0_combout\);

-- Location: LCCOMB_X8_Y9_N8
\A3|F1|FA0|HA0|UO|U4|O0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A3|F1|FA0|HA0|UO|U4|O0~0_combout\ = (!\A~combout\(1)) # (!\B~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(1),
	datad => \A~combout\(1),
	combout => \A3|F1|FA0|HA0|UO|U4|O0~0_combout\);

-- Location: LCCOMB_X8_Y9_N2
\A3|F1|FA0|HA0|UO|U4|O0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \A3|F1|FA0|HA0|UO|U4|O0~1_combout\ = (\B~combout\(0) & (\A~combout\(2) $ (((!\A3|F1|FA0|HA0|UO|U4|O0~0_combout\ & !\A~combout\(0)))))) # (!\B~combout\(0) & (!\A3|F1|FA0|HA0|UO|U4|O0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \A3|F1|FA0|HA0|UO|U4|O0~0_combout\,
	datac => \A~combout\(0),
	datad => \A~combout\(2),
	combout => \A3|F1|FA0|HA0|UO|U4|O0~1_combout\);

-- Location: LCCOMB_X8_Y9_N28
\M4|U3|O0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \M4|U3|O0~2_combout\ = (\S~combout\(1) & (\A3|F1|FA0|HA0|UO|U4|O0~1_combout\ $ (((\A~combout\(0) & \B~combout\(2)))))) # (!\S~combout\(1) & (((\B~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(1),
	datab => \A~combout\(0),
	datac => \B~combout\(2),
	datad => \A3|F1|FA0|HA0|UO|U4|O0~1_combout\,
	combout => \M4|U3|O0~2_combout\);

-- Location: LCCOMB_X8_Y9_N22
\M4|U3|O0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \M4|U3|O0~3_combout\ = (\A~combout\(2) & (\S~combout\(1) $ (((!\S~combout\(0)) # (!\M4|U3|O0~2_combout\))))) # (!\A~combout\(2) & ((\M4|U3|O0~2_combout\) # ((\S~combout\(1) & !\S~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(1),
	datab => \M4|U3|O0~2_combout\,
	datac => \S~combout\(0),
	datad => \A~combout\(2),
	combout => \M4|U3|O0~3_combout\);

-- Location: LCCOMB_X8_Y5_N2
\AO|F0|FA1|U0|O0\ : cycloneii_lcell_comb
-- Equation(s):
-- \AO|F0|FA1|U0|O0~combout\ = (\A~combout\(1) & ((\AO|F0|FA0|U0|O0~0_combout\) # (\B~combout\(1) $ (\S~combout\(0))))) # (!\A~combout\(1) & (\AO|F0|FA0|U0|O0~0_combout\ & (\B~combout\(1) $ (\S~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(1),
	datac => \S~combout\(0),
	datad => \AO|F0|FA0|U0|O0~0_combout\,
	combout => \AO|F0|FA1|U0|O0~combout\);

-- Location: LCCOMB_X9_Y6_N26
\AO|F0|FA2|HA1|UO|U4|O0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \AO|F0|FA2|HA1|UO|U4|O0~0_combout\ = \B~combout\(2) $ (\AO|F0|FA1|U0|O0~combout\ $ (\S~combout\(0) $ (\A~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \AO|F0|FA1|U0|O0~combout\,
	datac => \S~combout\(0),
	datad => \A~combout\(2),
	combout => \AO|F0|FA2|HA1|UO|U4|O0~0_combout\);

-- Location: LCCOMB_X9_Y6_N28
\M4|U3|O0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M4|U3|O0~0_combout\ = (\M3|U3|O0~3_combout\ & (((\M3|U3|O0~2_combout\)))) # (!\M3|U3|O0~3_combout\ & ((\M3|U3|O0~2_combout\ & (\M4|U3|O0~3_combout\)) # (!\M3|U3|O0~2_combout\ & ((\AO|F0|FA2|HA1|UO|U4|O0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|U3|O0~3_combout\,
	datab => \M4|U3|O0~3_combout\,
	datac => \M3|U3|O0~2_combout\,
	datad => \AO|F0|FA2|HA1|UO|U4|O0~0_combout\,
	combout => \M4|U3|O0~0_combout\);

-- Location: LCCOMB_X9_Y6_N0
\M4|U3|O0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \M4|U3|O0~1_combout\ = (\M3|U3|O0~3_combout\ & ((\M4|U3|O0~0_combout\ & (\U2|O0~combout\)) # (!\M4|U3|O0~0_combout\ & ((\A2|F0|FA2|HA1|UO|U4|O0~0_combout\))))) # (!\M3|U3|O0~3_combout\ & (((\M4|U3|O0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|U3|O0~3_combout\,
	datab => \U2|O0~combout\,
	datac => \A2|F0|FA2|HA1|UO|U4|O0~0_combout\,
	datad => \M4|U3|O0~0_combout\,
	combout => \M4|U3|O0~1_combout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: LCCOMB_X10_Y7_N26
\A2|F0|FA3|HA1|UO|U4|O0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \A2|F0|FA3|HA1|UO|U4|O0~1_combout\ = \A2|F0|FA3|HA1|UO|U4|O0~0_combout\ $ (\B~combout\(3) $ (\A~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|F0|FA3|HA1|UO|U4|O0~0_combout\,
	datac => \B~combout\(3),
	datad => \A~combout\(3),
	combout => \A2|F0|FA3|HA1|UO|U4|O0~1_combout\);

-- Location: LCCOMB_X10_Y7_N16
\M5|U3|O0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \M5|U3|O0~2_combout\ = (\M3|U3|O0~2_combout\ & (((\M3|U3|O0~3_combout\)))) # (!\M3|U3|O0~2_combout\ & ((\M3|U3|O0~3_combout\ & ((\A2|F0|FA3|HA1|UO|U4|O0~1_combout\))) # (!\M3|U3|O0~3_combout\ & (\AO|F0|FA3|HA1|UO|U4|O0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AO|F0|FA3|HA1|UO|U4|O0~0_combout\,
	datab => \M3|U3|O0~2_combout\,
	datac => \M3|U3|O0~3_combout\,
	datad => \A2|F0|FA3|HA1|UO|U4|O0~1_combout\,
	combout => \M5|U3|O0~2_combout\);

-- Location: LCCOMB_X8_Y9_N0
\A3|U9|O0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A3|U9|O0~combout\ = (\B~combout\(2) & \A~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(2),
	datad => \A~combout\(1),
	combout => \A3|U9|O0~combout\);

-- Location: LCCOMB_X8_Y9_N4
\A3|U12|O0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A3|U12|O0~combout\ = (\A~combout\(0) & \B~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\(0),
	datad => \B~combout\(3),
	combout => \A3|U12|O0~combout\);

-- Location: LCCOMB_X8_Y9_N30
\A3|F1|FA0|HA0|U1|O0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A3|F1|FA0|HA0|U1|O0~combout\ = (\A~combout\(0) & (\B~combout\(2) & \A3|F1|FA0|HA0|UO|U4|O0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(0),
	datac => \B~combout\(2),
	datad => \A3|F1|FA0|HA0|UO|U4|O0~1_combout\,
	combout => \A3|F1|FA0|HA0|U1|O0~combout\);

-- Location: LCCOMB_X8_Y9_N26
\A3|F2|FA0|HA0|UO|U4|O0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A3|F2|FA0|HA0|UO|U4|O0~0_combout\ = \A3|F0|FA2|HA1|UO|U4|O0~0_combout\ $ (\A3|U9|O0~combout\ $ (\A3|U12|O0~combout\ $ (\A3|F1|FA0|HA0|U1|O0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|F0|FA2|HA1|UO|U4|O0~0_combout\,
	datab => \A3|U9|O0~combout\,
	datac => \A3|U12|O0~combout\,
	datad => \A3|F1|FA0|HA0|U1|O0~combout\,
	combout => \A3|F2|FA0|HA0|UO|U4|O0~0_combout\);

-- Location: LCCOMB_X8_Y9_N12
\M5|U3|O0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \M5|U3|O0~1_combout\ = (\M5|U3|O0~0_combout\ & ((\A3|F2|FA0|HA0|UO|U4|O0~0_combout\) # ((!\S~combout\(1))))) # (!\M5|U3|O0~0_combout\ & (((\S~combout\(1) & !\A~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M5|U3|O0~0_combout\,
	datab => \A3|F2|FA0|HA0|UO|U4|O0~0_combout\,
	datac => \S~combout\(1),
	datad => \A~combout\(3),
	combout => \M5|U3|O0~1_combout\);

-- Location: LCCOMB_X10_Y7_N18
\U3|O0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3|O0~combout\ = (\B~combout\(3) & \A~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(3),
	datad => \A~combout\(3),
	combout => \U3|O0~combout\);

-- Location: LCCOMB_X10_Y7_N12
\M5|U3|O0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \M5|U3|O0~3_combout\ = (\M5|U3|O0~2_combout\ & (((\U3|O0~combout\)) # (!\M3|U3|O0~2_combout\))) # (!\M5|U3|O0~2_combout\ & (\M3|U3|O0~2_combout\ & (\M5|U3|O0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M5|U3|O0~2_combout\,
	datab => \M3|U3|O0~2_combout\,
	datac => \M5|U3|O0~1_combout\,
	datad => \U3|O0~combout\,
	combout => \M5|U3|O0~3_combout\);

-- Location: LCCOMB_X10_Y7_N10
\M6|M2|U3|O0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \M6|M2|U3|O0~6_combout\ = (\S~combout\(0) & (\S~combout\(1) & \S~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(0),
	datac => \S~combout\(1),
	datad => \S~combout\(2),
	combout => \M6|M2|U3|O0~6_combout\);

-- Location: LCCOMB_X10_Y7_N22
\M6|M2|U3|O0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \M6|M2|U3|O0~4_combout\ = (\B~combout\(3) & ((\S~combout\(1) & ((\A2|F0|FA2|U0|O0~combout\) # (!\A~combout\(3)))) # (!\S~combout\(1) & ((\A~combout\(3)))))) # (!\B~combout\(3) & (\A2|F0|FA2|U0|O0~combout\ & ((!\A~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|F0|FA2|U0|O0~combout\,
	datab => \B~combout\(3),
	datac => \S~combout\(1),
	datad => \A~combout\(3),
	combout => \M6|M2|U3|O0~4_combout\);

-- Location: LCCOMB_X10_Y7_N0
\M6|M2|U3|O0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \M6|M2|U3|O0~5_combout\ = (\M6|M2|U3|O0~3_combout\) # ((\M3|U3|O0~3_combout\ & (!\S~combout\(0) & \M6|M2|U3|O0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M6|M2|U3|O0~3_combout\,
	datab => \M3|U3|O0~3_combout\,
	datac => \S~combout\(0),
	datad => \M6|M2|U3|O0~4_combout\,
	combout => \M6|M2|U3|O0~5_combout\);

-- Location: LCCOMB_X8_Y9_N14
\A3|U3|O0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A3|U3|O0~combout\ = (\B~combout\(0) & \A~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datad => \A~combout\(3),
	combout => \A3|U3|O0~combout\);

-- Location: LCCOMB_X8_Y9_N16
\A3|F0|FA2|U0|O0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A3|F0|FA2|U0|O0~0_combout\ = (\A3|F0|FA1|U0|O0~1_combout\ & ((\A3|U3|O0~combout\) # ((\B~combout\(1) & \A~combout\(2))))) # (!\A3|F0|FA1|U0|O0~1_combout\ & (\B~combout\(1) & (\A3|U3|O0~combout\ & \A~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|F0|FA1|U0|O0~1_combout\,
	datab => \B~combout\(1),
	datac => \A3|U3|O0~combout\,
	datad => \A~combout\(2),
	combout => \A3|F0|FA2|U0|O0~0_combout\);

-- Location: LCCOMB_X10_Y7_N4
\A3|F2|FA1|HA1|UO|U4|O0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \A3|F2|FA1|HA1|UO|U4|O0~1_combout\ = \A3|F2|FA1|HA1|UO|U4|O0~0_combout\ $ (\A3|F0|FA2|U0|O0~0_combout\ $ (((\A~combout\(1) & \B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|F2|FA1|HA1|UO|U4|O0~0_combout\,
	datab => \A~combout\(1),
	datac => \B~combout\(3),
	datad => \A3|F0|FA2|U0|O0~0_combout\,
	combout => \A3|F2|FA1|HA1|UO|U4|O0~1_combout\);

-- Location: LCCOMB_X8_Y9_N18
\A3|F2|FA1|HA1|UO|U4|O0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \A3|F2|FA1|HA1|UO|U4|O0~2_combout\ = (\A3|F0|FA2|HA1|UO|U4|O0~0_combout\ & ((\A3|U9|O0~combout\ & ((!\A3|F1|FA0|HA0|U1|O0~combout\) # (!\A3|U12|O0~combout\))) # (!\A3|U9|O0~combout\ & ((\A3|U12|O0~combout\) # (\A3|F1|FA0|HA0|U1|O0~combout\))))) # 
-- (!\A3|F0|FA2|HA1|UO|U4|O0~0_combout\ & ((\A3|U9|O0~combout\ & ((\A3|U12|O0~combout\) # (\A3|F1|FA0|HA0|U1|O0~combout\))) # (!\A3|U9|O0~combout\ & (\A3|U12|O0~combout\ & \A3|F1|FA0|HA0|U1|O0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|F0|FA2|HA1|UO|U4|O0~0_combout\,
	datab => \A3|U9|O0~combout\,
	datac => \A3|U12|O0~combout\,
	datad => \A3|F1|FA0|HA0|U1|O0~combout\,
	combout => \A3|F2|FA1|HA1|UO|U4|O0~2_combout\);

-- Location: LCCOMB_X10_Y7_N6
\M6|M2|U3|O0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \M6|M2|U3|O0~7_combout\ = (\M6|M2|U3|O0~5_combout\) # ((\M6|M2|U3|O0~6_combout\ & (\A3|F2|FA1|HA1|UO|U4|O0~1_combout\ $ (\A3|F2|FA1|HA1|UO|U4|O0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M6|M2|U3|O0~6_combout\,
	datab => \M6|M2|U3|O0~5_combout\,
	datac => \A3|F2|FA1|HA1|UO|U4|O0~1_combout\,
	datad => \A3|F2|FA1|HA1|UO|U4|O0~2_combout\,
	combout => \M6|M2|U3|O0~7_combout\);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\F[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \M2|U3|O0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_F(0));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\F[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \M3|U3|O0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_F(1));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\F[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \M4|U3|O0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_F(2));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\F[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \M5|U3|O0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_F(3));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\O~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \M6|M2|U3|O0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_O);
END structure;


