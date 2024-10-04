`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 08:06:46 PM
// Design Name: 
// Module Name: mux_2to1_in_case
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


module mux_2to1_in_case(
    input a_in,
    input b_in,
    input sel_in,
    output reg y_out
    );
    
    always @*
    case(sel_in)
        1'b0: y_out = a_in;
        1'b1: y_out = b_in;
    endcase
endmodule
