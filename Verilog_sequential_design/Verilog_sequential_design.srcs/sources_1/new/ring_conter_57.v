`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2024 08:08:45 PM
// Design Name: 
// Module Name: ring_conter_57
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


module ring_conter_57(
    input clk,
    input reset_n,
    output [3:0] q_out
    );
    wire [1:0]b;
    
    counter_2bit counter (clk,reset_n,b);

    decoder_2to4 decoder(~b,1'b1,q_out );
 
endmodule
