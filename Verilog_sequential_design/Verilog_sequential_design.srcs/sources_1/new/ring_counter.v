`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2024 08:39:16 AM
// Design Name: 
// Module Name: ring_counter
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


module ring_counter(
                    input [3:0]data_in,
                    input load,
                    input clk,
                    input reset_n,
                    output reg [3:0]q_out
                    );
        always@(posedge clk or negedge reset_n)
        begin
            if(!reset_n)
                q_out <= 4'b1000;
            else if (load)
                q_out <= data_in;
            /*else if (q_out == 4'b0001)
                q_out <= 4'b1000;
            else 
                q_out <= q_out / 2'b10;*/
            else
                q_out <= {q_out[0],q_out[3:1]};
            
        end
endmodule
