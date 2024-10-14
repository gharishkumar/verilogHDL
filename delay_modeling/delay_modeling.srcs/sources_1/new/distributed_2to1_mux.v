`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2024 01:33:24 PM
// Design Name: 
// Module Name: distributed_2to1_mux
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


module distributed_2to1_mux(
                            input a_in,                            
                            input b_in,
                            input sel_in,
                            output y_out
                            );
       wire y1,y2,y_n;
       and #2 (y1,b_in,sel_in);
       not #1 (y_n,sel_in);
       and #1 (y2,a_in,y_n);
       or #2 (y_out,y1,y2);
endmodule
