`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2025 10:36:07 PM
// Design Name: 
// Module Name: DES_TESTBENCH_128_BIT
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2025 04:55:24 PM
// Design Name: 
// Module Name: DES_TESTBENCH
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
/*
DES_ALGORITHM(
        Plaintext,   //                      DU LIEU CAN MA HOA 
        Key_in,
        Clk,//                               XUNG CLOCK 
        Clk_machine,
        Reset,//                        
        Cirphertext);
       input [63:0] Plaintext; 
      input [63:0] Key_in; 
      input Clk, Clk_machine, Reset;
      output [63:0] Cirphertext;
      */ 

module DES_TESTBENCH_128_BIT();
     reg [127:0]  Plaintext;
     reg [127:0] Key_in;
     reg Clk, Clk_machine, Reset;
     wire [127:0] Cirphertext;
    // wire [63:0]Ln, R_n; 
     wire [4:0] Counter_machine; 
     wire Done; 
	  
	  parameter delay_between_clock = 5;                  // thoi gian cach nhau giua 2 xung clock
	  parameter delay_cycle         = 10;                 // chu ki xung cloCK
	  parameter first_cycle         = 16*delay_cycle*2;   // test case dau tien 
	  parameter second_cycle        = 18*delay_cycle*2;  // test case thu 2 tro ddi 
     DES_ALGORITHM_128BIT des(
        .Plaintext(Plaintext),   //                      DU LIEU CAN MA HOA 
        .Key_in(Key_in),
        .Clk(Clk),//                               XUNG CLOCK 
        .Clk_machine(Clk_machine),
        .Reset(Reset),// 
       // .Ln(Ln),
       // .R_n(R_n),   
        .Counter_machine(Counter_machine),                     
        .Cirphertext(Cirphertext),
        .Done(Done));
        
       initial begin
        Clk = 0; 
        #delay_between_clock; 
        forever #delay_cycle Clk = ~Clk; 
       end 
       initial begin
       Clk_machine = 0; 
        forever #delay_cycle Clk_machine = ~Clk_machine; 
       end 
       initial begin
		 // ======================== test 1 ========================
       Reset = 1'b1; 
       Plaintext =  128'h80808080808080808080808080808080; 
       Key_in    = 128'hE00A6E5724C52BC352DEC4F83972E00A; 
       #13;  
       Reset = 1'b0; 
		 //========================= test 2 =========================
		 #first_cycle; 
		 Plaintext = 128'hE00A6E5724C52BC352DEC4F83972E00A; 
       Key_in    = 128'h80808080808080808080808080808080; 
	    // ======================== test 3 =========================
		 #second_cycle; 
		 Plaintext = 128'h808080808080808052DEC4F83972E00A; 
       Key_in    = 128'hE00A8080808080808080808080808080; 	 
	    //========================= test 4 =========================
		 #second_cycle; 
		 Plaintext = 128'h808080808080808052DEC4F83972E00A; 
       Key_in    = 128'hE00A6E57252DEC4F83972E00A0808080; 
	    //========================= test 5 =========================
		 #second_cycle; 
		 Plaintext = 128'h808080808080808052DEC4F83972E00A; 
       Key_in    = 128'hE00A6E5724C52BC3123456789abcdefd; 
		 // ========================= test 6 ========================
		 #second_cycle; 
		 Plaintext = 128'h0124356331234dfa52DEC4F83972E00A; 
       Key_in    = 128'h123456789aC52BC3123456789abcdefd; 
		 // ========================= Test 7 ========================
		 #second_cycle; 
		 Plaintext = 128'h8080808073241dfecab224F83972E00A; 
       Key_in    = 128'hE00A6E5724C52BC312cdefabbde03452; 
		 // ========================= Test 8 ========================
		 #second_cycle; 
		 Plaintext = 128'habcdfe2345567822cab224F83972E00A; 
       Key_in    = 128'hE00A6E5724C52BCaccdeff3344556677; 
		 // ========================= Test 9 =========================
		 #second_cycle; 
		 Plaintext = 128'habcdfe234556eeffddbbaa1122334455; 
       Key_in    = 128'hE00A6E5724C52BCaccdeffdd99887766; 
		 // ======================== Test 10 ========================
				 #second_cycle; 
		 Plaintext = 128'habcdfe2345567112233445566778899a; 
       Key_in    = 128'h3344556677852BCaccdeff3344556677; 
		// ==========================================================  
       end 
     
endmodule
