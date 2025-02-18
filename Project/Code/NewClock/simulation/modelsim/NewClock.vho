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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/03/2024 13:00:08"

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

ENTITY 	NewClock IS
    PORT (
	CLK : IN std_logic;
	CLK_New : OUT std_logic
	);
END NewClock;

-- Design Ports Information
-- CLK_New	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLK	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF NewClock IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_CLK_New : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~17COUT1_90\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~2COUT1_92\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~32COUT1_94\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~22COUT1_96\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_98\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~42COUT1_100\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_102\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~52COUT1_104\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~72COUT1_106\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~62COUT1_108\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Equal0~2\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Equal0~3\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_88\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Equal0~1\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Equal0~0\ : std_logic;
SIGNAL \temp~regout\ : std_logic;
SIGNAL counter : std_logic_vector(14 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
CLK_New <= ww_CLK_New;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: LC_X5_Y4_N5
\Add0~15\ : maxii_lcell
-- Equation(s):
-- \Add0~15_combout\ = (counter(2) $ ((!\Add0~7\)))
-- \Add0~17\ = CARRY(((counter(2) & !\Add0~7\)))
-- \Add0~17COUT1_90\ = CARRY(((counter(2) & !\Add0~7\)))

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
	datab => counter(2),
	cin => \Add0~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout0 => \Add0~17\,
	cout1 => \Add0~17COUT1_90\);

-- Location: LC_X5_Y4_N2
\counter[2]\ : maxii_lcell
-- Equation(s):
-- counter(2) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Add0~15_combout\, , , VCC)

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
	datac => \Add0~15_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(2));

