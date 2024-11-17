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
        reg [2:0]count;            
        always @(posedge clk or negedge reset_n)
          begin
                if(!reset_n)
                    count <= 3'b000;
                else if (count == 3'b101)
                    count <= 3'b000;
                else
                    count <= count + 1;
          end
          
        always @(negedge clk or negedge reset_n)
          begin
                if(!reset_n)
                    count <= 3'b000;
                else if (count == 3'b101)
                    count <= 3'b000;
                else
                    count <= count + 1;
          end
          
        assign q_out = ~count[2] & (count[1] | count[0]);
          
endmodule
