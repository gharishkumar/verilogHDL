`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 03:36:10 PM
// Design Name: 
// Module Name: shift_reg
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


module shift_reg(
    input d_in,
    input reset_n,
    output reg q_out,
    input clk
    );
reg tmp_1, tmp_2;

always @(posedge clk, negedge reset_n)
    begin 
         if(!reset_n)
         begin
              tmp_1 <= 'b0;
              tmp_2 <= 'b0;
              q_out <= 'b0;
         end
         else
             begin
                  q_out <= tmp_2;

                  tmp_1 <= d_in;
                  tmp_2 <= tmp_1;
             end
    end
    
endmodule
