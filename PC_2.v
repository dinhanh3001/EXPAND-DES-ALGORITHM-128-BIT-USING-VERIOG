`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2025 10:49:57 PM
// Design Name: 
// Module Name: PC_2
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


module PC_2(In, Round_key);
    input [111:0] In; 
    output [95:0] Round_key; 

 
    assign Round_key = {
        // row 1
        In[98], In[95], In[101], In[88], In[111], In[107], In[109], In[84],
        // row 2
        In[97], In[106], In[91], In[102], In[89], In[93], In[100], In[108],
        // row 3
        In[86], In[104], In[96], In[105], In[85], In[92], In[99], In[110],
        // row 4
        In[71], In[60], In[81], In[75], In[65], In[57], In[82], In[72],
        // row 5
        In[61], In[67], In[79], In[64], In[68], In[63], In[73], In[56],
        // row 6
        In[78], In[59], In[66], In[70], In[62], In[76], In[83], In[80],
        // row 7
        In[42], In[39], In[45], In[32], In[55], In[51], In[53], In[28],
        // row 8
        In[41], In[50], In[35], In[46], In[33], In[37], In[44], In[52],
        // row 9
        In[30], In[48], In[40], In[49], In[29], In[36], In[43], In[54],
        // row 10
        In[15], In[4],  In[25], In[19], In[9],  In[1],  In[26], In[16],
        // row 11
        In[5],  In[11], In[23], In[8],  In[12], In[7],  In[17], In[0],
        // row 12
        In[22], In[3],  In[10], In[14], In[6],  In[20], In[27], In[24]
    };

endmodule