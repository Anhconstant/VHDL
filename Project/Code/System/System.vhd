library ieee;
use ieee.std_logic_1164.all;
LIBRARY std; 
USE std.standard.all; 
LIBRARY work;
USE work.all;
entity System is
port(
	count_debug: out integer range 0 to 99; 
	clk: in std_logic;
   ------dau vao cam bien-------
	sensor_in : in std_LOGIC;
	sensor_out : in std_LOGIC;
	--------------LED----------
	Led_in, Led_out: out std_LOGIC;
	------------servo----------
	out_servo_in: out std_LOGIC;
	out_servo_out: out std_LOGIC;
   -----------------LCD-----------
	LCD_E: out std_logic;
	LCD_RS: out std_logic;
	LCD_RW: out std_logic;
	LCD_data: out std_logic_vector (7 downto 0)
);
end System;

architecture ACT of System is
--signal data_real : integer range 0 to 99;
signal countcar_temp : integer range 0 to 99 := 0; 					--dem xe
signal signal_in_temp: std_logic; 											-- tin hieu tu cam bien vao
signal signal_out_temp:std_logic;											-- tin hieu tu cam bien ra
signal CLK_New_temp: std_LOGIC; -- tan so moi
signal chuc_ascii_temp:  std_LOGIC_vector (7 downto 0); 				-- so hang chuc o ascii
signal donvi_ascii_temp: std_LOGIC_vector (7 downto 0); 				-- donvi o ascii

component Sensor_Unit Is port (
CLK: in std_logic; 
sensor_in: in std_logic; 														-- input cua cam bien xe vao/ra, = 0 khi co xe
sensor_out : in std_LOGIC;
sig_in: out std_logic; 															-- output cua 2 cam bien
sig_out: out std_LOGIC;
count_car: out integer range 0 to 99:=0 									-- bien dem xe 
); 													
end component;

component NewClock Is port(
CLK: in std_logic; 																-- input la xung 50MHz cua kit
CLK_New: out std_logic); 														-- output la xung can su dung);
end component;

component Control_Servo_In Is port (
sig_in : in std_logic; 															-- tin hieu dau ra cua cam bien vao
CLK : in std_logic;
PWM_Servo_In: out std_logic 													-- PWM output dieu khien servo
);
end component;

component Control_Servo_Out Is port (
sig_out : in std_logic;
CLK : in std_logic;
PWM_Servo_Out: out std_logic
);
end component;

component Led_Control Is port (
sig_in, sig_out: in std_logic; 												-- tin hieu dau ra cua khoi cam bien xe vao/ra
CLK: in std_logic; 
led_in, led_out: out std_logic 												-- tin hieu dieu khien den
);
end component;

component Bin_Ascii_Converter Is port (
clk : in std_LOGIC;
data_in : in integer range 0 to 99; 										-- so luong xe
chuc_ascii : out  STD_LOGIC_VECTOR (7 downto 0); 						-- hang chuc o ma ascii
donvi_ascii: out std_LOGIC_VECTOR(7 downto 0) 							-- donvi o ma ascii
);
end component;

component LCD_V1 Is port (
	--flag : in std_LOGIC;
	data_out: OUT STD_LOGIC_VECTOR(7 downto 0):="00000000";
	RS: OUT STD_LOGIC; -- Chân RS của LCD (Register Select)
	RW: OUT STD_LOGIC := '0'; -- Chân RW của LCD (đọc ghi dữ liệu)
	EN: OUT STD_LOGIC := '1'; -- Chân kích hoạt LCD
	clk: IN STD_LOGIC;

	hang_chuc: in std_logic_vector( 7 downto 0);
	hang_don_vi: in std_logic_vector(7 downto 0)
);
end component;

begin
B0: Sensor_Unit Port map (CLK_NEW_TEMP, sensor_in, sensor_out, signal_in_temp, signal_out_temp, countcar_temp);
B1: NewClock Port map (CLK, CLK_New_temp);
B2: Control_Servo_In Port map (signal_in_temp, CLK_New_temp, Out_servo_in);
B3: Control_Servo_Out Port map (signal_out_temp, CLK_New_temp, Out_servo_out);
B4: Led_Control Port map (signal_in_temp, signal_out_temp, CLK_NEW_TEMP, led_in, led_out);
B5: Bin_Ascii_Converter Port map (clk_NEW_TEMP,countcar_temp, chuc_ascii_temp, donvi_ascii_temp);
B6: LCD_V1 Port map ( LCD_Data, LCD_RS, LCD_RW, LCD_E,clk_new_temp, chuc_ascii_temp, donvi_ascii_temp);
count_debug <= countcar_temp;
end ACT;



