library verilog;
use verilog.vl_types.all;
entity DES_TESTBENCH_128_BIT is
    generic(
        delay_between_clock: integer := 5;
        delay_cycle     : integer := 10;
        first_cycle     : vl_notype;
        second_cycle    : vl_notype
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of delay_between_clock : constant is 1;
    attribute mti_svvh_generic_type of delay_cycle : constant is 1;
    attribute mti_svvh_generic_type of first_cycle : constant is 3;
    attribute mti_svvh_generic_type of second_cycle : constant is 3;
end DES_TESTBENCH_128_BIT;
