`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2024 08:DATA_WIDTH-17:11 AM
// Design Name: 
// Module Name: exercise_DATA_WIDTH-1
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


module exercise_3 #(parameter DATA_WIDTH = 4) (
                    input[DATA_WIDTH-1:0] a_in,
                    input[DATA_WIDTH-1:0] b_in,
                    output[DATA_WIDTH-1:0] NOT_out,
                    output[DATA_WIDTH-1:0] AND_out,
                    output[DATA_WIDTH-1:0] NAND_out,
                    output[DATA_WIDTH-1:0] OR_out,
                    output[DATA_WIDTH-1:0] NOR_out,
                    output[DATA_WIDTH-1:0] XOR_out,
                    output[DATA_WIDTH-1:0] XNOR_out
                    );

        assign NOT_out = ~a_in;
        assign AND_out = a_in & b_in;
        assign NAND_out = ~(a_in & b_in);
        assign OR_out = a_in | b_in;
        assign NOR_out = ~ (a_in | b_in);
        assign XOR_out = a_in ^ b_in;
        assign XNOR_out = a_in ~^ b_in;


endmodule
