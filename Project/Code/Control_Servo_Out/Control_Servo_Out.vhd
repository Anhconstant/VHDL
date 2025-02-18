LIBRARY ieee;
use ieee.std_logic_1164.all; 
LIBRARY std; 
USE std.standard.all; 
LIBRARY work;
USE work.all;

entity Control_Servo_Out is port(
sig_out : in std_logic;
CLK : in std_logic;
PWM_Servo_Out: out std_logic
);
end Control_Servo_Out;

architecture ACT of Control_Servo_Out  is
begin
	process(CLK)
	variable counter: integer range 0 to 20 := 0; --tao xung 20ms
	variable duty: integer range 0 to 2:= 0;
	begin
		if (rising_edge(CLK)) then
			counter:= counter + 1;
			if (sig_out = '0') then
				duty := 1; -- SERVO dang mo --> dong
			else
				duty := 2; -- SERVO dang dong --> mo
			end if;
			
			if (counter <= duty) then
				PWM_Servo_Out <= '1';
			else
				PWM_Servo_Out <= '0';
			end if;
			
			if (counter = 20) then
				counter:= 0;
			end if;
		end if;
	end process;
end ACT;