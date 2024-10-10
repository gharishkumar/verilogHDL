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


module for_loop_shift_left_reg #(parameter DATA_WIDTH = 8)(
                        input [DATA_WIDTH-1:0] d_in,
                        input load,
                        input clk,
                        input reset_n,
                        output reg [DATA_WIDTH-1:0] d_out
                        );
        
        integer i;
        always@(posedge clk or negedge reset_n)
        begin
            if (!reset_n)
                d_out <= {DATA_WIDTH{'b0}};
            else if (load)
                d_out <= d_in;
            else
            begin
                /*d_out[0] <= d_out[7];
                d_out[1] <= d_out[0];
                d_out[2] <= d_out[1];
                d_out[3] <= d_out[2];
                d_out[4] <= d_out[3];
                d_out[5] <= d_out[4];
                d_out[6] <= d_out[5];
                d_out[7] <= d_out[6];*/
                for(i=0; i<DATA_WIDTH-1; i=i+1)
                begin
                        d_out[i+1] <= d_out[i];
                end
                d_out[0] <= d_out[DATA_WIDTH-1];
            end
        end
endmodule
