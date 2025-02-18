library verilog;
use verilog.vl_types.all;
entity Led_Control is
    port(
        sig_in          : in     vl_logic;
        sig_out         : in     vl_logic;
        CLK             : in     vl_logic;
        led_in          : out    vl_logic;
        led_out         : out    vl_logic
    );
end Led_Control;
