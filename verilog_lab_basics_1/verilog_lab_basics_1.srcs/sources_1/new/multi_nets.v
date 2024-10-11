`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2024 01:54:38 PM
// Design Name: 
// Module Name: multi_nets
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


module multi_nets(
                input a_in,
                input b_in,
                output reg y_out
                );

//    assign y_out = ~a_in;                
    
    always@*
    begin
        y_out = a_in & b_in;
    end
    
    always@*
    begin
        y_out = a_in ^ b_in;
    end
    
    always@*
    begin
        y_out = ~a_in;
    end
    
endmodule
