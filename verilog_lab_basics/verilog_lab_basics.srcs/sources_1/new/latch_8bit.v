`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2024 09:46:49 PM
// Design Name: 
// Module Name: latch_8bit
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


module latch_8bit#(parameter DATA_WIDTH = 8)(
                    input [DATA_WIDTH-1:0]data_bus_in,
                    input en_in,
                    output [DATA_WIDTH-1:0]data_bus_out
                    );
    assign data_bus_out = en_in ? data_bus_in:data_bus_out;
endmodule
