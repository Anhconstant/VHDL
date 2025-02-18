library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
use ieee.std_logic_arith.all;

entity test is
port(
	clk: in std_logic;
	data_in : in integer range 0 to 99; -- so luong xe
	chuc_ascii : out  STD_LOGIC_VECTOR (7 downto 0); -- hang chuc o ma ascii
	donvi_ascii: out std_LOGIC_VECTOR(7 downto 0) -- donvi o ma ascii
);
end test;

architecture ACT of test is
 signal chuc: integer range 0 to 9;
 signal donvi: integer range 0 to 9;

 begin
	
	chuc <= data_in / (10); -- chia lay nguyen
	donvi <= data_in - chuc* (10); -- chia lay du
	chuc_ascii <= "0011" & CONV_STD_LOGIC_VECTOR(chuc, 4);
	donvi_ascii <= "0011" & CONV_STD_LOGIC_VECTOR(donvi, 4);
	 
end ACT;