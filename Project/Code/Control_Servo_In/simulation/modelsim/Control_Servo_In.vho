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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "01/24/2023 13:00:05"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	Control_Servo_In IS
    PORT (
	sig_in : IN std_logic;
	CLK : IN std_logic;
	PWM_Servo_In : OUT std_logic
	);
END Control_Servo_In;

-- Design Ports Information
-- sig_in	=>  Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PWM_Servo_In	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA


ARCHITECTURE structure OF Control_Servo_In IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sig_in : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_PWM_Servo_In : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~52COUT1_118\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~57COUT1_120\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~62COUT1_122\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~77COUT1_124\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~82COUT1_126\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~42COUT1_128\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~87COUT1_130\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~32COUT1_132\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~17COUT1_134\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~92\ : std_logic;
SIGNAL \Add0~92COUT1_136\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~97COUT1_138\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~22COUT1_140\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~72COUT1_142\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_144\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~2COUT1_146\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~7COUT1_148\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \sig_in~combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~12_combout\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~13_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \PWM_Servo_In~reg0_regout\ : std_logic;
SIGNAL counter : std_logic_vector(19 DOWNTO 0);

BEGIN

ww_sig_in <= sig_in;
ww_CLK <= CLK;
PWM_Servo_In <= ww_PWM_Servo_In;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: LC_X2_Y4_N3
\counter[0]\ : maxii_lcell
-- Equation(s):
-- counter(0) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Add0~50_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \Add0~50_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(0));

