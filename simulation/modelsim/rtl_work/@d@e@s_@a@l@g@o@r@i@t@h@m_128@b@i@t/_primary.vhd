library verilog;
use verilog.vl_types.all;
entity DES_ALGORITHM_128BIT is
    port(
        Plaintext       : in     vl_logic_vector(127 downto 0);
        Key_in          : in     vl_logic_vector(127 downto 0);
        Clk             : in     vl_logic;
        Clk_machine     : in     vl_logic;
        Reset           : in     vl_logic;
        Counter_machine : out    vl_logic_vector(4 downto 0);
        Cirphertext     : out    vl_logic_vector(127 downto 0);
        Done            : out    vl_logic
    );
end DES_ALGORITHM_128BIT;
