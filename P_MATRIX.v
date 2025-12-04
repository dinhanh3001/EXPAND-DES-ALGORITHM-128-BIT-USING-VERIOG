`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2025 10:47:27 AM
// Design Name: 
// Module Name: P_MATRIX
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


module P_MATRIX(P_in, P_out);
    input  [63:0] P_in; 
    output [63:0] P_out; 

    assign P_out = {
        P_in[48], P_in[57], P_in[44], P_in[43], P_in[35], P_in[52], P_in[36], P_in[47],
        P_in[63], P_in[49], P_in[41], P_in[38], P_in[59], P_in[46], P_in[33], P_in[54],
        P_in[62], P_in[56], P_in[40], P_in[50], P_in[32], P_in[37], P_in[61], P_in[55],
        P_in[45], P_in[51], P_in[34], P_in[58], P_in[42], P_in[53], P_in[60], P_in[39],
        P_in[16], P_in[25], P_in[12], P_in[11], P_in[3],  P_in[20], P_in[4],  P_in[15],
        P_in[31], P_in[17], P_in[9],  P_in[6],  P_in[27], P_in[14], P_in[1],  P_in[22],
        P_in[30], P_in[24], P_in[8],  P_in[18], P_in[0],  P_in[5],  P_in[29], P_in[23],
        P_in[13], P_in[19], P_in[2],  P_in[26], P_in[10], P_in[21], P_in[28], P_in[7]
    };
endmodule
