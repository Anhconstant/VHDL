library verilog;
use verilog.vl_types.all;
entity System is
    port(
        count_debug     : out    vl_logic_vector(6 downto 0);
        clk             : in     vl_logic;
        sensor_in       : in     vl_logic;
        sensor_out      : in     vl_logic;
        Led_in          : out    vl_logic;
        Led_out         : out    vl_logic;
        out_servo_in    : out    vl_logic;
        out_servo_out   : out    vl_logic;
        LCD_E           : out    vl_logic;
        LCD_RS          : out    vl_logic;
        LCD_RW          : out    vl_logic;
        LCD_data        : out    vl_logic_vector(7 downto 0)
    );
end System;
