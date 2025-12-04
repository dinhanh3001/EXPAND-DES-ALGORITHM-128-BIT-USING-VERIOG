`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2025 01:28:48 PM
// Design Name: 
// Module Name: IP
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

module IP(Data_in, Reset, R0, L0);
    input  [127:0] Data_in;
    input  Reset;
    output [63:0] R0, L0;
    reg    [127:0] Data_temp;

    always @(*) begin
        if (Reset)
            Data_temp = 128'b0;
        else begin
            Data_temp = {
                
                Data_in[6],  Data_in[14], Data_in[22], Data_in[30], Data_in[38], Data_in[46], Data_in[54], Data_in[62],
                Data_in[4],  Data_in[12], Data_in[20], Data_in[28], Data_in[36], Data_in[44], Data_in[52], Data_in[60],
                Data_in[2],  Data_in[10], Data_in[18], Data_in[26], Data_in[34], Data_in[42], Data_in[50], Data_in[58],
                Data_in[0],  Data_in[8],  Data_in[16], Data_in[24], Data_in[32], Data_in[40], Data_in[48], Data_in[56],
                Data_in[7],  Data_in[15], Data_in[23], Data_in[31], Data_in[39], Data_in[47], Data_in[55], Data_in[63],
                Data_in[5],  Data_in[13], Data_in[21], Data_in[29], Data_in[37], Data_in[45], Data_in[53], Data_in[61],
                Data_in[3],  Data_in[11], Data_in[19], Data_in[27], Data_in[35], Data_in[43], Data_in[51], Data_in[59],
                Data_in[1],  Data_in[9],  Data_in[17], Data_in[25], Data_in[33], Data_in[41], Data_in[49], Data_in[57],

                
                Data_in[70], Data_in[78], Data_in[86], Data_in[94], Data_in[102], Data_in[110], Data_in[118], Data_in[126],
                Data_in[68], Data_in[76], Data_in[84], Data_in[92], Data_in[100], Data_in[108], Data_in[116], Data_in[124],
                Data_in[66], Data_in[74], Data_in[82], Data_in[90], Data_in[98], Data_in[106], Data_in[114], Data_in[122],
                Data_in[64], Data_in[72], Data_in[80], Data_in[88], Data_in[96], Data_in[104], Data_in[112], Data_in[120],
                Data_in[71], Data_in[79], Data_in[87], Data_in[95], Data_in[103], Data_in[111], Data_in[119], Data_in[127],
                Data_in[69], Data_in[77], Data_in[85], Data_in[93], Data_in[101], Data_in[109], Data_in[117], Data_in[125],
                Data_in[67], Data_in[75], Data_in[83], Data_in[91], Data_in[99], Data_in[107], Data_in[115], Data_in[123],
                Data_in[65], Data_in[73], Data_in[81], Data_in[89], Data_in[97], Data_in[105], Data_in[113], Data_in[121]
            };
        end
    end

    assign L0 = Data_temp[127:64];
    assign R0 = Data_temp[63:0];
endmodule

