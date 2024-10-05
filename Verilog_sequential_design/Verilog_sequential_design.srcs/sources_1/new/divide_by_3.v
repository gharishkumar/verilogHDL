`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 07:57:31 PM
// Design Name: 
// Module Name: divide_by_3
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


module divide_by_3(
                    input clk,
                    input reset_n,
                    output q_out
                    );
        reg [1:0]count;            
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
