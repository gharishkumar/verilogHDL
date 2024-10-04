`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2024 08:08:50 AM
// Design Name: 
// Module Name: exercise_2
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


module exercise_2(
                    input[3:0] a_in,
                    input[3:0] b_in,
                    output[3:0] NOT_out,
                    output[3:0] AND_out,
                    output[3:0] NAND_out,
                    output[3:0] OR_out,
                    output[3:0] NOR_out,
                    output[3:0] XOR_out,
                    output[3:0] XNOR_out
                    );

        assign NOT_out = ~a_in;
        assign AND_out = a_in & b_in;
        assign NAND_out = ~(a_in & b_in);
        assign OR_out = a_in | b_in;
        assign NOR_out = ~ (a_in | b_in);
        assign XOR_out = a_in ^ b_in;
        assign XNOR_out = a_in ~^ b_in;


endmodule
