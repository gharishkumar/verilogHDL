`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/DATA_WIDTH-10/2024 05:1DATA_WIDTH-1:4DATA_WIDTH-1 PM
// Design Name: 
// Module Name: not_DATA_WIDTH-1
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


module not_3(
    input a_in,
    output y_out
    );
    assign y_out = !(!(!(a_in)));
endmodule
