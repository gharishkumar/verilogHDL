`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2024 01:58:12 PM
// Design Name: 
// Module Name: tristate_buffer
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


module tristate_buffer #(parameter DATA_WIDTH = 8) (
                        input [DATA_WIDTH-1:0] d_in,
                        input en_in,
                        output [DATA_WIDTH-1:0] d_out
                        );
                        
    assign #4 d_out = en_in ? d_in : 8'bzzzz_zzzz;
    
endmodule
