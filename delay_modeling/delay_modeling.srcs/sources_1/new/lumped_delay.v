`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2024 01:55:07 PM
// Design Name: 
// Module Name: lumped_delay
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


module lumped_delay(input a_in,
                        input b_in,
                        input c_in,
                        input d_in,
                        output y_out,
                        wire y1,
                        wire y2
                        );
         
        assign y1    = a_in && b_in;
        assign y2    = c_in && d_in;
        assign #8 y_out = y1    | y2;
endmodule
