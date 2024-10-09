`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2024 09:20:43 PM
// Design Name: 
// Module Name: tri_state_bus
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


module tri_state_bus #(parameter DATA_WIDTH = 8)(
                    input [DATA_WIDTH-1:0]data_bus_in,
                    input en_in,
                    output [DATA_WIDTH-1:0]data_bus_out
                    );

    assign data_bus_out = en_in ? data_bus_in: 8'bzzzzzzzz;
        
endmodule
