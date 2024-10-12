`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2024 09:38:20 AM
// Design Name: 
// Module Name: ram_16x8bit
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


module ram_16x8bit(
                    input [3:0] address_in,
                    input [7:0] data_in,
                    input cs,
                    input write_en,
                    input out_en,
                    input clk,
                    output [7:0] data_out
                    );
    reg [7:0] temp_reg;
    reg [7:0] memory [0:15];
    always@(posedge clk)
    begin                
        if(cs && write_en)
                memory[address_in] <= data_in;
    end
    always@(posedge clk)
    begin           
        if(cs && !write_en)
                temp_reg <= memory[address_in];     
    end
    assign d_out = (cs && !write_en && out_en)?temp_reg:8'bzzzz_zzzz;
endmodule