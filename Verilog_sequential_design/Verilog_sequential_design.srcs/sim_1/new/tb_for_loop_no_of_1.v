`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2024 09:37:06 PM
// Design Name: 
// Module Name: tb_for_loop_no_of_1
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


module tb_for_loop_no_of_1;

reg [15:0]d_in;
reg clk;
reg reset_n;
wire [4:0] d_out;


for_loop_no_of_1 DUT (d_in,clk,reset_n,d_out);

always #1 clk=~clk;

always 
    begin
        #8 reset_n=1;
        #409 reset_n=~reset_n;
    end
initial
begin
    clk = 0; reset_n=0;
    d_in = 8'b1011_0011; #10;
    d_in = 8'b1001_0011; #10;
    d_in = 8'b1011_1011; #10;
    d_in = 8'b1011_0111; #10;
    d_in = 8'b1000_0011; #10;
end
endmodule
