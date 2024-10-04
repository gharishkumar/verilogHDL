`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/DATA_WIDTH-10/2024 09:25:DATA_WIDTH-18 AM
// Design Name: 
// Module Name: logic_gates
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


module logic_gates(
    input a_in,
    input b_in,
    output y_and_out,
    output y_or_out,
    output y_not_out
    );
    assign y_and_out = a_in && b_in;
    assign y_or_out = a_in || b_in;
    assign y_not_out = !a_in;
endmodule
