`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 01:32:06 PM
// Design Name: 
// Module Name: d_ff_p
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


module d_ff_p(
                input d_in,
                input clk_in,
                input reset_n,
                output reg q_out
                );
      always @(posedge clk_in, negedge reset_n)
      begin
            if(!reset_n)
                q_out <=1'b0;
            else
                q_out <= d_in;
            
      end
      
endmodule
