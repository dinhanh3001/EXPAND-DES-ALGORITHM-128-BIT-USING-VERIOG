library verilog;
use verilog.vl_types.all;
entity E_XOR_KEY is
    port(
        E               : in     vl_logic_vector(95 downto 0);
        K               : in     vl_logic_vector(95 downto 0);
        S1              : out    vl_logic_vector(5 downto 0);
        S2              : out    vl_logic_vector(5 downto 0);
        S3              : out    vl_logic_vector(5 downto 0);
        S4              : out    vl_logic_vector(5 downto 0);
        S5              : out    vl_logic_vector(5 downto 0);
        S6              : out    vl_logic_vector(5 downto 0);
        S7              : out    vl_logic_vector(5 downto 0);
        S8              : out    vl_logic_vector(5 downto 0);
        S9              : out    vl_logic_vector(5 downto 0);
        S10             : out    vl_logic_vector(5 downto 0);
        S11             : out    vl_logic_vector(5 downto 0);
        S12             : out    vl_logic_vector(5 downto 0);
        S13             : out    vl_logic_vector(5 downto 0);
        S14             : out    vl_logic_vector(5 downto 0);
        S15             : out    vl_logic_vector(5 downto 0);
        S16             : out    vl_logic_vector(5 downto 0)
    );
end E_XOR_KEY;
