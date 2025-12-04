`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2025 05:04:55 PM
// Design Name: 
// Module Name: SHIFT_LEFT_2
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


module SHIFT_LEFT_2(C_in, C_out);
     input [55:0] C_in;    //             56 bit key vao 
     output [55:0] C_out ; //              56 bit sau khi dich 
     
     assign C_out = {C_in[53:0], C_in[55:54]}; // 
     
endmodule
