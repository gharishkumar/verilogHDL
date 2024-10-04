`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2024 08:25:11 PM
// Design Name: 
// Module Name: decoder_2to4
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


module decoder_2to4(
                    input[1:0] sel_in,
                    input en_in,
                    output[3:0] y_out
                    );
    
    assign y_out[0] = en_in & (!sel_in[1]) & (!sel_in[0]);
    assign y_out[1] = en_in & (!sel_in[1]) & (sel_in[0]);
    assign y_out[2] = en_in & (sel_in[1]) & (!sel_in[0]);
    assign y_out[3] = en_in & (sel_in[1]) & (sel_in[0]);
endmodule
