`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2025 09:40:20 AM
// Design Name: 
// Module Name: E_XOR_KEY
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


module E_XOR_KEY(E,K, S1, S2,S3,S4,S5,S6,S7,S8,S9,S10, S11,S12,S13,S14,S15,S16);
   input [95:0] E,K;  
   output [5:0] S1,S2,S3,S4,S5,S6,S7,S8,S9,S10, S11,S12,S13,S14,S15,S16; 
   wire [95:0] TEMP; 
assign TEMP = E ^ K; 
assign	S1	= TEMP[95:90];
assign	S2	= TEMP[89:84];
assign	S3	= TEMP[83:78];
assign	S4	= TEMP[77:72];
assign	S5	= TEMP[71:66];
assign	S6	= TEMP[65:60];
assign	S7	= TEMP[59:54];
assign	S8	= TEMP[53:48];

assign	S9	= TEMP[47:42];
assign	S10	= TEMP[41:36];
assign	S11	= TEMP[35:30];
assign	S12	= TEMP[29:24];
assign	S13	= TEMP[23:18];
assign	S14	= TEMP[17:12];
assign	S15	= TEMP[11:6];
assign	S16	= TEMP[5:0];
endmodule 