LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
LiBRARY std;
USE std.standard.all;
LIBRARY work;
USE work.all;

entity LCD_V1 is
port (
	data_out: OUT STD_LOGIC_VECTOR(7 downto 0):="00000000";
	RS: OUT STD_LOGIC; -- Chân RS của LCD (Register Select)
	RW: OUT STD_LOGIC := '0'; -- Chân RW của LCD (đọc ghi dữ liệu)
	EN: OUT STD_LOGIC := '1'; -- Chân kích hoạt LCD
	clk: IN STD_LOGIC;

	HANG_CHUC: in std_logic_vector( 7 downto 0);
	HANG_DON_VI: in std_logic_vector(7 downto 0)
);
end LCD_V1;

architecture ACT of LCD_V1 is
	type state is (delay, data_send);
	signal st: state := delay;
	type lcd_light is array ( 0 to 7) of std_logic_vector( 7 downto 0 );
begin
	process (clk)
	variable count: integer RANGE 0 TO 5:= 0;
	variable command: integer range 0 to 8 := 0;
	variable lcd_light_data: lcd_light := (x"53", x"4F", x"20", x"58",x"45",x"3A", x"30", x"30"); -- SO XE: 00
	variable index: integer range 0 to 8 := 0;
	begin

	lcd_light_data(6) := HANG_CHUC;
	lcd_light_data(7) := HANG_DON_VI;
	if (rising_edge(clk)) then
		case st is
			when delay =>
				count := count + 1;
				if (count = 1) then 
					EN <= '0';
				end if;
				if (count = 2) then -- Đưa xung vào chân EN để ghi
					EN <= '1';
				end if;
				if (count = 4) then -- Chờ 2ms để thực hiện lệnh
					st <= data_send;
				end if;
			when data_send =>
				count := 0;
				case command is
				   when 0 to 2 =>	-- doi len nguon
			--			data_out <= "00110011";
						RS <= '0';
						command := command +1;
						st <= delay;
					when 3 =>
						data_out <= x"01";  -- 0x01  xóa màn hình
						RS <= '0';
						command := command +1;
						st <= delay;
					when 4 =>
						data_out <= x"38";  -- 0x38  2 hàng, 5x7
						RS <= '0';
						command := command +1;
						st <= delay;
					when 5 =>
						data_out <= x"0C";  -- 0x0C bật hiển thị, tắt con trỏ
						RS <= '0';
						command := command +1;
						st <= delay;
					when 6 => 
						data_out <= x"80";  ---0x80: đưa con trỏ về đầu dòng 1
						RS <= '0';
						command := command +1;
						st <= delay;
					when 7 =>
						if (index < 8 ) then
						data_out <= lcd_light_data(index);
						RS <= '1';
						index := index +1;
						st <= delay;
						else
						index := 0;
						command:=command+1;
						end if;
					when 8 =>
					   data_out <= x"02";  ---0x02: return home
						RS <= '0';
						command := 7;
						st <= delay;
					when others =>
						data_out <= x"00";
				end case;
		end case;
	end if;	
	end process;
end ACT;				