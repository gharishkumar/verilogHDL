`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2024 07:51:15 AM
// Design Name: 
// Module Name: vector_multi_bit
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


module vector_multi_bit(
                        input[7:0] a_in,
                        input[7:0] b_in,
                        output[7:0] y_out
                        );
      
      assign y_out=a_in&b_in;
endmodule
