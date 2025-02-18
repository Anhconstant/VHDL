LIBRARY ieee;
use ieee.std_logic_1164.all; 
LIBRARY std; 
USE std.standard.all; 
LIBRARY work;
USE work.all;

entity Control_Servo_In is port(
sig_in : in std_logic; 				--  signal Input
CLK : in std_logic;
PWM_Servo_In: out std_logic 		-- PWM output control servo
);
end Control_Servo_In;

architecture ACT of Control_Servo_In  is
begin
	process(CLK)
	variable counter: integer range 0 to 20 := 0; -- Create Pwm 20ms
	variable duty: integer range 0 to 2:= 0;
	begin
		if (rising_edge(CLK)) then
			counter:= counter + 1;
			if (sig_in = '0') then
				duty := 2; --  servo 0 degree
			else
				duty := 1; --  servo 180 degree
			end if;
			
			if (counter <= duty) then
				PWM_Servo_In <= '1'; -- PWM HIGH in duty and LOW in others
			else
				PWM_Servo_In <= '0';
			end if;
			
			if (counter = 20) then -- counter 20
				counter:= 0;
			end if;
		end if;
	end process;
end ACT;