library verilog;
use verilog.vl_types.all;
entity PC_2 is
    port(
        \In\            : in     vl_logic_vector(111 downto 0);
        Round_key       : out    vl_logic_vector(95 downto 0)
    );
end PC_2;
