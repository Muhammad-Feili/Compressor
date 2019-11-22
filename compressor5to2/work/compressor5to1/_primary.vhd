library verilog;
use verilog.vl_types.all;
entity compressor5to1 is
    port(
        x1              : in     vl_logic;
        x2              : in     vl_logic;
        x3              : in     vl_logic;
        x4              : in     vl_logic;
        x5              : in     vl_logic;
        Cin1            : in     vl_logic;
        Cin2            : in     vl_logic;
        Sum             : out    vl_logic;
        Carry           : out    vl_logic;
        Cout1           : out    vl_logic;
        Cout2           : out    vl_logic
    );
end compressor5to1;
