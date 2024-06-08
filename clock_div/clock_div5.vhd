library ieee;
use ieee.std_logic_1164.all;

entity clock_div5 is port(
-- div 2
	clk_in: in std_logic;
	
	clk_out: out std_logic
);
end clock_div5;

architecture behave of clock_div5 is
signal count:integer range 0 to 4:=0;
signal temp_clk:std_logic:='0';
begin
	process(clk_in)
		begin
			if(rising_edge(clk_in)) then
				if(count < 4) then 
					count<=	count+1;
				else
					count<=0;
					temp_clk<= not(temp_clk);
			end if;
		end if;
	end process;
	
	clk_out<= temp_clk;
end behave;