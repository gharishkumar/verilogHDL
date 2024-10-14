`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2024 01:56:22 PM
// Design Name: 
// Module Name: lumped_delay_mux_2to1
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


module lumped_delay_mux_2to1(input a_in,                            
                            input b_in,
                            input sel_in,
                            output y_out
                            );
       wire y1,y2,y_n;
       and (y1,b_in,sel_in);
       not (y_n,sel_in);
       and (y2,a_in,y_n);
       or #5 (y_out,y1,y2);
endmodule