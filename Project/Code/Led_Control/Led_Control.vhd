LIBRARY ieee;
use ieee.std_logic_1164.all; 
LIBRARY std; 
USE std.standard.all; 
LIBRARY work;
USE work.all;

entity Led_Control is port(
sig_in, sig_out: in std_logic; 	-- tin hieu dau ra cua khoi cam bien xe vao/ra
CLK: in std_logic; 					-- tin hieu xung clock dong bo
led_in, led_out: out std_logic 	-- tin hieu dieu khien den
);
end Led_Control;

architecture ACT of Led_Control  is
begin
		process(CLK)
		begin
			if (rising_edge(CLK)) then
			if (sig_in = '0') then led_in <= '0';
			else 						  led_in <= '1'; end if;
			if (sig_out = '0') then led_out <= '0';
			else 						  led_out <= '1'; end if;
			end if;
		end process;
end ACT;