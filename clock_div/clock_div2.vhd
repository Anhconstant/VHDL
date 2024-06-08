library ieee;
use ieee.std_logic_1164.all;

entity clock_div2 is port(
-- div 2
	clk_in: in std_logic;
	
	clk_out: out std_logic
);
end clock_div2;

architecture behave of clock_div2 is
signal count:integer range 0 to 4:=0;
begin
	process(clk_in)
		begin
			if(rising_edge(clk_in)) then
				if(count = 0) then 
					clk_out<= '0';
					count<=	count+1;
				else clk_out<= '1';
					count<= 0;
			end if;
		end if;
	end process;
end behave;