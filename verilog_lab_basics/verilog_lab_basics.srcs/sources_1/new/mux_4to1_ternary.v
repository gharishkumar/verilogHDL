`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2024 08:09:39 PM
// Design Name: 
// Module Name: mux_4to1_ternary
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


module mux_4to1_ternary(
    input [3:0]data_in,
    input [1:0]sel_in,
    output y_out
    );
    //<conditon>?<statement if true>:<statement if false>
    assign y_out = sel_in[1]?
                            (sel_in[0]?data_in[3]:data_in[2]):
                            (sel_in[0]?data_in[1]:data_in[0]);
endmodule
