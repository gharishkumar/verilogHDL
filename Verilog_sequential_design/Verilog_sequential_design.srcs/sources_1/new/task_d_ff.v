`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2024 09:08:22 PM
// Design Name: 
// Module Name: task_d_ff
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


module task_d_ff(
                input d_in,
                input clk,
                input reset_n,
                output reg q_out
                );

    task d_flip_flop;
        input d_in;
        begin
            q_out <= d_in; 
        end
    endtask

    always @(posedge clk or negedge reset_n)
    begin
        if (!reset_n)
        begin
            q_out <= 1'b0; 
        end
        else
        begin
            d_flip_flop(d_in); 
        end
    end


endmodule
