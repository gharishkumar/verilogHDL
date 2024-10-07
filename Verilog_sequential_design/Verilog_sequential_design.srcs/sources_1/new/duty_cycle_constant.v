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
                    output reg q_out
                    );
        reg [1:0]count;            
        always @(posedge clk or negedge reset_n)
          begin
                if(!reset_n)
                begin
                    count <= 2'b00;
                    
                    q_out <= 0;
                end
                else if (count == 2'b10)
                begin
                    count <= 2'b00;
                end
                else
                begin
                    count <= count + 1;
                    q_out <= count[0];
                end
          end
          
        always @(negedge clk)
          begin
                if (count == 2'b01)
                begin
                    count <= 2'b00;
                    q_out <= ~q_out;
                end
          end
          
endmodule
