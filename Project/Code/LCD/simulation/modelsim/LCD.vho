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

-- DATE "01/31/2023 18:50:27"

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

ENTITY 	LCD_V1 IS
    PORT (
	data_out : OUT std_logic_vector(7 DOWNTO 0);
	RS : OUT std_logic;
	RW : OUT std_logic;
	EN : OUT std_logic;
	clk : IN std_logic;
	lx_hang_nghin : IN std_logic_vector(7 DOWNTO 0);
	lx_hang_tram : IN std_logic_vector(7 DOWNTO 0);
	lx_hang_chuc : IN std_logic_vector(7 DOWNTO 0);
	lx_hang_don_vi : IN std_logic_vector(7 DOWNTO 0)
	);
END LCD_V1;

-- Design Ports Information
-- lx_hang_nghin[0]	=>  Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lx_hang_nghin[1]	=>  Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lx_hang_nghin[2]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lx_hang_nghin[3]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lx_hang_nghin[4]	=>  Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lx_hang_nghin[5]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lx_hang_nghin[6]	=>  Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lx_hang_nghin[7]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lx_hang_tram[0]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lx_hang_tram[1]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lx_hang_tram[2]	=>  Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lx_hang_tram[3]	=>  Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lx_hang_tram[4]	=>  Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lx_hang_tram[5]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lx_hang_tram[6]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lx_hang_tram[7]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lx_hang_chuc[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lx_hang_chuc[1]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lx_hang_chuc[2]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lx_hang_chuc[3]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lx_hang_chuc[4]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lx_hang_chuc[5]	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lx_hang_chuc[6]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lx_hang_chuc[7]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lx_hang_don_vi[0]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lx_hang_don_vi[1]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lx_hang_don_vi[2]	=>  Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lx_hang_don_vi[3]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lx_hang_don_vi[4]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lx_hang_don_vi[5]	=>  Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lx_hang_don_vi[6]	=>  Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lx_hang_don_vi[7]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_out[0]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data_out[1]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data_out[2]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data_out[3]	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data_out[4]	=>  Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data_out[5]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data_out[6]	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data_out[7]	=>  Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- RS	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- RW	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- EN	=>  Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA


ARCHITECTURE structure OF LCD_V1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RS : std_logic;
SIGNAL ww_RW : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_lx_hang_nghin : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_lx_hang_tram : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_lx_hang_chuc : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_lx_hang_don_vi : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \data_out[5]~3_combout\ : std_logic;
SIGNAL \Equal7~1\ : std_logic;
SIGNAL \index[2]~1_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_186\ : std_logic;
SIGNAL \Add0~155_combout\ : std_logic;
SIGNAL \Add0~157\ : std_logic;
SIGNAL \Add0~157COUT1_188\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~2COUT1_190\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~17COUT1_192\ : std_logic;
SIGNAL \Add0~150_combout\ : std_logic;
SIGNAL \Add0~152\ : std_logic;
SIGNAL \Add0~120_combout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~122COUT1_194\ : std_logic;
SIGNAL \Add0~145_combout\ : std_logic;
SIGNAL \Add0~147\ : std_logic;
SIGNAL \Add0~147COUT1_196\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~22COUT1_198\ : std_logic;
SIGNAL \Add0~125_combout\ : std_logic;
SIGNAL \Add0~127\ : std_logic;
SIGNAL \Add0~127COUT1_200\ : std_logic;
SIGNAL \Add0~130_combout\ : std_logic;
SIGNAL \Add0~132\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_202\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~32COUT1_204\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~37COUT1_206\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~42COUT1_208\ : std_logic;
SIGNAL \Add0~135_combout\ : std_logic;
SIGNAL \Add0~137\ : std_logic;
SIGNAL \Add0~140_combout\ : std_logic;
SIGNAL \st~9_combout\ : std_logic;
SIGNAL \st~8_combout\ : std_logic;
SIGNAL \Add0~142\ : std_logic;
SIGNAL \Add0~142COUT1_210\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_212\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~52COUT1_214\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~57COUT1_216\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~67COUT1_218\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~72COUT1_220\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~77COUT1_222\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~82COUT1_224\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~92\ : std_logic;
SIGNAL \Add0~92COUT1_226\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~97COUT1_228\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~102COUT1_230\ : std_logic;
SIGNAL \Add0~105_combout\ : std_logic;
SIGNAL \Add0~107\ : std_logic;
SIGNAL \Add0~107COUT1_232\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \Add0~112\ : std_logic;
SIGNAL \Add0~115_combout\ : std_logic;
SIGNAL \st~6_combout\ : std_logic;
SIGNAL \st~5_combout\ : std_logic;
SIGNAL \st~0_combout\ : std_logic;
SIGNAL \st~1_combout\ : std_logic;
SIGNAL \st~2_combout\ : std_logic;
SIGNAL \st~3_combout\ : std_logic;
SIGNAL \st~4_combout\ : std_logic;
SIGNAL \st~7_combout\ : std_logic;
SIGNAL \st~10_combout\ : std_logic;
SIGNAL \st~regout\ : std_logic;
SIGNAL \command[0]~0_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \command[3]~4_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \data_out[0]~reg0_regout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \data_out[1]~reg0_regout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Equal7~2_combout\ : std_logic;
SIGNAL \data_out[2]~reg0_regout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \data_out[3]~reg0_regout\ : std_logic;
SIGNAL \data_out[4]~0_combout\ : std_logic;
SIGNAL \data_out[4]~1_combout\ : std_logic;
SIGNAL \data_out[4]~reg0_regout\ : std_logic;
SIGNAL \data_out[5]~4_combout\ : std_logic;
SIGNAL \data_out[5]~reg0_regout\ : std_logic;
SIGNAL \data_out[6]~reg0_regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \data_out[7]~reg0_regout\ : std_logic;
SIGNAL \RS~reg0_regout\ : std_logic;
SIGNAL \EN~2_combout\ : std_logic;
SIGNAL \EN~0_combout\ : std_logic;
SIGNAL \EN~1_combout\ : std_logic;
SIGNAL \EN~reg0_regout\ : std_logic;
SIGNAL index : std_logic_vector(2 DOWNTO 0);
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL command : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_EN~reg0_regout\ : std_logic;

BEGIN

data_out <= ww_data_out;
RS <= ww_RS;
RW <= ww_RW;
EN <= ww_EN;
ww_clk <= clk;
ww_lx_hang_nghin <= lx_hang_nghin;
ww_lx_hang_tram <= lx_hang_tram;
ww_lx_hang_chuc <= lx_hang_chuc;
ww_lx_hang_don_vi <= lx_hang_don_vi;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_EN~reg0_regout\ <= NOT \EN~reg0_regout\;

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LC_X6_Y4_N7
\command[0]\ : maxii_lcell
-- Equation(s):
-- command(0) = DFFEAS((command(0) $ ((\command[0]~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => command(0),
	datac => \command[0]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => command(0));

-- Location: LC_X5_Y4_N2
\Equal8~0\ : maxii_lcell
-- Equation(s):
-- \Equal8~0_combout\ = (command(3) & (!command(2) & (!command(1) & !command(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => command(3),
	datab => command(2),
	datac => command(1),
	datad => command(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal8~0_combout\);

-- Location: LC_X5_Y4_N5
\command[1]\ : maxii_lcell
-- Equation(s):
-- command(1) = DFFEAS((\command[0]~0_combout\ & ((\Equal8~0_combout\) # (command(1) $ (command(0))))) # (!\command[0]~0_combout\ & (command(1))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "daea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => command(1),
	datab => \Equal8~0_combout\,
	datac => \command[0]~0_combout\,
	datad => command(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => command(1));

-- Location: LC_X6_Y4_N8
\data_out[5]~3\ : maxii_lcell
-- Equation(s):
-- \data_out[5]~3_combout\ = (\st~regout\ & (((!\Equal7~1\) # (!index(1))) # (!index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => index(1),
	datac => \st~regout\,
	datad => \Equal7~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_out[5]~3_combout\);

-- Location: LC_X6_Y4_N9
\RS~reg0\ : maxii_lcell
-- Equation(s):
-- \Equal7~1\ = (!command(3) & (command(2) & (command(0) & command(1))))
-- \RS~reg0_regout\ = DFFEAS(\Equal7~1\, GLOBAL(\clk~combout\), VCC, , \data_out[5]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => command(3),
	datab => command(2),
	datac => command(0),
	datad => command(1),
	aclr => GND,
	ena => \data_out[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal7~1\,
	regout => \RS~reg0_regout\);

-- Location: LC_X5_Y2_N6
\index[2]~1\ : maxii_lcell
-- Equation(s):
-- \index[2]~1_combout\ = (((\st~regout\ & \Equal7~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \st~regout\,
	datad => \Equal7~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \index[2]~1_combout\);

-- Location: LC_X6_Y2_N8
\index[1]\ : maxii_lcell
-- Equation(s):
-- index(1) = DFFEAS(((index(0) & ((!index(1)))) # (!index(0) & (!index(2) & index(1)))), GLOBAL(\clk~combout\), VCC, , \index[2]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "05f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => index(2),
	datac => index(0),
	datad => index(1),
	aclr => GND,
	ena => \index[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => index(1));

-- Location: LC_X6_Y2_N4
\index[0]\ : maxii_lcell
-- Equation(s):
-- index(0) = DFFEAS(((!index(0) & ((!index(1)) # (!index(2))))), GLOBAL(\clk~combout\), VCC, , \index[2]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "050f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => index(2),
	datac => index(0),
	datad => index(1),
	aclr => GND,
	ena => \index[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => index(0));

-- Location: LC_X6_Y2_N6
\index[2]\ : maxii_lcell
-- Equation(s):
-- index(2) = DFFEAS((index(2) & (((!index(1))))) # (!index(2) & (((index(0) & index(1))))), GLOBAL(\clk~combout\), VCC, , \index[2]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => index(2),
	datac => index(0),
	datad => index(1),
	aclr => GND,
	ena => \index[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => index(2));

-- Location: LC_X5_Y3_N9
\count[16]\ : maxii_lcell
-- Equation(s):
-- count(16) = DFFEAS((!\st~regout\ & (((\Add0~140_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \st~regout\,
	datad => \Add0~140_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(16));

-- Location: LC_X2_Y3_N4
\Add0~5\ : maxii_lcell
-- Equation(s):
-- \Add0~5_combout\ = ((!count(0)))
-- \Add0~7\ = CARRY(((count(0))))

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
	datab => count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout => \Add0~7\);

-- Location: LC_X2_Y3_N1
\count[0]\ : maxii_lcell
-- Equation(s):
-- count(0) = DFFEAS((((\Add0~5_combout\ & !\st~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~5_combout\,
	datad => \st~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(0));

-- Location: LC_X2_Y3_N5
\Add0~10\ : maxii_lcell
-- Equation(s):
-- \Add0~10_combout\ = count(1) $ ((((\Add0~7\))))
-- \Add0~12\ = CARRY(((!\Add0~7\)) # (!count(1)))
-- \Add0~12COUT1_186\ = CARRY(((!\Add0~7\)) # (!count(1)))

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
	dataa => count(1),
	cin => \Add0~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_186\);

-- Location: LC_X2_Y3_N3
\count[1]\ : maxii_lcell
-- Equation(s):
-- count(1) = DFFEAS((((\Add0~10_combout\ & !\st~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~10_combout\,
	datad => \st~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(1));

-- Location: LC_X2_Y3_N6
\Add0~155\ : maxii_lcell
-- Equation(s):
-- \Add0~155_combout\ = (count(2) $ ((!(!\Add0~7\ & \Add0~12\) # (\Add0~7\ & \Add0~12COUT1_186\))))
-- \Add0~157\ = CARRY(((count(2) & !\Add0~12\)))
-- \Add0~157COUT1_188\ = CARRY(((count(2) & !\Add0~12COUT1_186\)))

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
	datab => count(2),
	cin => \Add0~7\,
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_186\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~155_combout\,
	cout0 => \Add0~157\,
	cout1 => \Add0~157COUT1_188\);

-- Location: LC_X3_Y2_N4
\count[2]\ : maxii_lcell
-- Equation(s):
-- count(2) = DFFEAS(((!\st~regout\ & (\Add0~155_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \st~regout\,
	datac => \Add0~155_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(2));

-- Location: LC_X2_Y3_N7
\Add0~0\ : maxii_lcell
-- Equation(s):
-- \Add0~0_combout\ = (count(3) $ (((!\Add0~7\ & \Add0~157\) # (\Add0~7\ & \Add0~157COUT1_188\))))
-- \Add0~2\ = CARRY(((!\Add0~157\) # (!count(3))))
-- \Add0~2COUT1_190\ = CARRY(((!\Add0~157COUT1_188\) # (!count(3))))

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
	datab => count(3),
	cin => \Add0~7\,
	cin0 => \Add0~157\,
	cin1 => \Add0~157COUT1_188\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_190\);

-- Location: LC_X2_Y3_N0
\count[3]\ : maxii_lcell
-- Equation(s):
-- count(3) = DFFEAS((((\Add0~0_combout\ & !\st~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~0_combout\,
	datad => \st~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(3));

-- Location: LC_X2_Y3_N8
\Add0~15\ : maxii_lcell
-- Equation(s):
-- \Add0~15_combout\ = count(4) $ ((((!(!\Add0~7\ & \Add0~2\) # (\Add0~7\ & \Add0~2COUT1_190\)))))
-- \Add0~17\ = CARRY((count(4) & ((!\Add0~2\))))
-- \Add0~17COUT1_192\ = CARRY((count(4) & ((!\Add0~2COUT1_190\))))

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
	dataa => count(4),
	cin => \Add0~7\,
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_190\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout0 => \Add0~17\,
	cout1 => \Add0~17COUT1_192\);

-- Location: LC_X7_Y3_N1
\count[4]\ : maxii_lcell
-- Equation(s):
-- count(4) = DFFEAS((((!\st~regout\ & \Add0~15_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \st~regout\,
	datad => \Add0~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(4));

-- Location: LC_X2_Y3_N9
\Add0~150\ : maxii_lcell
-- Equation(s):
-- \Add0~150_combout\ = (count(5) $ (((!\Add0~7\ & \Add0~17\) # (\Add0~7\ & \Add0~17COUT1_192\))))
-- \Add0~152\ = CARRY(((!\Add0~17COUT1_192\) # (!count(5))))

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
	datab => count(5),
	cin => \Add0~7\,
	cin0 => \Add0~17\,
	cin1 => \Add0~17COUT1_192\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~150_combout\,
	cout => \Add0~152\);

-- Location: LC_X2_Y3_N2
\count[5]\ : maxii_lcell
-- Equation(s):
-- count(5) = DFFEAS((!\st~regout\ & (((\Add0~150_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \st~regout\,
	datad => \Add0~150_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(5));

-- Location: LC_X3_Y3_N0
\Add0~120\ : maxii_lcell
-- Equation(s):
-- \Add0~120_combout\ = (count(6) $ ((!\Add0~152\)))
-- \Add0~122\ = CARRY(((count(6) & !\Add0~152\)))
-- \Add0~122COUT1_194\ = CARRY(((count(6) & !\Add0~152\)))

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
	datab => count(6),
	cin => \Add0~152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~120_combout\,
	cout0 => \Add0~122\,
	cout1 => \Add0~122COUT1_194\);

-- Location: LC_X3_Y2_N8
\count[6]\ : maxii_lcell
-- Equation(s):
-- count(6) = DFFEAS(((!\st~regout\ & (\Add0~120_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \st~regout\,
	datac => \Add0~120_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(6));

-- Location: LC_X3_Y3_N1
\Add0~145\ : maxii_lcell
-- Equation(s):
-- \Add0~145_combout\ = (count(7) $ (((!\Add0~152\ & \Add0~122\) # (\Add0~152\ & \Add0~122COUT1_194\))))
-- \Add0~147\ = CARRY(((!\Add0~122\) # (!count(7))))
-- \Add0~147COUT1_196\ = CARRY(((!\Add0~122COUT1_194\) # (!count(7))))

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
	datab => count(7),
	cin => \Add0~152\,
	cin0 => \Add0~122\,
	cin1 => \Add0~122COUT1_194\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~145_combout\,
	cout0 => \Add0~147\,
	cout1 => \Add0~147COUT1_196\);

-- Location: LC_X3_Y2_N2
\count[7]\ : maxii_lcell
-- Equation(s):
-- count(7) = DFFEAS((((!\st~regout\ & \Add0~145_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \st~regout\,
	datad => \Add0~145_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(7));

-- Location: LC_X3_Y3_N2
\Add0~20\ : maxii_lcell
-- Equation(s):
-- \Add0~20_combout\ = (count(8) $ ((!(!\Add0~152\ & \Add0~147\) # (\Add0~152\ & \Add0~147COUT1_196\))))
-- \Add0~22\ = CARRY(((count(8) & !\Add0~147\)))
-- \Add0~22COUT1_198\ = CARRY(((count(8) & !\Add0~147COUT1_196\)))

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
	datab => count(8),
	cin => \Add0~152\,
	cin0 => \Add0~147\,
	cin1 => \Add0~147COUT1_196\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout0 => \Add0~22\,
	cout1 => \Add0~22COUT1_198\);

-- Location: LC_X7_Y3_N7
\count[8]\ : maxii_lcell
-- Equation(s):
-- count(8) = DFFEAS((!\st~regout\ & (((\Add0~20_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \st~regout\,
	datad => \Add0~20_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(8));

-- Location: LC_X3_Y3_N3
\Add0~125\ : maxii_lcell
-- Equation(s):
-- \Add0~125_combout\ = (count(9) $ (((!\Add0~152\ & \Add0~22\) # (\Add0~152\ & \Add0~22COUT1_198\))))
-- \Add0~127\ = CARRY(((!\Add0~22\) # (!count(9))))
-- \Add0~127COUT1_200\ = CARRY(((!\Add0~22COUT1_198\) # (!count(9))))

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
	datab => count(9),
	cin => \Add0~152\,
	cin0 => \Add0~22\,
	cin1 => \Add0~22COUT1_198\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~125_combout\,
	cout0 => \Add0~127\,
	cout1 => \Add0~127COUT1_200\);

-- Location: LC_X3_Y2_N7
\count[9]\ : maxii_lcell
-- Equation(s):
-- count(9) = DFFEAS((((!\st~regout\ & \Add0~125_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \st~regout\,
	datad => \Add0~125_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(9));

-- Location: LC_X3_Y3_N4
\Add0~130\ : maxii_lcell
-- Equation(s):
-- \Add0~130_combout\ = (count(10) $ ((!(!\Add0~152\ & \Add0~127\) # (\Add0~152\ & \Add0~127COUT1_200\))))
-- \Add0~132\ = CARRY(((count(10) & !\Add0~127COUT1_200\)))

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
	datab => count(10),
	cin => \Add0~152\,
	cin0 => \Add0~127\,
	cin1 => \Add0~127COUT1_200\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~130_combout\,
	cout => \Add0~132\);

-- Location: LC_X3_Y2_N3
\count[10]\ : maxii_lcell
-- Equation(s):
-- count(10) = DFFEAS((((!\st~regout\ & \Add0~130_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \st~regout\,
	datad => \Add0~130_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(10));

-- Location: LC_X3_Y3_N5
\Add0~25\ : maxii_lcell
-- Equation(s):
-- \Add0~25_combout\ = (count(11) $ ((\Add0~132\)))
-- \Add0~27\ = CARRY(((!\Add0~132\) # (!count(11))))
-- \Add0~27COUT1_202\ = CARRY(((!\Add0~132\) # (!count(11))))

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
	datab => count(11),
	cin => \Add0~132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_202\);

-- Location: LC_X7_Y3_N6
\count[11]\ : maxii_lcell
-- Equation(s):
-- count(11) = DFFEAS((!\st~regout\ & (((\Add0~25_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \st~regout\,
	datac => \Add0~25_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(11));

-- Location: LC_X3_Y3_N6
\Add0~30\ : maxii_lcell
-- Equation(s):
-- \Add0~30_combout\ = (count(12) $ ((!(!\Add0~132\ & \Add0~27\) # (\Add0~132\ & \Add0~27COUT1_202\))))
-- \Add0~32\ = CARRY(((count(12) & !\Add0~27\)))
-- \Add0~32COUT1_204\ = CARRY(((count(12) & !\Add0~27COUT1_202\)))

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
	datab => count(12),
	cin => \Add0~132\,
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_202\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout0 => \Add0~32\,
	cout1 => \Add0~32COUT1_204\);

-- Location: LC_X3_Y2_N0
\count[12]\ : maxii_lcell
-- Equation(s):
-- count(12) = DFFEAS((((!\st~regout\ & \Add0~30_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \st~regout\,
	datad => \Add0~30_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(12));

-- Location: LC_X3_Y3_N7
\Add0~35\ : maxii_lcell
-- Equation(s):
-- \Add0~35_combout\ = (count(13) $ (((!\Add0~132\ & \Add0~32\) # (\Add0~132\ & \Add0~32COUT1_204\))))
-- \Add0~37\ = CARRY(((!\Add0~32\) # (!count(13))))
-- \Add0~37COUT1_206\ = CARRY(((!\Add0~32COUT1_204\) # (!count(13))))

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
	datab => count(13),
	cin => \Add0~132\,
	cin0 => \Add0~32\,
	cin1 => \Add0~32COUT1_204\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout0 => \Add0~37\,
	cout1 => \Add0~37COUT1_206\);

-- Location: LC_X3_Y4_N2
\count[13]\ : maxii_lcell
-- Equation(s):
-- count(13) = DFFEAS(((!\st~regout\ & ((\Add0~35_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \st~regout\,
	datad => \Add0~35_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(13));

-- Location: LC_X3_Y3_N8
\Add0~40\ : maxii_lcell
-- Equation(s):
-- \Add0~40_combout\ = (count(14) $ ((!(!\Add0~132\ & \Add0~37\) # (\Add0~132\ & \Add0~37COUT1_206\))))
-- \Add0~42\ = CARRY(((count(14) & !\Add0~37\)))
-- \Add0~42COUT1_208\ = CARRY(((count(14) & !\Add0~37COUT1_206\)))

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
	datab => count(14),
	cin => \Add0~132\,
	cin0 => \Add0~37\,
	cin1 => \Add0~37COUT1_206\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout0 => \Add0~42\,
	cout1 => \Add0~42COUT1_208\);

-- Location: LC_X3_Y2_N5
\count[14]\ : maxii_lcell
-- Equation(s):
-- count(14) = DFFEAS((((!\st~regout\ & \Add0~40_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \st~regout\,
	datad => \Add0~40_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(14));

-- Location: LC_X3_Y3_N9
\Add0~135\ : maxii_lcell
-- Equation(s):
-- \Add0~135_combout\ = (count(15) $ (((!\Add0~132\ & \Add0~42\) # (\Add0~132\ & \Add0~42COUT1_208\))))
-- \Add0~137\ = CARRY(((!\Add0~42COUT1_208\) # (!count(15))))

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
	datab => count(15),
	cin => \Add0~132\,
	cin0 => \Add0~42\,
	cin1 => \Add0~42COUT1_208\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~135_combout\,
	cout => \Add0~137\);

-- Location: LC_X3_Y4_N3
\count[15]\ : maxii_lcell
-- Equation(s):
-- count(15) = DFFEAS(((!\st~regout\ & ((\Add0~135_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \st~regout\,
	datad => \Add0~135_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(15));

-- Location: LC_X4_Y3_N0
\Add0~140\ : maxii_lcell
-- Equation(s):
-- \Add0~140_combout\ = (count(16) $ ((!\Add0~137\)))
-- \Add0~142\ = CARRY(((count(16) & !\Add0~137\)))
-- \Add0~142COUT1_210\ = CARRY(((count(16) & !\Add0~137\)))

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
	datab => count(16),
	cin => \Add0~137\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~140_combout\,
	cout0 => \Add0~142\,
	cout1 => \Add0~142COUT1_210\);

-- Location: LC_X6_Y3_N7
\st~9\ : maxii_lcell
-- Equation(s):
-- \st~9_combout\ = (\Add0~125_combout\ & (\Add0~135_combout\ & (\Add0~130_combout\ & !\Add0~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~125_combout\,
	datab => \Add0~135_combout\,
	datac => \Add0~130_combout\,
	datad => \Add0~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \st~9_combout\);

-- Location: LC_X6_Y3_N5
\st~8\ : maxii_lcell
-- Equation(s):
-- \st~8_combout\ = (!\Add0~155_combout\ & (!\Add0~0_combout\ & (\Add0~150_combout\ & \Add0~145_combout\)))

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
	dataa => \Add0~155_combout\,
	datab => \Add0~0_combout\,
	datac => \Add0~150_combout\,
	datad => \Add0~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \st~8_combout\);

-- Location: LC_X6_Y3_N8
\count[29]\ : maxii_lcell
-- Equation(s):
-- count(29) = DFFEAS(((!\st~regout\ & ((\Add0~105_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \st~regout\,
	datad => \Add0~105_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(29));

-- Location: LC_X4_Y3_N1
\Add0~45\ : maxii_lcell
-- Equation(s):
-- \Add0~45_combout\ = (count(17) $ (((!\Add0~137\ & \Add0~142\) # (\Add0~137\ & \Add0~142COUT1_210\))))
-- \Add0~47\ = CARRY(((!\Add0~142\) # (!count(17))))
-- \Add0~47COUT1_212\ = CARRY(((!\Add0~142COUT1_210\) # (!count(17))))

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
	datab => count(17),
	cin => \Add0~137\,
	cin0 => \Add0~142\,
	cin1 => \Add0~142COUT1_210\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_212\);

-- Location: LC_X7_Y3_N9
\count[17]\ : maxii_lcell
-- Equation(s):
-- count(17) = DFFEAS((!\st~regout\ & (((\Add0~45_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \st~regout\,
	datac => \Add0~45_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(17));

-- Location: LC_X4_Y3_N2
\Add0~50\ : maxii_lcell
-- Equation(s):
-- \Add0~50_combout\ = (count(18) $ ((!(!\Add0~137\ & \Add0~47\) # (\Add0~137\ & \Add0~47COUT1_212\))))
-- \Add0~52\ = CARRY(((count(18) & !\Add0~47\)))
-- \Add0~52COUT1_214\ = CARRY(((count(18) & !\Add0~47COUT1_212\)))

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
	datab => count(18),
	cin => \Add0~137\,
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_212\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout0 => \Add0~52\,
	cout1 => \Add0~52COUT1_214\);

-- Location: LC_X4_Y4_N3
\count[18]\ : maxii_lcell
-- Equation(s):
-- count(18) = DFFEAS(((!\st~regout\ & ((\Add0~50_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \st~regout\,
	datad => \Add0~50_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(18));

-- Location: LC_X4_Y3_N3
\Add0~55\ : maxii_lcell
-- Equation(s):
-- \Add0~55_combout\ = count(19) $ (((((!\Add0~137\ & \Add0~52\) # (\Add0~137\ & \Add0~52COUT1_214\)))))
-- \Add0~57\ = CARRY(((!\Add0~52\)) # (!count(19)))
-- \Add0~57COUT1_216\ = CARRY(((!\Add0~52COUT1_214\)) # (!count(19)))

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
	dataa => count(19),
	cin => \Add0~137\,
	cin0 => \Add0~52\,
	cin1 => \Add0~52COUT1_214\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout0 => \Add0~57\,
	cout1 => \Add0~57COUT1_216\);

-- Location: LC_X5_Y3_N7
\count[19]\ : maxii_lcell
-- Equation(s):
-- count(19) = DFFEAS((!\st~regout\ & (((\Add0~55_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \st~regout\,
	datad => \Add0~55_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(19));

-- Location: LC_X4_Y3_N4
\Add0~60\ : maxii_lcell
-- Equation(s):
-- \Add0~60_combout\ = (count(20) $ ((!(!\Add0~137\ & \Add0~57\) # (\Add0~137\ & \Add0~57COUT1_216\))))
-- \Add0~62\ = CARRY(((count(20) & !\Add0~57COUT1_216\)))

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
	datab => count(20),
	cin => \Add0~137\,
	cin0 => \Add0~57\,
	cin1 => \Add0~57COUT1_216\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout => \Add0~62\);

-- Location: LC_X4_Y2_N0
\count[20]\ : maxii_lcell
-- Equation(s):
-- count(20) = DFFEAS((((!\st~regout\ & \Add0~60_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \st~regout\,
	datad => \Add0~60_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(20));

-- Location: LC_X4_Y3_N5
\Add0~65\ : maxii_lcell
-- Equation(s):
-- \Add0~65_combout\ = (count(21) $ ((\Add0~62\)))
-- \Add0~67\ = CARRY(((!\Add0~62\) # (!count(21))))
-- \Add0~67COUT1_218\ = CARRY(((!\Add0~62\) # (!count(21))))

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
	datab => count(21),
	cin => \Add0~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout0 => \Add0~67\,
	cout1 => \Add0~67COUT1_218\);

-- Location: LC_X7_Y3_N2
\count[21]\ : maxii_lcell
-- Equation(s):
-- count(21) = DFFEAS((((!\st~regout\ & \Add0~65_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \st~regout\,
	datad => \Add0~65_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(21));

-- Location: LC_X4_Y3_N6
\Add0~70\ : maxii_lcell
-- Equation(s):
-- \Add0~70_combout\ = (count(22) $ ((!(!\Add0~62\ & \Add0~67\) # (\Add0~62\ & \Add0~67COUT1_218\))))
-- \Add0~72\ = CARRY(((count(22) & !\Add0~67\)))
-- \Add0~72COUT1_220\ = CARRY(((count(22) & !\Add0~67COUT1_218\)))

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
	datab => count(22),
	cin => \Add0~62\,
	cin0 => \Add0~67\,
	cin1 => \Add0~67COUT1_218\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout0 => \Add0~72\,
	cout1 => \Add0~72COUT1_220\);

-- Location: LC_X4_Y2_N8
\count[22]\ : maxii_lcell
-- Equation(s):
-- count(22) = DFFEAS((((!\st~regout\ & \Add0~70_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \st~regout\,
	datad => \Add0~70_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(22));

-- Location: LC_X4_Y3_N7
\Add0~75\ : maxii_lcell
-- Equation(s):
-- \Add0~75_combout\ = (count(23) $ (((!\Add0~62\ & \Add0~72\) # (\Add0~62\ & \Add0~72COUT1_220\))))
-- \Add0~77\ = CARRY(((!\Add0~72\) # (!count(23))))
-- \Add0~77COUT1_222\ = CARRY(((!\Add0~72COUT1_220\) # (!count(23))))

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
	datab => count(23),
	cin => \Add0~62\,
	cin0 => \Add0~72\,
	cin1 => \Add0~72COUT1_220\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~75_combout\,
	cout0 => \Add0~77\,
	cout1 => \Add0~77COUT1_222\);

-- Location: LC_X4_Y2_N2
\count[23]\ : maxii_lcell
-- Equation(s):
-- count(23) = DFFEAS((((!\st~regout\ & \Add0~75_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \st~regout\,
	datad => \Add0~75_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(23));

-- Location: LC_X4_Y3_N8
\Add0~80\ : maxii_lcell
-- Equation(s):
-- \Add0~80_combout\ = (count(24) $ ((!(!\Add0~62\ & \Add0~77\) # (\Add0~62\ & \Add0~77COUT1_222\))))
-- \Add0~82\ = CARRY(((count(24) & !\Add0~77\)))
-- \Add0~82COUT1_224\ = CARRY(((count(24) & !\Add0~77COUT1_222\)))

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
	datab => count(24),
	cin => \Add0~62\,
	cin0 => \Add0~77\,
	cin1 => \Add0~77COUT1_222\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~80_combout\,
	cout0 => \Add0~82\,
	cout1 => \Add0~82COUT1_224\);

-- Location: LC_X4_Y2_N1
\count[24]\ : maxii_lcell
-- Equation(s):
-- count(24) = DFFEAS((((!\st~regout\ & \Add0~80_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \st~regout\,
	datad => \Add0~80_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(24));

-- Location: LC_X4_Y3_N9
\Add0~85\ : maxii_lcell
-- Equation(s):
-- \Add0~85_combout\ = (count(25) $ (((!\Add0~62\ & \Add0~82\) # (\Add0~62\ & \Add0~82COUT1_224\))))
-- \Add0~87\ = CARRY(((!\Add0~82COUT1_224\) # (!count(25))))

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
	datab => count(25),
	cin => \Add0~62\,
	cin0 => \Add0~82\,
	cin1 => \Add0~82COUT1_224\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~85_combout\,
	cout => \Add0~87\);

-- Location: LC_X4_Y2_N5
\count[25]\ : maxii_lcell
-- Equation(s):
-- count(25) = DFFEAS((((!\st~regout\ & \Add0~85_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \st~regout\,
	datad => \Add0~85_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(25));

-- Location: LC_X5_Y3_N0
\Add0~90\ : maxii_lcell
-- Equation(s):
-- \Add0~90_combout\ = (count(26) $ ((!\Add0~87\)))
-- \Add0~92\ = CARRY(((count(26) & !\Add0~87\)))
-- \Add0~92COUT1_226\ = CARRY(((count(26) & !\Add0~87\)))

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
	datab => count(26),
	cin => \Add0~87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~90_combout\,
	cout0 => \Add0~92\,
	cout1 => \Add0~92COUT1_226\);

-- Location: LC_X5_Y2_N0
\count[26]\ : maxii_lcell
-- Equation(s):
-- count(26) = DFFEAS((((!\st~regout\ & \Add0~90_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \st~regout\,
	datad => \Add0~90_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(26));

-- Location: LC_X5_Y3_N1
\Add0~95\ : maxii_lcell
-- Equation(s):
-- \Add0~95_combout\ = (count(27) $ (((!\Add0~87\ & \Add0~92\) # (\Add0~87\ & \Add0~92COUT1_226\))))
-- \Add0~97\ = CARRY(((!\Add0~92\) # (!count(27))))
-- \Add0~97COUT1_228\ = CARRY(((!\Add0~92COUT1_226\) # (!count(27))))

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
	datab => count(27),
	cin => \Add0~87\,
	cin0 => \Add0~92\,
	cin1 => \Add0~92COUT1_226\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~95_combout\,
	cout0 => \Add0~97\,
	cout1 => \Add0~97COUT1_228\);

-- Location: LC_X5_Y2_N5
\count[27]\ : maxii_lcell
-- Equation(s):
-- count(27) = DFFEAS((((!\st~regout\ & \Add0~95_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \st~regout\,
	datad => \Add0~95_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(27));

-- Location: LC_X5_Y3_N2
\Add0~100\ : maxii_lcell
-- Equation(s):
-- \Add0~100_combout\ = (count(28) $ ((!(!\Add0~87\ & \Add0~97\) # (\Add0~87\ & \Add0~97COUT1_228\))))
-- \Add0~102\ = CARRY(((count(28) & !\Add0~97\)))
-- \Add0~102COUT1_230\ = CARRY(((count(28) & !\Add0~97COUT1_228\)))

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
	datab => count(28),
	cin => \Add0~87\,
	cin0 => \Add0~97\,
	cin1 => \Add0~97COUT1_228\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~100_combout\,
	cout0 => \Add0~102\,
	cout1 => \Add0~102COUT1_230\);

-- Location: LC_X5_Y2_N7
\count[28]\ : maxii_lcell
-- Equation(s):
-- count(28) = DFFEAS((((!\st~regout\ & \Add0~100_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \st~regout\,
	datad => \Add0~100_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(28));

-- Location: LC_X5_Y3_N3
\Add0~105\ : maxii_lcell
-- Equation(s):
-- \Add0~105_combout\ = (count(29) $ (((!\Add0~87\ & \Add0~102\) # (\Add0~87\ & \Add0~102COUT1_230\))))
-- \Add0~107\ = CARRY(((!\Add0~102\) # (!count(29))))
-- \Add0~107COUT1_232\ = CARRY(((!\Add0~102COUT1_230\) # (!count(29))))

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
	datab => count(29),
	cin => \Add0~87\,
	cin0 => \Add0~102\,
	cin1 => \Add0~102COUT1_230\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~105_combout\,
	cout0 => \Add0~107\,
	cout1 => \Add0~107COUT1_232\);

-- Location: LC_X5_Y2_N1
\count[30]\ : maxii_lcell
-- Equation(s):
-- count(30) = DFFEAS((((!\st~regout\ & \Add0~110_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \st~regout\,
	datad => \Add0~110_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(30));

-- Location: LC_X5_Y3_N4
\Add0~110\ : maxii_lcell
-- Equation(s):
-- \Add0~110_combout\ = count(30) $ ((((!(!\Add0~87\ & \Add0~107\) # (\Add0~87\ & \Add0~107COUT1_232\)))))
-- \Add0~112\ = CARRY((count(30) & ((!\Add0~107COUT1_232\))))

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
	dataa => count(30),
	cin => \Add0~87\,
	cin0 => \Add0~107\,
	cin1 => \Add0~107COUT1_232\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~110_combout\,
	cout => \Add0~112\);

-- Location: LC_X5_Y2_N8
\count[31]\ : maxii_lcell
-- Equation(s):
-- count(31) = DFFEAS((((!\st~regout\ & \Add0~115_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \st~regout\,
	datad => \Add0~115_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(31));

-- Location: LC_X5_Y3_N5
\Add0~115\ : maxii_lcell
-- Equation(s):
-- \Add0~115_combout\ = ((\Add0~112\ $ (count(31))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => count(31),
	cin => \Add0~112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~115_combout\);

-- Location: LC_X5_Y3_N6
\st~6\ : maxii_lcell
-- Equation(s):
-- \st~6_combout\ = (!\Add0~105_combout\ & (!\Add0~100_combout\ & (!\Add0~110_combout\ & !\Add0~115_combout\)))

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
	dataa => \Add0~105_combout\,
	datab => \Add0~100_combout\,
	datac => \Add0~110_combout\,
	datad => \Add0~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \st~6_combout\);

-- Location: LC_X5_Y3_N8
\st~5\ : maxii_lcell
-- Equation(s):
-- \st~5_combout\ = (!\Add0~80_combout\ & (!\Add0~95_combout\ & (!\Add0~90_combout\ & !\Add0~85_combout\)))

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
	dataa => \Add0~80_combout\,
	datab => \Add0~95_combout\,
	datac => \Add0~90_combout\,
	datad => \Add0~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \st~5_combout\);

-- Location: LC_X7_Y3_N8
\st~0\ : maxii_lcell
-- Equation(s):
-- \st~0_combout\ = (!\st~regout\ & (!\Add0~5_combout\ & (!\Add0~10_combout\ & !\Add0~15_combout\)))

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
	dataa => \st~regout\,
	datab => \Add0~5_combout\,
	datac => \Add0~10_combout\,
	datad => \Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \st~0_combout\);

-- Location: LC_X7_Y3_N0
\st~1\ : maxii_lcell
-- Equation(s):
-- \st~1_combout\ = (!\Add0~25_combout\ & (!\Add0~20_combout\ & (!\Add0~35_combout\ & !\Add0~30_combout\)))

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
	dataa => \Add0~25_combout\,
	datab => \Add0~20_combout\,
	datac => \Add0~35_combout\,
	datad => \Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \st~1_combout\);

-- Location: LC_X7_Y3_N5
\st~2\ : maxii_lcell
-- Equation(s):
-- \st~2_combout\ = (!\Add0~40_combout\ & (!\Add0~50_combout\ & (!\Add0~45_combout\ & !\Add0~55_combout\)))

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
	dataa => \Add0~40_combout\,
	datab => \Add0~50_combout\,
	datac => \Add0~45_combout\,
	datad => \Add0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \st~2_combout\);

-- Location: LC_X7_Y3_N3
\st~3\ : maxii_lcell
-- Equation(s):
-- \st~3_combout\ = (!\Add0~60_combout\ & (!\Add0~70_combout\ & (!\Add0~75_combout\ & !\Add0~65_combout\)))

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
	dataa => \Add0~60_combout\,
	datab => \Add0~70_combout\,
	datac => \Add0~75_combout\,
	datad => \Add0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \st~3_combout\);

-- Location: LC_X7_Y3_N4
\st~4\ : maxii_lcell
-- Equation(s):
-- \st~4_combout\ = (\st~0_combout\ & (\st~1_combout\ & (\st~2_combout\ & \st~3_combout\)))

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
	dataa => \st~0_combout\,
	datab => \st~1_combout\,
	datac => \st~2_combout\,
	datad => \st~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \st~4_combout\);

-- Location: LC_X6_Y3_N2
\st~7\ : maxii_lcell
-- Equation(s):
-- \st~7_combout\ = ((\st~6_combout\ & (\st~5_combout\ & \st~4_combout\)))

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
	datab => \st~6_combout\,
	datac => \st~5_combout\,
	datad => \st~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \st~7_combout\);

-- Location: LC_X6_Y3_N0
\st~10\ : maxii_lcell
-- Equation(s):
-- \st~10_combout\ = (\Add0~140_combout\ & (\st~9_combout\ & (\st~8_combout\ & \st~7_combout\)))

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
	dataa => \Add0~140_combout\,
	datab => \st~9_combout\,
	datac => \st~8_combout\,
	datad => \st~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \st~10_combout\);

-- Location: LC_X6_Y3_N1
st : maxii_lcell
-- Equation(s):
-- \st~regout\ = DFFEAS((\st~10_combout\) # ((index(2) & (index(1) & \index[2]~1_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => index(2),
	datab => index(1),
	datac => \index[2]~1_combout\,
	datad => \st~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \st~regout\);

-- Location: LC_X5_Y4_N6
\command[0]~0\ : maxii_lcell
-- Equation(s):
-- \command[0]~0_combout\ = (\st~regout\ & (((index(1) & index(2))) # (!\Equal7~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st~regout\,
	datab => index(1),
	datac => \Equal7~1\,
	datad => index(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \command[0]~0_combout\);

-- Location: LC_X6_Y4_N4
\Equal7~0\ : maxii_lcell
-- Equation(s):
-- \Equal7~0_combout\ = (((command(0) & command(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => command(0),
	datad => command(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal7~0_combout\);

-- Location: LC_X5_Y4_N7
\command[2]\ : maxii_lcell
-- Equation(s):
-- command(2) = DFFEAS((\command[0]~0_combout\ & ((\Equal8~0_combout\) # (command(2) $ (\Equal7~0_combout\)))) # (!\command[0]~0_combout\ & (((command(2))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "daf8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \command[0]~0_combout\,
	datab => \Equal8~0_combout\,
	datac => command(2),
	datad => \Equal7~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => command(2));

-- Location: LC_X5_Y4_N1
\command[3]~4\ : maxii_lcell
-- Equation(s):
-- \command[3]~4_combout\ = (\command[0]~0_combout\ & (command(3) $ (((command(2) & \Equal7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "60a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => command(3),
	datab => command(2),
	datac => \command[0]~0_combout\,
	datad => \Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \command[3]~4_combout\);

-- Location: LC_X5_Y4_N8
\command[3]\ : maxii_lcell
-- Equation(s):
-- command(3) = DFFEAS((command(3) & (((\command[3]~4_combout\ & !\Equal8~0_combout\)) # (!\st~regout\))) # (!command(3) & (\command[3]~4_combout\ & ((!\Equal8~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ace",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => command(3),
	datab => \command[3]~4_combout\,
	datac => \st~regout\,
	datad => \Equal8~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => command(3));

-- Location: LC_X5_Y4_N9
\Selector6~0\ : maxii_lcell
-- Equation(s):
-- \Selector6~0_combout\ = (index(2) & ((index(1) & (\data_out[0]~reg0_regout\)) # (!index(1) & ((!index(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "880c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[0]~reg0_regout\,
	datab => index(2),
	datac => index(0),
	datad => index(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector6~0_combout\);

-- Location: LC_X5_Y4_N3
\data_out[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \data_out[0]~reg0_regout\ = DFFEAS((!command(3) & (\Equal7~0_combout\ & ((\Selector6~0_combout\) # (!command(2))))), GLOBAL(\clk~combout\), VCC, , \st~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => command(3),
	datab => \Selector6~0_combout\,
	datac => command(2),
	datad => \Equal7~0_combout\,
	aclr => GND,
	ena => \st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_out[0]~reg0_regout\);

-- Location: LC_X5_Y4_N4
\Selector5~0\ : maxii_lcell
-- Equation(s):
-- \Selector5~0_combout\ = ((index(2) & ((\data_out[1]~reg0_regout\))) # (!index(2) & (!index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f055",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datac => \data_out[1]~reg0_regout\,
	datad => index(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector5~0_combout\);

-- Location: LC_X5_Y4_N0
\data_out[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \data_out[1]~reg0_regout\ = DFFEAS((\Equal8~0_combout\) # ((\Selector5~0_combout\ & (\Equal7~1\ & index(1)))), GLOBAL(\clk~combout\), VCC, , \st~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Selector5~0_combout\,
	datab => \Equal8~0_combout\,
	datac => \Equal7~1\,
	datad => index(1),
	aclr => GND,
	ena => \st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_out[1]~reg0_regout\);

-- Location: LC_X6_Y2_N1
\Selector4~0\ : maxii_lcell
-- Equation(s):
-- \Selector4~0_combout\ = (index(2) & (\data_out[2]~reg0_regout\ & ((index(1))))) # (!index(2) & (((!index(0) & !index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8805",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => \data_out[2]~reg0_regout\,
	datac => index(0),
	datad => index(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector4~0_combout\);

-- Location: LC_X6_Y4_N6
\Equal7~2\ : maxii_lcell
-- Equation(s):
-- \Equal7~2_combout\ = (((!command(3) & command(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => command(3),
	datad => command(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal7~2_combout\);

-- Location: LC_X6_Y2_N2
\data_out[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \data_out[2]~reg0_regout\ = DFFEAS((command(0) & (\Equal7~2_combout\ & ((\Selector4~0_combout\) # (!command(1))))), GLOBAL(\clk~combout\), VCC, , \st~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => command(0),
	datab => \Selector4~0_combout\,
	datac => command(1),
	datad => \Equal7~2_combout\,
	aclr => GND,
	ena => \st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_out[2]~reg0_regout\);

-- Location: LC_X6_Y2_N7
\Selector3~0\ : maxii_lcell
-- Equation(s):
-- \Selector3~0_combout\ = (index(1) & ((index(2) & ((\data_out[3]~reg0_regout\))) # (!index(2) & (!index(0))))) # (!index(1) & (((!index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c707",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datab => index(1),
	datac => index(2),
	datad => \data_out[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector3~0_combout\);

-- Location: LC_X6_Y2_N3
\data_out[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \data_out[3]~reg0_regout\ = DFFEAS((\Equal7~2_combout\ & (((command(0) & \Selector3~0_combout\)) # (!command(1)))), GLOBAL(\clk~combout\), VCC, , \st~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => command(0),
	datab => \Selector3~0_combout\,
	datac => command(1),
	datad => \Equal7~2_combout\,
	aclr => GND,
	ena => \st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_out[3]~reg0_regout\);

-- Location: LC_X6_Y2_N0
\data_out[4]~0\ : maxii_lcell
-- Equation(s):
-- \data_out[4]~0_combout\ = (index(2)) # ((index(0) $ (index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "affa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datac => index(0),
	datad => index(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_out[4]~0_combout\);

-- Location: LC_X6_Y4_N0
\data_out[4]~1\ : maxii_lcell
-- Equation(s):
-- \data_out[4]~1_combout\ = (command(1) & ((command(2) & (command(0) & \data_out[4]~0_combout\)) # (!command(2) & (!command(0))))) # (!command(1) & (((!command(0))) # (!command(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9717",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => command(1),
	datab => command(2),
	datac => command(0),
	datad => \data_out[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_out[4]~1_combout\);

-- Location: LC_X6_Y4_N1
\data_out[4]~reg0\ : maxii_lcell
-- Equation(s):
-- \data_out[4]~reg0_regout\ = DFFEAS((((!command(3) & \data_out[4]~1_combout\))), GLOBAL(\clk~combout\), VCC, , \data_out[5]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => command(3),
	datad => \data_out[4]~1_combout\,
	aclr => GND,
	ena => \data_out[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_out[4]~reg0_regout\);

-- Location: LC_X6_Y4_N2
\data_out[5]~4\ : maxii_lcell
-- Equation(s):
-- \data_out[5]~4_combout\ = (command(0) & (command(1) & ((index(2)) # (index(1))))) # (!command(0) & (((!command(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => index(1),
	datac => command(0),
	datad => command(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_out[5]~4_combout\);

-- Location: LC_X6_Y4_N3
\data_out[5]~reg0\ : maxii_lcell
-- Equation(s):
-- \data_out[5]~reg0_regout\ = DFFEAS((!command(3) & ((command(2) & ((\data_out[5]~4_combout\))) # (!command(2) & (!\Equal7~0_combout\)))), GLOBAL(\clk~combout\), VCC, , \data_out[5]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0d01",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal7~0_combout\,
	datab => command(2),
	datac => command(3),
	datad => \data_out[5]~4_combout\,
	aclr => GND,
	ena => \data_out[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_out[5]~reg0_regout\);

-- Location: LC_X6_Y4_N5
\data_out[6]~reg0\ : maxii_lcell
-- Equation(s):
-- \data_out[6]~reg0_regout\ = DFFEAS((!index(2) & (!index(1) & ((\Equal7~1\)))), GLOBAL(\clk~combout\), VCC, , \data_out[5]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => index(2),
	datab => index(1),
	datad => \Equal7~1\,
	aclr => GND,
	ena => \data_out[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_out[6]~reg0_regout\);

-- Location: LC_X6_Y2_N9
\Selector0~0\ : maxii_lcell
-- Equation(s):
-- \Selector0~0_combout\ = (index(2) & (((\data_out[7]~reg0_regout\ & index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datac => \data_out[7]~reg0_regout\,
	datad => index(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector0~0_combout\);

-- Location: LC_X6_Y2_N5
\data_out[7]~reg0\ : maxii_lcell
-- Equation(s):
-- \data_out[7]~reg0_regout\ = DFFEAS((command(1) & (\Equal7~2_combout\ & ((\Selector0~0_combout\) # (!command(0))))), GLOBAL(\clk~combout\), VCC, , \st~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => command(0),
	datab => \Selector0~0_combout\,
	datac => command(1),
	datad => \Equal7~2_combout\,
	aclr => GND,
	ena => \st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_out[7]~reg0_regout\);

-- Location: LC_X6_Y3_N6
\EN~2\ : maxii_lcell
-- Equation(s):
-- \EN~2_combout\ = (\EN~reg0_regout\ & (\Add0~145_combout\ & (!\Add0~150_combout\ & !\Add0~155_combout\))) # (!\EN~reg0_regout\ & (!\Add0~145_combout\ & (\Add0~150_combout\ & \Add0~155_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EN~reg0_regout\,
	datab => \Add0~145_combout\,
	datac => \Add0~150_combout\,
	datad => \Add0~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \EN~2_combout\);

-- Location: LC_X6_Y3_N9
\EN~0\ : maxii_lcell
-- Equation(s):
-- \EN~0_combout\ = (!\Add0~125_combout\ & (!\Add0~135_combout\ & (!\Add0~130_combout\ & \Add0~120_combout\)))

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
	dataa => \Add0~125_combout\,
	datab => \Add0~135_combout\,
	datac => \Add0~130_combout\,
	datad => \Add0~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \EN~0_combout\);

-- Location: LC_X6_Y3_N3
\EN~1\ : maxii_lcell
-- Equation(s):
-- \EN~1_combout\ = (!\Add0~140_combout\ & (\EN~0_combout\ & ((\st~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~140_combout\,
	datab => \EN~0_combout\,
	datad => \st~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \EN~1_combout\);

-- Location: LC_X6_Y3_N4
\EN~reg0\ : maxii_lcell
-- Equation(s):
-- \EN~reg0_regout\ = DFFEAS((\EN~2_combout\ & ((\EN~1_combout\ & ((!\Add0~0_combout\))) # (!\EN~1_combout\ & (\EN~reg0_regout\)))) # (!\EN~2_combout\ & (\EN~reg0_regout\)), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \EN~reg0_regout\,
	datab => \Add0~0_combout\,
	datac => \EN~2_combout\,
	datad => \EN~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EN~reg0_regout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_out[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_out[0]~reg0_regout\,
	oe => VCC,
	padio => ww_data_out(0));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_out[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_out[1]~reg0_regout\,
	oe => VCC,
	padio => ww_data_out(1));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_out[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_out[2]~reg0_regout\,
	oe => VCC,
	padio => ww_data_out(2));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_out[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_out[3]~reg0_regout\,
	oe => VCC,
	padio => ww_data_out(3));

-- Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_out[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_out[4]~reg0_regout\,
	oe => VCC,
	padio => ww_data_out(4));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_out[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_out[5]~reg0_regout\,
	oe => VCC,
	padio => ww_data_out(5));

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_out[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_out[6]~reg0_regout\,
	oe => VCC,
	padio => ww_data_out(6));

-- Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_out[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_out[7]~reg0_regout\,
	oe => VCC,
	padio => ww_data_out(7));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RS~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RS~reg0_regout\,
	oe => VCC,
	padio => ww_RS);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RW~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_RW);

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\EN~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_EN~reg0_regout\,
	oe => VCC,
	padio => ww_EN);

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lx_hang_nghin[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lx_hang_nghin(0));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lx_hang_nghin[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lx_hang_nghin(1));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lx_hang_nghin[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lx_hang_nghin(2));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lx_hang_nghin[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lx_hang_nghin(3));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lx_hang_nghin[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lx_hang_nghin(4));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lx_hang_nghin[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lx_hang_nghin(5));

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lx_hang_nghin[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lx_hang_nghin(6));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lx_hang_nghin[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lx_hang_nghin(7));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lx_hang_tram[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lx_hang_tram(0));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lx_hang_tram[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lx_hang_tram(1));

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lx_hang_tram[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lx_hang_tram(2));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lx_hang_tram[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lx_hang_tram(3));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lx_hang_tram[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lx_hang_tram(4));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lx_hang_tram[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lx_hang_tram(5));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lx_hang_tram[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lx_hang_tram(6));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lx_hang_tram[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lx_hang_tram(7));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lx_hang_chuc[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lx_hang_chuc(0));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lx_hang_chuc[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lx_hang_chuc(1));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lx_hang_chuc[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lx_hang_chuc(2));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lx_hang_chuc[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lx_hang_chuc(3));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lx_hang_chuc[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lx_hang_chuc(4));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lx_hang_chuc[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lx_hang_chuc(5));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lx_hang_chuc[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lx_hang_chuc(6));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lx_hang_chuc[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lx_hang_chuc(7));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lx_hang_don_vi[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lx_hang_don_vi(0));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lx_hang_don_vi[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lx_hang_don_vi(1));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lx_hang_don_vi[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lx_hang_don_vi(2));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lx_hang_don_vi[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lx_hang_don_vi(3));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lx_hang_don_vi[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lx_hang_don_vi(4));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lx_hang_don_vi[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lx_hang_don_vi(5));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lx_hang_don_vi[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lx_hang_don_vi(6));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lx_hang_don_vi[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lx_hang_don_vi(7));
END structure;


