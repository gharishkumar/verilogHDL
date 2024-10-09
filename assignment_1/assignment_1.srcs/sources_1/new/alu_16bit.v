`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2024 09:02:33 PM
// Design Name: 
// Module Name: alu_16bit
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


module alu_16bit(
    input [15:0] a_in,
    input [15:0] b_in,
    input [3:0] opcode,
    input clk,
    input reset_n,
    output [15:0] result_out,
    output zero_flag_out,
    output sign_flag_out, //sign of SUB result_out
    output carry_flag_out, //carry of ADD result_out
    output parity_flag_out
    );
endmodule
