`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 08:58:36 PM
// Design Name: 
// Module Name: duty_cycle_constant
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


module duty_cycle_constant(
                    input clk,
                    input reset_n,
                    output q_out
                    );
        reg [1:0]count;            
        always @(posedge clk or negedge reset_n)
          begin
                if(!reset_n)
                    count <= 2'b00;
                else if (count == 2'b10)
                    count <= 2'b00;
                else
                    count <= count + 1;
          end
          
        always @(negedge clk or negedge reset_n)
          begin
                if(!reset_n)
                    count <= 2'b00;
                else if (count == 2'b10)
                    count <= 2'b00;
                else
                    count <= count + 1;
          end
          
        assign q_out = count[1];
          
endmodule
