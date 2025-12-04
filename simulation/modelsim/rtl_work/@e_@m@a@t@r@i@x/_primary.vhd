library verilog;
use verilog.vl_types.all;
entity E_MATRIX is
    port(
        R               : in     vl_logic_vector(63 downto 0);
        E_OUT           : out    vl_logic_vector(95 downto 0)
    );
end E_MATRIX;
