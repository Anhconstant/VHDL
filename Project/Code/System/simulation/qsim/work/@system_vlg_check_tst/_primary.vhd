library verilog;
use verilog.vl_types.all;
entity System_vlg_check_tst is
    port(
        count_debug     : in     vl_logic_vector(6 downto 0);
        LCD_data        : in     vl_logic_vector(7 downto 0);
        LCD_E           : in     vl_logic;
        LCD_RS          : in     vl_logic;
        LCD_RW          : in     vl_logic;
        Led_in          : in     vl_logic;
        Led_out         : in     vl_logic;
        out_servo_in    : in     vl_logic;
        out_servo_out   : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end System_vlg_check_tst;
