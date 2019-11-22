library verilog;
use verilog.vl_types.all;
entity compressor4to2 is
    port(
        x1              : in     vl_logic;
        x2              : in     vl_logic;
        x3              : in     vl_logic;
        x4              : in     vl_logic;
        Cin             : in     vl_logic;
        Sum             : out    vl_logic;
        Carry           : out    vl_logic;
        Cout            : out    vl_logic
    );
end compressor4to2;
