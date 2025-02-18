library verilog;
use verilog.vl_types.all;
entity System_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        sensor_in       : in     vl_logic;
        sensor_out      : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end System_vlg_sample_tst;
