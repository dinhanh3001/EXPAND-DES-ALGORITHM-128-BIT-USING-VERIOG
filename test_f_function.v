`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2025 11:28:57 AM
// Design Name: 
// Module Name: test_f_function
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


module test_f_function();
   reg [63:0] R;
   reg [95:0] Key; 
   wire [63:0]F_out; 
   
F_FUNCTION uut(R, Key,F_out);

 initial begin 
 R = 64'he054f0aae054f0aa; 
 Key = 96'h1b02efdb49a51b02efdb49a5; 
 end 
endmodule
