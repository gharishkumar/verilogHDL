`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2024 08:09:19 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input a_in,
    input b_in,
    input c_in,
    output sum_out,
    output carry_out
    );
    
    wire sum_0;
    wire c01;
    wire c02;
//    module instance 
    half_adder HA1 (
        .a_in(a_in),
        .b_in(b_in),
        .sum_out(sum_0),
        .carry_out(co1)
        );
    half_adder HA2 (
        .a_in(sum_0),
        .b_in(c_in),
        .sum_out(sum_out),
        .carry_out(co2)
    );
    assign carry_out = co2 | co1;
    
endmodule
