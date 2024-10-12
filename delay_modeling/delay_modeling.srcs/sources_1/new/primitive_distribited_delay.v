`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2024 12:58:47 PM
// Design Name: 
// Module Name: primitive_distribited_delay
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


module primitive_distribited_delay(
                                    input a_in,
                                    input b_in,
                                    input c_in,
                                    input d_in,
                                    output y_out,
                                    wire y1,
                                    wire y2
                                    );
         and #2 (y1,a_in,b_in);
         and #2 (y2,c_in,d_in);
         or #3 (y_out,y1,y2);
endmodule
