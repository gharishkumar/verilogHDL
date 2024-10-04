`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 04:24:16 PM
// Design Name: 
// Module Name: mux_2to1_ternary
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


module mux_2to1_ternary(
    input i0_in,
    input i1_in,
    input sel_in,
    output y_out
    );
    assign y_out = sel_in?i1_in:i0_in;
endmodule
