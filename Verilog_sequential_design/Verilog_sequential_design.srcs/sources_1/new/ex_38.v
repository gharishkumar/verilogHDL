`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 04:09:37 PM
// Design Name: 
// Module Name: ex_38
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


module ex_38(
            input a_in,
            input b_in,
            input clk,
            input reset_n,
            output reg q_out
            );
            
            
    reg ff1, ff2, y1, y2;
    
    
    always@(posedge clk, negedge reset_n)
    begin
        if(!reset_n)
        begin
            ff1   <=  'b0;
            ff2   <=  'b0;
            q_out <=  'b0;
        end
        else
        begin
            ff1   <=  a_in;
            ff2   <=  b_in;
            y1     =  ff1 & ff2;
            y2     =  ~y1;
            q_out <=  y2;
        end
    
    end
endmodule
