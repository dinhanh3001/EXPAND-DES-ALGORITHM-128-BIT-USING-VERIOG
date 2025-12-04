`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2025 03:56:35 PM
// Design Name: 
// Module Name: REGISTER_TOP
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


module REGISTER_TOP(C0,Clk,Reset, D0,C0_out,D0_out );
     input [63:0] C0, D0; 
      input Clk; 
      input Reset; 
      output reg [63:0] C0_out; 
      output reg [63:0] D0_out;                           // 
      
      reg [127:0]Reg_temp ;                               // DOC TAI CANH LEN 
      always @(posedge Clk, posedge Reset) 
      begin
        if(Reset) 
        begin
            C0_out <= 64'b0;
            D0_out <= 64'b0;
        end
        else 
        begin  
           C0_out <= Reg_temp[127:64];
           D0_out <= Reg_temp[63:0]; 
        end  
      end
      
      always @(negedge Clk, posedge Reset)                          // GHI TAI CANH XUONG 
      begin 
      if(Reset) 
        Reg_temp <=128'b0; 
      else 
      begin 
         Reg_temp[127:64] <= C0; 
         Reg_temp[63:0] <= D0; 
      end   
      end 
endmodule
