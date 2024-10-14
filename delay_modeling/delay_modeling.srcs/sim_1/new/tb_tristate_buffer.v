`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2024 02:00:10 PM
// Design Name: 
// Module Name: tb_tristate_buffer
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


module tb_tristate_buffer #(parameter N=16);

reg [N-1:0]d_in;
reg en_in;
wire [N-1:0]d_out;

tristate_buffer #(.DATA_WIDTH(N)) DUT (d_in, en_in,d_out);

always #20 en_in = ~en_in;
always #10 d_in = $random();

initial
begin
 d_in =0; en_in=0;
 #500 $finish;
end
endmodule
