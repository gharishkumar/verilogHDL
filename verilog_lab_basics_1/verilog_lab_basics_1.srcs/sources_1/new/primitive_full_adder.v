`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2024 09:09:17 AM
// Design Name: 
// Module Name: primitive_full_adder
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


module primitive_full_adder(
    input a_in,
    input b_in,
    input carry_in,
    output sum_out,
    output carry_out
    );
    wire y1,y2,s;
    built_in_primitive_half_adder u1(a_in,b_in,s,y1);
    built_in_primitive_half_adder u2(carry_in,s,sum_out,y2);
    or (carry_out,y1,y2);
endmodule
