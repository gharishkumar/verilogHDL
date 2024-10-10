`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2024 08:28:02 PM
// Design Name: 
// Module Name: shift_left_reg
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


module shift_left_reg(
                        input [7:0] d_in,
                        input load,
                        input clk,
                        input reset_n,
                        output reg [7:0] d_out
                        );
                        
        always@(posedge clk or negedge reset_n)
        begin
            if (!reset_n)
                d_out <= 8'b0000_0000;
            else if (load)
                d_out <= d_in;
            else
            begin
                d_out <= {d_out[6:0],d_out[7]};
            end
        end
endmodule
