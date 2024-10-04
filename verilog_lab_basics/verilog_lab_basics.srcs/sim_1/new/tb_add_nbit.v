`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2024 09:16:22 AM
// Design Name: 
// Module Name: tb_sum_nbit
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


module tb_add_nbit #(parameter N=4);
reg [N-1:0] a_in;
reg [N-1:0] b_in;
wire [N-1:0] sum_out;
wire carry_out;

add_nbit #(.DATA_WIDTH(N)) DUT
( .a_in(a_in),
  .b_in(b_in),
  .sum_out(sum_out),  
  .carry_out(carry_out)
);

always #10 a_in = a_in+1;
always #20 b_in = b_in+1;

initial
begin
a_in = 4'b0000;
b_in = 4'b0000;
#500 $finish;
end
endmodule
