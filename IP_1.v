`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2025 02:01:27 PM
// Design Name: 
// Module Name: IP_1
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


module IP_1(In, Reset, Cipertext);
    input [127:0] In;       
    input Reset;        
    output reg [127:0] Cipertext; 

   
    always @(*) 
    begin
        if (Reset) 
        begin
            Cipertext = 128'b0; 
        end 
        else 
        begin

            Cipertext = {

                In[88], In[120], In[80], In[112], In[72], In[104], In[64], In[96],
                In[89], In[121], In[81], In[113], In[73], In[105], In[65], In[97],
                In[90], In[122], In[82], In[114], In[74], In[106], In[66], In[98],              
                In[91], In[123], In[83], In[115], In[75], In[107], In[67], In[99],
                In[92], In[124], In[84], In[116], In[76], In[108], In[68], In[100],
                In[93], In[125], In[85], In[117], In[77], In[109], In[69], In[101],
                In[94], In[126], In[86], In[118], In[78], In[110], In[70], In[102],
                In[95], In[127], In[87], In[119], In[79], In[111], In[71], In[103],

                In[24], In[56], In[16], In[48], In[8], In[40], In[0], In[32],
                In[25], In[57], In[17], In[49], In[9], In[41], In[1], In[33],
                In[26], In[58], In[18], In[50], In[10], In[42], In[2], In[34],
                In[27], In[59], In[19], In[51], In[11], In[43], In[3], In[35],
                In[28], In[60], In[20], In[52], In[12], In[44], In[4], In[36],
                In[29], In[61], In[21], In[53], In[13], In[45], In[5], In[37],
                In[30], In[62], In[22], In[54], In[14], In[46], In[6], In[38],
                In[31], In[63], In[23], In[55], In[15], In[47], In[7], In[39]
            };
        end
    end
endmodule