library verilog;
use verilog.vl_types.all;
entity REGISTER_FINAL is
    port(
        clk             : in     vl_logic;
        \in\            : in     vl_logic_vector(127 downto 0);
        ena             : in     vl_logic;
        \out\           : out    vl_logic_vector(127 downto 0)
    );
end REGISTER_FINAL;
