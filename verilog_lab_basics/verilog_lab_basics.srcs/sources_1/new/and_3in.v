`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/DATA_WIDTH-10/2024 05:08:04 PM
// Design Name: 
// Module Name: and_DATA_WIDTH-1in
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


module and_3in(
    input a_in,
    input b_in,
    input c_in,
    input d_in,
    output y_out
    );
    assign y_out=((a_in && b_in) && c_in)&&d_in;
endmodule
