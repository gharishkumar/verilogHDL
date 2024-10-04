`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2024 08:46:33 AM
// Design Name: 
// Module Name: add_1bit
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


module add_1bit(
                input a_in,
                input b_in,
                output sum_out,
                output carry_out
                );
    
    /*wire[1:0] y;
    assign y=a_in+b_in;
    assign sum_out = y[0];
    assign carry_out = y[1];*/
    
    assign {carry_out, sum_out} = a_in + b_in;
    
endmodule
