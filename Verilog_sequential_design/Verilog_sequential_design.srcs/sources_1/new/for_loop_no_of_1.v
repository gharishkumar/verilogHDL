`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2024 09:30:20 PM
// Design Name: 
// Module Name: for_loop_no_of_1
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


module for_loop_no_of_1(
                        input [15:0] d_in,
                        input clk,
                        input reset_n,
                        output [4:0] d_out
                        );
        integer i, count;        
        always@(posedge clk)
        begin
            count = 0;
            for(i=0;i<16;i=i+1)
            begin
                if(d_in[i])
                    count = count+1;
                else
                    count = count+0;
            end
        end
        
        assign d_out = count;
endmodule
