library verilog;
use verilog.vl_types.all;
entity F_FUNCTION is
    port(
        R               : in     vl_logic_vector(63 downto 0);
        Key             : in     vl_logic_vector(95 downto 0);
        F_out           : out    vl_logic_vector(63 downto 0)
    );
end F_FUNCTION;
