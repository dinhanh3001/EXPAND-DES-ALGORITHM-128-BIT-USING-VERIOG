module REGISTER_FINAL(clk,in,ena,out); 
    input clk, ena; 
	 input [127:0] in; 
	 output reg[127:0] out; 
	 reg [127:0] reg_temp;
	 
	 always @(posedge clk)
	 begin
	   if(ena)
	      reg_temp <= in; 
		else 
	      reg_temp <=128'b0; 	
	 end 
	 
	 always @(negedge clk)
	 begin 
	      out <= reg_temp; 
	 end 
	 
endmodule 