-- Location: LC_X3_Y4_N0
\Add0~50\ : maxii_lcell
-- Equation(s):
-- \Add0~50_combout\ = ((!counter(0)))
-- \Add0~52\ = CARRY(((counter(0))))
-- \Add0~52COUT1_118\ = CARRY(((counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout0 => \Add0~52\,
	cout1 => \Add0~52COUT1_118\);

-- Location: LC_X2_Y4_N2
\counter[1]\ : maxii_lcell
-- Equation(s):
-- counter(1) = DFFEAS((((\Add0~55_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \Add0~55_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(1));

-- Location: LC_X3_Y4_N1
\Add0~55\ : maxii_lcell
-- Equation(s):
-- \Add0~55_combout\ = (counter(1) $ ((\Add0~52\)))
-- \Add0~57\ = CARRY(((!\Add0~52\) # (!counter(1))))
-- \Add0~57COUT1_120\ = CARRY(((!\Add0~52COUT1_118\) # (!counter(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	cin0 => \Add0~52\,
	cin1 => \Add0~52COUT1_118\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout0 => \Add0~57\,
	cout1 => \Add0~57COUT1_120\);

-- Location: LC_X2_Y4_N6
\counter[2]\ : maxii_lcell
-- Equation(s):
-- counter(2) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Add0~60_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \Add0~60_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(2));

-- Location: LC_X3_Y4_N2
\Add0~60\ : maxii_lcell
-- Equation(s):
-- \Add0~60_combout\ = (counter(2) $ ((!\Add0~57\)))
-- \Add0~62\ = CARRY(((counter(2) & !\Add0~57\)))
-- \Add0~62COUT1_122\ = CARRY(((counter(2) & !\Add0~57COUT1_120\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	cin0 => \Add0~57\,
	cin1 => \Add0~57COUT1_120\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout0 => \Add0~62\,
	cout1 => \Add0~62COUT1_122\);

-- Location: LC_X2_Y4_N9
\counter[3]\ : maxii_lcell
-- Equation(s):
-- counter(3) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Add0~75_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \Add0~75_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(3));

-- Location: LC_X3_Y4_N3
\Add0~75\ : maxii_lcell
-- Equation(s):
-- \Add0~75_combout\ = counter(3) $ ((((\Add0~62\))))
-- \Add0~77\ = CARRY(((!\Add0~62\)) # (!counter(3)))
-- \Add0~77COUT1_124\ = CARRY(((!\Add0~62COUT1_122\)) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	cin0 => \Add0~62\,
	cin1 => \Add0~62COUT1_122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~75_combout\,
	cout0 => \Add0~77\,
	cout1 => \Add0~77COUT1_124\);

-- Location: LC_X3_Y3_N1
\Equal0~2\ : maxii_lcell
-- Equation(s):
-- \Equal0~2_combout\ = (!\Add0~50_combout\ & (!\Add0~55_combout\ & (!\Add0~60_combout\ & !\Add0~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datab => \Add0~55_combout\,
	datac => \Add0~60_combout\,
	datad => \Add0~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2_combout\);

-- Location: LC_X6_Y4_N2
\counter[5]\ : maxii_lcell
-- Equation(s):
-- counter(5) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Add0~80_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \Add0~80_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(5));

-- Location: LC_X3_Y4_N4
\Add0~45\ : maxii_lcell
-- Equation(s):
-- \Add0~45_combout\ = counter(4) $ ((((!\Add0~77\))))
-- \Add0~47\ = CARRY((counter(4) & ((!\Add0~77COUT1_124\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	cin0 => \Add0~77\,
	cin1 => \Add0~77COUT1_124\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout => \Add0~47\);

-- Location: LC_X2_Y4_N5
\counter[4]\ : maxii_lcell
-- Equation(s):
-- counter(4) = DFFEAS((((\Add0~45_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \Add0~45_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(4));

-- Location: LC_X3_Y4_N5
\Add0~80\ : maxii_lcell
-- Equation(s):
-- \Add0~80_combout\ = (counter(5) $ ((\Add0~47\)))
-- \Add0~82\ = CARRY(((!\Add0~47\) # (!counter(5))))
-- \Add0~82COUT1_126\ = CARRY(((!\Add0~47\) # (!counter(5))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	cin => \Add0~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~80_combout\,
	cout0 => \Add0~82\,
	cout1 => \Add0~82COUT1_126\);

-- Location: LC_X2_Y4_N7
\counter[7]\ : maxii_lcell
-- Equation(s):
-- counter(7) = DFFEAS((((\Add0~85_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \Add0~85_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(7));

-- Location: LC_X3_Y4_N6
\Add0~40\ : maxii_lcell
-- Equation(s):
-- \Add0~40_combout\ = (counter(6) $ ((!(!\Add0~47\ & \Add0~82\) # (\Add0~47\ & \Add0~82COUT1_126\))))
-- \Add0~42\ = CARRY(((counter(6) & !\Add0~82\)))
-- \Add0~42COUT1_128\ = CARRY(((counter(6) & !\Add0~82COUT1_126\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	cin => \Add0~47\,
	cin0 => \Add0~82\,
	cin1 => \Add0~82COUT1_126\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout0 => \Add0~42\,
	cout1 => \Add0~42COUT1_128\);

-- Location: LC_X4_Y3_N2
\counter[6]\ : maxii_lcell
-- Equation(s):
-- counter(6) = DFFEAS(((\Add0~40_combout\ & ((!\Equal0~5_combout\) # (!\Equal0~1_combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Add0~40_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(6));

-- Location: LC_X3_Y4_N7
\Add0~85\ : maxii_lcell
-- Equation(s):
-- \Add0~85_combout\ = (counter(7) $ (((!\Add0~47\ & \Add0~42\) # (\Add0~47\ & \Add0~42COUT1_128\))))
-- \Add0~87\ = CARRY(((!\Add0~42\) # (!counter(7))))
-- \Add0~87COUT1_130\ = CARRY(((!\Add0~42COUT1_128\) # (!counter(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	cin => \Add0~47\,
	cin0 => \Add0~42\,
	cin1 => \Add0~42COUT1_128\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~85_combout\,
	cout0 => \Add0~87\,
	cout1 => \Add0~87COUT1_130\);

-- Location: LC_X4_Y3_N7
\Equal0~3\ : maxii_lcell
-- Equation(s):
-- \Equal0~3_combout\ = (!\Add0~80_combout\ & (!\Add0~85_combout\ & (!\Add0~45_combout\ & \Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~80_combout\,
	datab => \Add0~85_combout\,
	datac => \Add0~45_combout\,
	datad => \Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3_combout\);

-- Location: LC_X2_Y4_N1
\counter[8]\ : maxii_lcell
-- Equation(s):
-- counter(8) = DFFEAS((((\Add0~30_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \Add0~30_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(8));

-- Location: LC_X3_Y4_N8
\Add0~30\ : maxii_lcell
-- Equation(s):
-- \Add0~30_combout\ = counter(8) $ ((((!(!\Add0~47\ & \Add0~87\) # (\Add0~47\ & \Add0~87COUT1_130\)))))
-- \Add0~32\ = CARRY((counter(8) & ((!\Add0~87\))))
-- \Add0~32COUT1_132\ = CARRY((counter(8) & ((!\Add0~87COUT1_130\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	cin => \Add0~47\,
	cin0 => \Add0~87\,
	cin1 => \Add0~87COUT1_130\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout0 => \Add0~32\,
	cout1 => \Add0~32COUT1_132\);

-- Location: LC_X5_Y4_N3
\counter[15]\ : maxii_lcell
-- Equation(s):
-- counter(15) = DFFEAS((((\Add0~70_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \Add0~70_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(15));

-- Location: LC_X3_Y4_N9
\Add0~35\ : maxii_lcell
-- Equation(s):
-- \Add0~35_combout\ = counter(9) $ (((((!\Add0~47\ & \Add0~32\) # (\Add0~47\ & \Add0~32COUT1_132\)))))
-- \Add0~37\ = CARRY(((!\Add0~32COUT1_132\)) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	cin => \Add0~47\,
	cin0 => \Add0~32\,
	cin1 => \Add0~32COUT1_132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout => \Add0~37\);

-- Location: LC_X4_Y3_N1
\counter[9]\ : maxii_lcell
-- Equation(s):
-- counter(9) = DFFEAS(((\Add0~35_combout\ & ((!\Equal0~5_combout\) # (!\Equal0~1_combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Add0~35_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(9));

-- Location: LC_X4_Y4_N0
\Add0~15\ : maxii_lcell
-- Equation(s):
-- \Add0~15_combout\ = (counter(10) $ ((!\Add0~37\)))
-- \Add0~17\ = CARRY(((counter(10) & !\Add0~37\)))
-- \Add0~17COUT1_134\ = CARRY(((counter(10) & !\Add0~37\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	cin => \Add0~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout0 => \Add0~17\,
	cout1 => \Add0~17COUT1_134\);

-- Location: LC_X5_Y4_N5
\counter[10]\ : maxii_lcell
-- Equation(s):
-- counter(10) = DFFEAS((((\Add0~15_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \Add0~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(10));

-- Location: LC_X4_Y4_N1
\Add0~90\ : maxii_lcell
-- Equation(s):
-- \Add0~90_combout\ = counter(11) $ (((((!\Add0~37\ & \Add0~17\) # (\Add0~37\ & \Add0~17COUT1_134\)))))
-- \Add0~92\ = CARRY(((!\Add0~17\)) # (!counter(11)))
-- \Add0~92COUT1_136\ = CARRY(((!\Add0~17COUT1_134\)) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	cin => \Add0~37\,
	cin0 => \Add0~17\,
	cin1 => \Add0~17COUT1_134\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~90_combout\,
	cout0 => \Add0~92\,
	cout1 => \Add0~92COUT1_136\);

-- Location: LC_X5_Y3_N7
\counter[11]\ : maxii_lcell
-- Equation(s):
-- counter(11) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Add0~90_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \Add0~90_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(11));

-- Location: LC_X4_Y4_N2
\Add0~95\ : maxii_lcell
-- Equation(s):
-- \Add0~95_combout\ = (counter(12) $ ((!(!\Add0~37\ & \Add0~92\) # (\Add0~37\ & \Add0~92COUT1_136\))))
-- \Add0~97\ = CARRY(((counter(12) & !\Add0~92\)))
-- \Add0~97COUT1_138\ = CARRY(((counter(12) & !\Add0~92COUT1_136\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	cin => \Add0~37\,
	cin0 => \Add0~92\,
	cin1 => \Add0~92COUT1_136\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~95_combout\,
	cout0 => \Add0~97\,
	cout1 => \Add0~97COUT1_138\);

-- Location: LC_X5_Y4_N4
\counter[12]\ : maxii_lcell
-- Equation(s):
-- counter(12) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Add0~95_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \Add0~95_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(12));

-- Location: LC_X4_Y4_N3
\Add0~20\ : maxii_lcell
-- Equation(s):
-- \Add0~20_combout\ = (counter(13) $ (((!\Add0~37\ & \Add0~97\) # (\Add0~37\ & \Add0~97COUT1_138\))))
-- \Add0~22\ = CARRY(((!\Add0~97\) # (!counter(13))))
-- \Add0~22COUT1_140\ = CARRY(((!\Add0~97COUT1_138\) # (!counter(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(13),
	cin => \Add0~37\,
	cin0 => \Add0~97\,
	cin1 => \Add0~97COUT1_138\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout0 => \Add0~22\,
	cout1 => \Add0~22COUT1_140\);

-- Location: LC_X6_Y4_N8
\counter[13]\ : maxii_lcell
-- Equation(s):
-- counter(13) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Add0~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \Add0~20_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(13));

-- Location: LC_X4_Y4_N4
\Add0~65\ : maxii_lcell
-- Equation(s):
-- \Add0~65_combout\ = (counter(14) $ ((!(!\Add0~37\ & \Add0~22\) # (\Add0~37\ & \Add0~22COUT1_140\))))
-- \Add0~67\ = CARRY(((counter(14) & !\Add0~22COUT1_140\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	cin => \Add0~37\,
	cin0 => \Add0~22\,
	cin1 => \Add0~22COUT1_140\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout => \Add0~67\);

-- Location: LC_X4_Y4_N5
\Add0~70\ : maxii_lcell
-- Equation(s):
-- \Add0~70_combout\ = counter(15) $ ((((\Add0~67\))))
-- \Add0~72\ = CARRY(((!\Add0~67\)) # (!counter(15)))
-- \Add0~72COUT1_142\ = CARRY(((!\Add0~67\)) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	cin => \Add0~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout0 => \Add0~72\,
	cout1 => \Add0~72COUT1_142\);

-- Location: LC_X4_Y3_N5
\Equal0~4\ : maxii_lcell
-- Equation(s):
-- \Equal0~4_combout\ = (!\Add0~30_combout\ & (!\Add0~70_combout\ & (\Add0~35_combout\ & \Add0~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Add0~70_combout\,
	datac => \Add0~35_combout\,
	datad => \Add0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4_combout\);

-- Location: LC_X5_Y4_N2
\Equal0~0\ : maxii_lcell
-- Equation(s):
-- \Equal0~0_combout\ = (!\Add0~90_combout\ & (!\Add0~95_combout\ & (!\Add0~20_combout\ & !\Add0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~90_combout\,
	datab => \Add0~95_combout\,
	datac => \Add0~20_combout\,
	datad => \Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

-- Location: LC_X4_Y3_N3
\Equal0~5\ : maxii_lcell
-- Equation(s):
-- \Equal0~5_combout\ = (\Equal0~2_combout\ & (\Equal0~3_combout\ & (\Equal0~4_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~5_combout\);

-- Location: LC_X4_Y3_N9
\counter[19]\ : maxii_lcell
-- Equation(s):
-- counter(19) = DFFEAS(((\Add0~10_combout\ & ((!\Equal0~5_combout\) # (!\Equal0~1_combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Add0~10_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(19));

-- Location: LC_X4_Y4_N6
\Add0~25\ : maxii_lcell
-- Equation(s):
-- \Add0~25_combout\ = (counter(16) $ ((!(!\Add0~67\ & \Add0~72\) # (\Add0~67\ & \Add0~72COUT1_142\))))
-- \Add0~27\ = CARRY(((counter(16) & !\Add0~72\)))
-- \Add0~27COUT1_144\ = CARRY(((counter(16) & !\Add0~72COUT1_142\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	cin => \Add0~67\,
	cin0 => \Add0~72\,
	cin1 => \Add0~72COUT1_142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_144\);

-- Location: LC_X4_Y3_N0
\counter[16]\ : maxii_lcell
-- Equation(s):
-- counter(16) = DFFEAS(((\Add0~25_combout\ & ((!\Equal0~5_combout\) # (!\Equal0~1_combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Add0~25_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(16));

-- Location: LC_X4_Y4_N7
\Add0~0\ : maxii_lcell
-- Equation(s):
-- \Add0~0_combout\ = (counter(17) $ (((!\Add0~67\ & \Add0~27\) # (\Add0~67\ & \Add0~27COUT1_144\))))
-- \Add0~2\ = CARRY(((!\Add0~27\) # (!counter(17))))
-- \Add0~2COUT1_146\ = CARRY(((!\Add0~27COUT1_144\) # (!counter(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	cin => \Add0~67\,
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_144\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_146\);

-- Location: LC_X4_Y3_N4
\counter[17]\ : maxii_lcell
-- Equation(s):
-- counter(17) = DFFEAS((\Add0~0_combout\ & (((!\Equal0~5_combout\) # (!\Equal0~1_combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Add0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(17));

-- Location: LC_X4_Y4_N8
\Add0~5\ : maxii_lcell
-- Equation(s):
-- \Add0~5_combout\ = counter(18) $ ((((!(!\Add0~67\ & \Add0~2\) # (\Add0~67\ & \Add0~2COUT1_146\)))))
-- \Add0~7\ = CARRY((counter(18) & ((!\Add0~2\))))
-- \Add0~7COUT1_148\ = CARRY((counter(18) & ((!\Add0~2COUT1_146\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	cin => \Add0~67\,
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout0 => \Add0~7\,
	cout1 => \Add0~7COUT1_148\);

-- Location: LC_X4_Y3_N6
\counter[18]\ : maxii_lcell
-- Equation(s):
-- counter(18) = DFFEAS(((\Add0~5_combout\ & ((!\Equal0~5_combout\) # (!\Equal0~1_combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Add0~5_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(18));

-- Location: LC_X4_Y4_N9
\Add0~10\ : maxii_lcell
-- Equation(s):
-- \Add0~10_combout\ = (((!\Add0~67\ & \Add0~7\) # (\Add0~67\ & \Add0~7COUT1_148\) $ (counter(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => counter(19),
	cin => \Add0~67\,
	cin0 => \Add0~7\,
	cin1 => \Add0~7COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\);

-- Location: LC_X5_Y3_N9
\Equal0~1\ : maxii_lcell
-- Equation(s):
-- \Equal0~1_combout\ = (\Add0~10_combout\ & (\Add0~0_combout\ & (\Add0~25_combout\ & \Add0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add0~0_combout\,
	datac => \Add0~25_combout\,
	datad => \Add0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1_combout\);

-- Location: LC_X4_Y3_N8
\counter[14]\ : maxii_lcell
-- Equation(s):
-- counter(14) = DFFEAS(((\Add0~65_combout\ & ((!\Equal0~5_combout\) # (!\Equal0~1_combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Add0~65_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(14));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sig_in~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_sig_in,
	combout => \sig_in~combout\);

-- Location: LC_X5_Y4_N0
\LessThan0~4\ : maxii_lcell
-- Equation(s):
-- \LessThan0~4_combout\ = ((\Add0~65_combout\ & (!\sig_in~combout\ & \Add0~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add0~65_combout\,
	datac => \sig_in~combout\,
	datad => \Add0~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~4_combout\);

-- Location: LC_X6_Y4_N9
\LessThan0~9\ : maxii_lcell
-- Equation(s):
-- \LessThan0~9_combout\ = ((\Add0~85_combout\ & (\Add0~30_combout\ & \Add0~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add0~85_combout\,
	datac => \Add0~30_combout\,
	datad => \Add0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~9_combout\);

-- Location: LC_X5_Y4_N1
\LessThan0~8\ : maxii_lcell
-- Equation(s):
-- \LessThan0~8_combout\ = (\Add0~25_combout\ & (((\Add0~65_combout\) # (\Add0~70_combout\)) # (!\sig_in~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0d0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sig_in~combout\,
	datab => \Add0~65_combout\,
	datac => \Add0~25_combout\,
	datad => \Add0~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~8_combout\);

-- Location: LC_X6_Y4_N5
\LessThan0~10\ : maxii_lcell
-- Equation(s):
-- \LessThan0~10_combout\ = (\LessThan0~8_combout\) # ((\LessThan0~4_combout\ & ((\LessThan0~9_combout\) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \LessThan0~9_combout\,
	datac => \LessThan0~8_combout\,
	datad => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~10_combout\);

-- Location: LC_X5_Y4_N7
\LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \LessThan0~0_combout\ = ((\Add0~0_combout\) # ((\Add0~10_combout\) # (\Add0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datac => \Add0~10_combout\,
	datad => \Add0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~0_combout\);

-- Location: LC_X5_Y4_N8
\LessThan0~1\ : maxii_lcell
-- Equation(s):
-- \LessThan0~1_combout\ = ((\Add0~25_combout\ & (\Add0~20_combout\ & \Add0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add0~25_combout\,
	datac => \Add0~20_combout\,
	datad => \Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~1_combout\);

-- Location: LC_X6_Y4_N0
\LessThan0~2\ : maxii_lcell
-- Equation(s):
-- \LessThan0~2_combout\ = (\LessThan0~0_combout\) # ((\LessThan0~1_combout\ & ((\Add0~30_combout\) # (\Add0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fecc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \LessThan0~0_combout\,
	datac => \Add0~35_combout\,
	datad => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~2_combout\);

-- Location: LC_X6_Y4_N4
\LessThan0~12\ : maxii_lcell
-- Equation(s):
-- \LessThan0~12_combout\ = (\Add0~40_combout\ & ((\Add0~80_combout\) # ((\Add0~45_combout\ & \Add0~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~45_combout\,
	datab => \Add0~75_combout\,
	datac => \Add0~80_combout\,
	datad => \Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~12_combout\);

-- Location: LC_X5_Y4_N6
\LessThan0~11\ : maxii_lcell
-- Equation(s):
-- \LessThan0~11_combout\ = (\Add0~25_combout\ & (\Add0~20_combout\ & ((\Add0~90_combout\) # (\Add0~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~90_combout\,
	datab => \Add0~95_combout\,
	datac => \Add0~25_combout\,
	datad => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~11_combout\);

-- Location: LC_X6_Y4_N6
\LessThan0~5\ : maxii_lcell
-- Equation(s):
-- \LessThan0~5_combout\ = ((\Add0~35_combout\ & (\Add0~30_combout\ & \LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add0~35_combout\,
	datac => \Add0~30_combout\,
	datad => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~5_combout\);

-- Location: LC_X6_Y4_N7
\LessThan0~13\ : maxii_lcell
-- Equation(s):
-- \LessThan0~13_combout\ = ((\LessThan0~11_combout\) # ((\LessThan0~12_combout\ & \LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~12_combout\,
	datac => \LessThan0~11_combout\,
	datad => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~13_combout\);

-- Location: LC_X2_Y4_N0
\LessThan0~3\ : maxii_lcell
-- Equation(s):
-- \LessThan0~3_combout\ = (\Add0~45_combout\ & ((\Add0~50_combout\) # ((\Add0~60_combout\) # (\Add0~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datab => \Add0~45_combout\,
	datac => \Add0~60_combout\,
	datad => \Add0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~3_combout\);

-- Location: LC_X5_Y4_N9
\LessThan0~6\ : maxii_lcell
-- Equation(s):
-- \LessThan0~6_combout\ = (\Add0~80_combout\ & (\Add0~75_combout\ & (\Add0~85_combout\ & \LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~80_combout\,
	datab => \Add0~75_combout\,
	datac => \Add0~85_combout\,
	datad => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~6_combout\);

-- Location: LC_X6_Y4_N3
\LessThan0~7\ : maxii_lcell
-- Equation(s):
-- \LessThan0~7_combout\ = (\LessThan0~3_combout\ & (\Add0~40_combout\ & ((\LessThan0~6_combout\) # (\LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8880",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \Add0~40_combout\,
	datac => \LessThan0~6_combout\,
	datad => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~7_combout\);

-- Location: LC_X6_Y4_N1
\PWM_Servo_In~reg0\ : maxii_lcell
-- Equation(s):
-- \PWM_Servo_In~reg0_regout\ = DFFEAS((!\LessThan0~10_combout\ & (!\LessThan0~2_combout\ & (!\LessThan0~13_combout\ & !\LessThan0~7_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \LessThan0~10_combout\,
	datab => \LessThan0~2_combout\,
	datac => \LessThan0~13_combout\,
	datad => \LessThan0~7_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PWM_Servo_In~reg0_regout\);

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\PWM_Servo_In~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \PWM_Servo_In~reg0_regout\,
	oe => VCC,
	padio => ww_PWM_Servo_In);
END structure;


