`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 07:54:29 PM
// Design Name: 
// Module Name: divide_by_2
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


module divide_by_2(
    input clk,
    input reset_n,
    output reg q_out
    );
    
    always @(negedge clk, negedge reset_n)
      begin
            if(!reset_n)
                q_out <=1'b0;
            else
                q_out <= ~q_out;
      end
endmodule
