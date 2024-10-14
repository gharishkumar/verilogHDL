`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2024 03:40:07 PM
// Design Name: 
// Module Name: tb_result_out_8bit
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

module tb_result_out_8bit;

reg [`DATA_WIDTH-1:0]a_in;
reg [`DATA_WIDTH-1:0]b_in;
reg [`OPCODE_WIDTH-1:0]opcode;
wire [`DATA_WIDTH-1:0]result_out;

result_out_8bit DUT (a_in, b_in, opcode, result_out);

always #10 a_in = $random();
always #50 b_in = $random();
always #100 opcode = opcode + 1;
initial
begin
    a_in=0;b_in=0;opcode=0;
    #500 $finish;
end
endmodule
