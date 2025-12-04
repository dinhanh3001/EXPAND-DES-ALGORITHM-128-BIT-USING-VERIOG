`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2025 09:44:28 AM
// Design Name: 
// Module Name: E_MATRIX
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


module E_MATRIX(R, E_OUT);
    input [63:0] R;     // 64 BIT INPUT 
    output [95:0] E_OUT;  // 96 BIT OUTPUT 

    assign E_OUT = {
        R[0],  R[63], R[62], R[61], R[60], R[59], 
        R[60], R[59], R[58], R[57], R[56], R[55], 
        R[56], R[55], R[54], R[53], R[52], R[51], 
        R[52], R[51], R[50], R[49], R[48], R[47], 
        R[48], R[47], R[46], R[45], R[44], R[43], 
        R[44], R[43], R[42], R[41], R[40], R[39],
        R[40], R[39], R[38], R[37], R[36], R[35], 
        R[36], R[35], R[34], R[33], R[32], R[31], 
        R[32], R[31], R[30], R[29], R[28], R[27], 
        R[28], R[27], R[26], R[25], R[24], R[23],  
        R[24], R[23], R[22], R[21], R[20], R[19], 
        R[20], R[19], R[18], R[17], R[16], R[15],  
        R[16], R[15], R[14], R[13], R[12], R[11], 
        R[12], R[11], R[10], R[9],  R[8],  R[7], 
        R[8],  R[7],  R[6],  R[5],  R[4],  R[3], 
        R[4],  R[3],  R[2],  R[1],  R[0],  R[63]  
    };

endmodule

