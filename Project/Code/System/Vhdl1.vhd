LIBRARY ieee;
use ieee.std_logic_1164.all; 
LIBRARY std; 
USE std.standard.all; 
LIBRARY work;
USE work.all;

entity Sensor_Unit is
port(
CLK: in std_logic; 
sensor_in, sensor_out: in std_logic; -- input cua cam bien xe vao/ra, = 0 khi co xe
sig_in, sig_out: out std_logic; -- output cua 2 cam bien
count_car: out integer range 0 to 99:=0 -- bien dem xe 
);
end Sensor_Unit;

architecture ACT of Sensor_Unit is
signal count_car_temp: integer range 0 to 99 := 0; -- bien phu dem xe
signal counter1: integer range 0 to 2000:=0;
	type state_in is (start_in, waiting_in, countup, delay_in);
	signal st_in: state_in := start_in;
signal counter2: integer range 0 to 2000:=0;
	type state_out is (start_out, waiting_out, countdown, delay_out);
	signal st_out: state_out := start_out;
begin
		process(CLK)
		begin
		if (rising_edge(CLK)) then
			if (sensor_in ='1') then -- input cam bien vao = 1 (khong co xe) thi output = 0
				sig_in<= '0';
			else
				sig_in <= '1'; -- input cam bien vao = 0(co xe vao) thi output = 1, so xe +1
			end if;
			
			case st_in is
				when start_in =>
					counter1 <= 0;
					if (sensor_in = '0') then st_in <= waiting_in;
					else							  st_in <= start_in;
					end if;
					
				when waiting_in =>
					counter1 <= counter1 + 1;
					if (counter1 = 2000) then st_in <= countup;
					else								st_in <= waiting_in;
					end if;
					if (sensor_in='1') then st_in <= start_in;
					end if;
					
				when countup =>
					count_car_temp <= count_car_temp + 1;
					if (sensor_in='1') then st_in <= start_in;
					else st_in <= delay_in;
					end if;
					
				when delay_in =>
					if (sensor_in='1') then st_in <= start_in;
					else st_in <= delay_in;
					end if;
			end case;

			if (sensor_out ='1') then
				sig_out <= '0';
			else
				sig_out <= '1'; -- input cam bien ra = 0(co xe ra) thi output = 1, so xe -1
			end if;
				
			case st_out is
				when start_out =>
					counter2 <= 0;
					if (sensor_out = '0') then st_out <= waiting_out;
					else							  st_out <= start_out;
					end if;
					
				when waiting_out =>
					counter1 <= counter1 + 1;
					if (counter2 = 2000) then st_out <= countdown;
					else								st_out<= waiting_out;
					end if;
					if (sensor_out='1') then st_out <= start_out;
					end if;
					
				when countdown =>
					count_car_temp <= count_car_temp - 1;
					if (sensor_out'1') then st_out <= start_out;
					else st_out <= delay_out;
					end if;
					
				when delay_out =>
					if (sensor_out'1') then st_out<= start_out;
					else st_out <= delay_out;
					end if;
			end case;

		end if;
		end process;
		count_car <= count_car_temp;
end ACT