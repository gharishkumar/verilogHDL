`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2024 12:35:30 PM
// Design Name: 
// Module Name: distributed_delay
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


module distributed_delay(
                        input a_in,
                        input b_in,
                        input c_in,
                        input d_in,
                        output y_out,
                        wire y1,
                        wire y2
                        );
         
        assign #2 y1    = a_in && b_in;
        assign #2 y2    = c_in && d_in;
        assign #3 y_out = y1    | y2;
endmodule
