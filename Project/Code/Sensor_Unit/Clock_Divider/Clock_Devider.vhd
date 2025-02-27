
LIBRARY ieee;
use ieee.std_logic_1164.all; 
LIBRARY std; 
USE std.standard.all; 
LIBRARY work;
USE work.all;

entity Clock_Devider is
port(
CLK: in std_logic; -- input la xung 50MHz cua kit
CLK_1ms: out std_logic -- output la xung (1ms) can su dung
);
end Clock_Devider;

architecture ACT of Clock_Devider is
	signal temp: std_logic:='0'; -- bien phu de luu gia tri dao xung
	begin
		process(CLK)
		variable counter: integer range 0 to 50001:= 0;-- 50000 xung CLK thi co 1 xung CLK_1ms
		begin
			if (rising_edge(CLK)) then
				if (counter <= 50000) then
				counter := counter + 1;
				else
					temp <= not (temp);--dem 50000 xung CLK 
					counter :=0;--reset bien counter
					CLK_1ms <= temp;--gan CLK_1ms voi bien phus
				end if;
			end if;
		end process;
end ACT;