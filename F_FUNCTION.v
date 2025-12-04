`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2025 10:46:26 AM
// Design Name: 
// Module Name: F_FUNCTION
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


module F_FUNCTION(R, Key,F_out);
   input [95:0] Key;
   input [63:0] R; 
   output [63:0] F_out; 
   
   wire [95:0]E_OUT; 
   wire [5:0] S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15,S16; 
   wire [63:0] S_out; 
    E_MATRIX E(.R(R),
              .E_OUT(E_OUT));
              
    E_XOR_KEY e_xor_key(
                .E(E_OUT),
                .K(Key), 
                .S1(S1),
                .S2(S2),
                .S3(S3),
                .S4(S4),
                .S5(S5),
                .S6(S6),
                .S7(S7),
                .S8(S8),
                .S9(S9),
                .S10(S10),
                .S11(S11),
                .S12(S12),
                .S13(S13),
                .S14(S14),
                .S15(S15),
                .S16(S16)); 
                
    S_BOX s_box_1(.S1_in(S1),
                .S2_in(S2),
                .S3_in(S3),
                .S4_in(S4),
                .S5_in(S5),
                .S6_in(S6),
                .S7_in(S7),
                .S8_in(S8), 
                .S_out(S_out[63:32]));
                
     S_BOX s_box_2(.S1_in(S9),
                .S2_in(S10),
                .S3_in(S11),
                .S4_in(S12),
                .S5_in(S13),
                .S6_in(S14),
                .S7_in(S15),
                .S8_in(S16), 
                .S_out(S_out[31:0]));
  P_MATRIX p_matrix(.P_in(S_out), .P_out(F_out));
  
endmodule
