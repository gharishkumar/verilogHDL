`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 02:42:06 PM
// Design Name: 
// Module Name: d_ff_n_sync_reset
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


module d_ff_n_sync_reset(
                input d_in,
                input clk_in,
                input reset_n,
                output reg q_out
                );
      always @(negedge clk_in)
      begin
            if(!reset_n)
                q_out <=1'b0;
            else
                q_out <= d_in;
            
      end
      
endmodule
