library verilog;
use verilog.vl_types.all;
entity IP_1 is
    port(
        \In\            : in     vl_logic_vector(127 downto 0);
        Reset           : in     vl_logic;
        Cipertext       : out    vl_logic_vector(127 downto 0)
    );
end IP_1;
