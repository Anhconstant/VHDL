library verilog;
use verilog.vl_types.all;
entity Clock_Devider is
    port(
        CLK             : in     vl_logic;
        CLK_1ms         : out    vl_logic
    );
end Clock_Devider;
