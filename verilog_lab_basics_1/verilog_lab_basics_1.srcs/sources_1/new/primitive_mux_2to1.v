`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2024 08:45:28 AM
// Design Name: 
// Module Name: primitive_mux_2to1
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


module primitive_mux_2to1(
                        input a_in,
                        input sel_in,
                        input b_in,
                        output y_out
                        );
    wire y1, y2, y3;
    
    and u1(y2, a_in, sel_in);
    not u2(y1, sel_in);
    and u3(y3, b_in, y1);
    or u4(y_out, y2, y3);
    
endmodule
