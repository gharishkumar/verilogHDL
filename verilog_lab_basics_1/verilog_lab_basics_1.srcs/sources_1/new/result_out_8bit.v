`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2024 03:39:37 PM
// Design Name: 
// Module Name: result_out_8bit
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

`define DATA_WIDTH 8
`define OPCODE_WIDTH 2

module result_out_8bit(
                    input [`DATA_WIDTH-1:0]a_in,
                    input [`DATA_WIDTH-1:0]b_in,
                    input [`OPCODE_WIDTH-1:0]opcode,
                    output reg [`DATA_WIDTH-1:0]result_out
                    );
     always @*
      case (opcode)
        2'b00: #5 result_out = ~a_in;
        2'b00: #5 result_out = a_in ^ b_in;
        2'b00: #5 result_out = a_in & b_in;
        2'b00: #5 result_out = a_in | b_in;
      endcase
endmodule
