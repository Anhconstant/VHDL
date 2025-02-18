library verilog;
use verilog.vl_types.all;
entity Led_Control_vlg_check_tst is
    port(
        led_in          : in     vl_logic;
        led_out         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Led_Control_vlg_check_tst;
