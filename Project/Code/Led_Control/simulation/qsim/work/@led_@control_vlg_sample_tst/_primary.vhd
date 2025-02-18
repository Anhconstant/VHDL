library verilog;
use verilog.vl_types.all;
entity Led_Control_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        sig_in          : in     vl_logic;
        sig_out         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Led_Control_vlg_sample_tst;
