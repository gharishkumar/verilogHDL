`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 03:09:15 PM
// Design Name: 
// Module Name: multi_assign_BA
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


module multi_assign_NBA(
    input d_in,
    input reset_n,
    output reg q_out,
    output reg q1_out,
    input clk
    );
    
    always@(posedge clk, negedge reset_n)
    begin
        if(!reset_n)
        begin
            q_out <= 1'b0;
            q1_out <= 1'b0;        
        end
        else
        begin
            q_out <= d_in;
            q1_out <= ~d_in;        
        end
    
    end
    
endmodule