-- Location: LC_X5_Y4_N6
\Add0~0\ : maxii_lcell
-- Equation(s):
-- \Add0~0_combout\ = (counter(3) $ (((!\Add0~7\ & \Add0~17\) # (\Add0~7\ & \Add0~17COUT1_90\))))
-- \Add0~2\ = CARRY(((!\Add0~17\) # (!counter(3))))
-- \Add0~2COUT1_92\ = CARRY(((!\Add0~17COUT1_90\) # (!counter(3))))

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
	datab => counter(3),
	cin => \Add0~7\,
	cin0 => \Add0~17\,
	cin1 => \Add0~17COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_92\);

-- Location: LC_X6_Y4_N0
\Add0~25\ : maxii_lcell
-- Equation(s):
-- \Add0~25_combout\ = (counter(7) $ ((\Add0~37\)))
-- \Add0~27\ = CARRY(((!\Add0~37\) # (!counter(7))))
-- \Add0~27COUT1_98\ = CARRY(((!\Add0~37\) # (!counter(7))))

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
	datab => counter(7),
	cin => \Add0~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_98\);

-- Location: LC_X7_Y4_N2
\counter[7]\ : maxii_lcell
-- Equation(s):
-- counter(7) = DFFEAS((\Add0~25_combout\ & (((!\Equal0~3\) # (!\Equal0~1\)) # (!\Equal0~0\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Equal0~0\,
	datab => \Equal0~1\,
	datac => \Equal0~3\,
	datad => \Add0~25_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(7));

-- Location: LC_X5_Y4_N7
\Add0~30\ : maxii_lcell
-- Equation(s):
-- \Add0~30_combout\ = (counter(4) $ ((!(!\Add0~7\ & \Add0~2\) # (\Add0~7\ & \Add0~2COUT1_92\))))
-- \Add0~32\ = CARRY(((counter(4) & !\Add0~2\)))
-- \Add0~32COUT1_94\ = CARRY(((counter(4) & !\Add0~2COUT1_92\)))

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
	datab => counter(4),
	cin => \Add0~7\,
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout0 => \Add0~32\,
	cout1 => \Add0~32COUT1_94\);

-- Location: LC_X5_Y4_N1
\counter[4]\ : maxii_lcell
-- Equation(s):
-- \Equal0~1\ = (!counter(6) & (counter(7) & (!counter[4] & counter(5))))
-- counter(4) = DFFEAS(\Equal0~1\, GLOBAL(\CLK~combout\), VCC, , , \Add0~30_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => counter(6),
	datab => counter(7),
	datac => \Add0~30_combout\,
	datad => counter(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1\,
	regout => counter(4));

-- Location: LC_X5_Y4_N8
\Add0~20\ : maxii_lcell
-- Equation(s):
-- \Add0~20_combout\ = (counter(5) $ (((!\Add0~7\ & \Add0~32\) # (\Add0~7\ & \Add0~32COUT1_94\))))
-- \Add0~22\ = CARRY(((!\Add0~32\) # (!counter(5))))
-- \Add0~22COUT1_96\ = CARRY(((!\Add0~32COUT1_94\) # (!counter(5))))

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
	datab => counter(5),
	cin => \Add0~7\,
	cin0 => \Add0~32\,
	cin1 => \Add0~32COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout0 => \Add0~22\,
	cout1 => \Add0~22COUT1_96\);

-- Location: LC_X5_Y4_N0
\counter[5]\ : maxii_lcell
-- Equation(s):
-- counter(5) = DFFEAS((\Add0~20_combout\ & (((!\Equal0~0\) # (!\Equal0~1\)) # (!\Equal0~3\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Add0~20_combout\,
	datab => \Equal0~3\,
	datac => \Equal0~1\,
	datad => \Equal0~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(5));

-- Location: LC_X5_Y4_N9
\Add0~35\ : maxii_lcell
-- Equation(s):
-- \Add0~35_combout\ = (counter(6) $ ((!(!\Add0~7\ & \Add0~22\) # (\Add0~7\ & \Add0~22COUT1_96\))))
-- \Add0~37\ = CARRY(((counter(6) & !\Add0~22COUT1_96\)))

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
	cin => \Add0~7\,
	cin0 => \Add0~22\,
	cin1 => \Add0~22COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout => \Add0~37\);

-- Location: LC_X6_Y4_N1
\Add0~40\ : maxii_lcell
-- Equation(s):
-- \Add0~40_combout\ = (counter(8) $ ((!(!\Add0~37\ & \Add0~27\) # (\Add0~37\ & \Add0~27COUT1_98\))))
-- \Add0~42\ = CARRY(((counter(8) & !\Add0~27\)))
-- \Add0~42COUT1_100\ = CARRY(((counter(8) & !\Add0~27COUT1_98\)))

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
	datab => counter(8),
	cin => \Add0~37\,
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout0 => \Add0~42\,
	cout1 => \Add0~42COUT1_100\);

-- Location: LC_X7_Y4_N4
\counter[8]\ : maxii_lcell
-- Equation(s):
-- counter(8) = DFFEAS((\Add0~40_combout\ & (((!\Equal0~1\) # (!\Equal0~3\)) # (!\Equal0~0\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Equal0~0\,
	datab => \Equal0~3\,
	datac => \Add0~40_combout\,
	datad => \Equal0~1\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(8));

-- Location: LC_X6_Y4_N2
\Add0~45\ : maxii_lcell
-- Equation(s):
-- \Add0~45_combout\ = counter(9) $ (((((!\Add0~37\ & \Add0~42\) # (\Add0~37\ & \Add0~42COUT1_100\)))))
-- \Add0~47\ = CARRY(((!\Add0~42\)) # (!counter(9)))
-- \Add0~47COUT1_102\ = CARRY(((!\Add0~42COUT1_100\)) # (!counter(9)))

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
	cin => \Add0~37\,
	cin0 => \Add0~42\,
	cin1 => \Add0~42COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_102\);

-- Location: LC_X7_Y4_N6
\counter[9]\ : maxii_lcell
-- Equation(s):
-- \Equal0~2\ = (counter(8) & (!counter(10) & (!counter[9] & !counter(11))))
-- counter(9) = DFFEAS(\Equal0~2\, GLOBAL(\CLK~combout\), VCC, , , \Add0~45_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => counter(8),
	datab => counter(10),
	datac => \Add0~45_combout\,
	datad => counter(11),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2\,
	regout => counter(9));

-- Location: LC_X6_Y4_N3
\Add0~50\ : maxii_lcell
-- Equation(s):
-- \Add0~50_combout\ = (counter(10) $ ((!(!\Add0~37\ & \Add0~47\) # (\Add0~37\ & \Add0~47COUT1_102\))))
-- \Add0~52\ = CARRY(((counter(10) & !\Add0~47\)))
-- \Add0~52COUT1_104\ = CARRY(((counter(10) & !\Add0~47COUT1_102\)))

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
	datab => counter(10),
	cin => \Add0~37\,
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout0 => \Add0~52\,
	cout1 => \Add0~52COUT1_104\);

-- Location: LC_X7_Y4_N9
\counter[10]\ : maxii_lcell
-- Equation(s):
-- counter(10) = DFFEAS((((\Add0~50_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	datad => \Add0~50_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(10));

-- Location: LC_X6_Y4_N4
\Add0~55\ : maxii_lcell
-- Equation(s):
-- \Add0~55_combout\ = counter(11) $ (((((!\Add0~37\ & \Add0~52\) # (\Add0~37\ & \Add0~52COUT1_104\)))))
-- \Add0~57\ = CARRY(((!\Add0~52COUT1_104\)) # (!counter(11)))

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
	cin0 => \Add0~52\,
	cin1 => \Add0~52COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout => \Add0~57\);

-- Location: LC_X7_Y4_N3
\counter[11]\ : maxii_lcell
-- Equation(s):
-- counter(11) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Add0~55_combout\, , , VCC)

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
	datac => \Add0~55_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(11));

-- Location: LC_X6_Y4_N5
\Add0~70\ : maxii_lcell
-- Equation(s):
-- \Add0~70_combout\ = counter(12) $ ((((!\Add0~57\))))
-- \Add0~72\ = CARRY((counter(12) & ((!\Add0~57\))))
-- \Add0~72COUT1_106\ = CARRY((counter(12) & ((!\Add0~57\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	cin => \Add0~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout0 => \Add0~72\,
	cout1 => \Add0~72COUT1_106\);

-- Location: LC_X6_Y4_N6
\Add0~60\ : maxii_lcell
-- Equation(s):
-- \Add0~60_combout\ = (counter(13) $ (((!\Add0~57\ & \Add0~72\) # (\Add0~57\ & \Add0~72COUT1_106\))))
-- \Add0~62\ = CARRY(((!\Add0~72\) # (!counter(13))))
-- \Add0~62COUT1_108\ = CARRY(((!\Add0~72COUT1_106\) # (!counter(13))))

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
	cin => \Add0~57\,
	cin0 => \Add0~72\,
	cin1 => \Add0~72COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout0 => \Add0~62\,
	cout1 => \Add0~62COUT1_108\);

-- Location: LC_X6_Y4_N7
\Add0~65\ : maxii_lcell
-- Equation(s):
-- \Add0~65_combout\ = (((!\Add0~57\ & \Add0~62\) # (\Add0~57\ & \Add0~62COUT1_108\) $ (!counter(14))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => counter(14),
	cin => \Add0~57\,
	cin0 => \Add0~62\,
	cin1 => \Add0~62COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\);

-- Location: LC_X7_Y4_N8
\counter[14]\ : maxii_lcell
-- Equation(s):
-- counter(14) = DFFEAS((\Add0~65_combout\ & (((!\Equal0~3\) # (!\Equal0~1\)) # (!\Equal0~0\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Equal0~0\,
	datab => \Equal0~1\,
	datac => \Equal0~3\,
	datad => \Add0~65_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(14));

-- Location: LC_X7_Y4_N7
\counter[12]\ : maxii_lcell
-- Equation(s):
-- \Equal0~3\ = (counter(13) & (counter(14) & (!counter[12] & \Equal0~2\)))
-- counter(12) = DFFEAS(\Equal0~3\, GLOBAL(\CLK~combout\), VCC, , , \Add0~70_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => counter(13),
	datab => counter(14),
	datac => \Add0~70_combout\,
	datad => \Equal0~2\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3\,
	regout => counter(12));

-- Location: LC_X7_Y4_N5
\counter[13]\ : maxii_lcell
-- Equation(s):
-- counter(13) = DFFEAS((\Add0~60_combout\ & (((!\Equal0~1\) # (!\Equal0~3\)) # (!\Equal0~0\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Equal0~0\,
	datab => \Equal0~3\,
	datac => \Add0~60_combout\,
	datad => \Equal0~1\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(13));

-- Location: LC_X4_Y4_N7
\counter[3]\ : maxii_lcell
-- Equation(s):
-- counter(3) = DFFEAS((\Add0~0_combout\ & (((!\Equal0~3\) # (!\Equal0~0\)) # (!\Equal0~1\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Equal0~1\,
	datab => \Equal0~0\,
	datac => \Add0~0_combout\,
	datad => \Equal0~3\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(3));

-- Location: LC_X5_Y4_N3
\Add0~10\ : maxii_lcell
-- Equation(s):
-- \Add0~10_combout\ = ((!counter(0)))
-- \Add0~12\ = CARRY(((counter(0))))
-- \Add0~12COUT1_88\ = CARRY(((counter(0))))

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
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_88\);

-- Location: LC_X5_Y4_N4
\Add0~5\ : maxii_lcell
-- Equation(s):
-- \Add0~5_combout\ = (counter(1) $ ((\Add0~12\)))
-- \Add0~7\ = CARRY(((!\Add0~12COUT1_88\) # (!counter(1))))

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
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout => \Add0~7\);

-- Location: LC_X6_Y4_N8
\counter[1]\ : maxii_lcell
-- Equation(s):
-- \Equal0~0\ = (!counter(0) & (counter(3) & (!counter[1] & !counter(2))))
-- counter(1) = DFFEAS(\Equal0~0\, GLOBAL(\CLK~combout\), VCC, , , \Add0~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => counter(0),
	datab => counter(3),
	datac => \Add0~5_combout\,
	datad => counter(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0\,
	regout => counter(1));

-- Location: LC_X4_Y4_N4
\counter[6]\ : maxii_lcell
-- Equation(s):
-- counter(6) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Add0~35_combout\, , , VCC)

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
	datac => \Add0~35_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(6));

-- Location: LC_X6_Y4_N9
\counter[0]\ : maxii_lcell
-- Equation(s):
-- counter(0) = DFFEAS((\Add0~10_combout\ & (((!\Equal0~0\) # (!\Equal0~3\)) # (!\Equal0~1\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Equal0~1\,
	datab => \Add0~10_combout\,
	datac => \Equal0~3\,
	datad => \Equal0~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(0));

-- Location: LC_X7_Y4_N1
temp : maxii_lcell
-- Equation(s):
-- \temp~regout\ = DFFEAS(\temp~regout\ $ (((\Equal0~0\ & (\Equal0~3\ & \Equal0~1\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Equal0~0\,
	datab => \temp~regout\,
	datac => \Equal0~3\,
	datad => \Equal0~1\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \temp~regout\);

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CLK_New~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp~regout\,
	oe => VCC,
	padio => ww_CLK_New);
END structure;


