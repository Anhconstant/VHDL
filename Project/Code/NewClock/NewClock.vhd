LIBRARY ieee;
use ieee.std_logic_1164.all; 
LIBRARY std; 
USE std.standard.all; 
LIBRARY work;
USE work.all;

entity NewClock is
port(
CLK: in std_logic; 							-- xung clock 
CLK_New: out std_logic 						-- output la xung 1ms
);
end NewClock;

architecture ACT of NewClock is
	signal temp: std_logic:='0'; 			-- bien phu de luu gia tri dao xung
	begin
		process(CLK)
		variable counter: integer range 0 to 25000:= 0;
		begin
			if (rising_edge(CLK)) then
				if (counter = 25000) then
					temp <= not (temp);		--den 25000 xung CLK thi xuat 1 xung moi (1ms)
					counter :=0;				
				else
					counter:= counter + 1;
				end if;
			end if;
		end process;
		CLK_New <= temp;
end ACT; 