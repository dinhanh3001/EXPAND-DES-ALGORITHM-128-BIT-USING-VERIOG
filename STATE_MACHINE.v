`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2025 11:21:10 AM
// Design Name: 
// Module Name: STATE_MACHINE
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

// =================== TONG CONG CAN 18 CHU KI, CHU KI 0 THI KHONG LAM GI VA BAT DAU THUC HIEN TU CHU KI 1 ====================
// =================== 16 VONG NHUNG CAN 17 CHU KI DO REGISTER GHI TAI CANH XUONG =============================================
module STATE_MACHINE(Clk, 
                     Reset,
                     Select_mux_pc_temp,
                     Select_mux_shift_temp,
                     Counter,
                     Pre_state,
                     Next_state, Done);

  input Clk, Reset; 
  output reg Select_mux_pc_temp,Select_mux_shift_temp; 
  output reg [4:0] Counter;
  output reg Done; 
  localparam INIT = 0, PROCESSING = 1; 
   output   reg Pre_state , Next_state;     
     // ======================== COUNTER DEM SO LUONG CHU KI ===========================
         always @(posedge Clk , posedge Reset) begin 
           if(Reset)       
             Counter <=0; 
           /*else if (Counter==17)
             Counter <= 1;*/ 
           else 
			   begin
			     if(Counter==17)
				  Counter<=0; 
				  else  
              Counter <= Counter + 1;
				 end  
         end 
     
     // ========================= FINITE STATE MACHINCE =================================
       always @(posedge Clk, posedge Reset) 
       begin   
         if(Reset) 
           Pre_state <=INIT; 
         else 
           Pre_state <= Next_state;         
       end 

       always@(*) 
       begin
          case(Pre_state)
           INIT: 
           begin 
               Next_state = PROCESSING; 
               Done = 0; 
           end  
           PROCESSING: 
           begin
               Select_mux_pc_temp= 1'b0;              // CHON TIN HIEU TU MUX 
               Select_mux_shift_temp = 1'b0;           // CHON QUAY TRAI 1 BIT 
               Done = 0;                              // COUNTER 1 THI MOI BAT DAU GHI GIA TRI 
               if(Counter == 1) 
               Select_mux_pc_temp= 1'b1; //         CHON TIN HIEU C0, D0  
               else if(Counter >= 4 && Counter <=9)
                 Select_mux_shift_temp = 1'b1; ///           KEY 3: CHON QUAY TRAI 2 BIT
               else if (Counter ==10 )
                 Select_mux_shift_temp = 1'b0; 
               else if (Counter >= 11 && Counter <=16) 
                 Select_mux_shift_temp = 1'b1; 
               else
               begin  
                Select_mux_shift_temp = 1'b0;
                if( Counter ==17) 
                begin 
                 Next_state = INIT; 
                 Done = 1; 
                end 
                else 
                 Next_state = PROCESSING; 
              end 
           end 
          endcase 
       end 
endmodule
