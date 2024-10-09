`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2024 09:35:14 AM
// Design Name: 
// Module Name: tb_count_no_of_1s
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


module tb_count_no_of_1s;

reg [7:0]a_in;
wire [3:0] no_of_1s;


count_no_of_1s DUT (a_in,no_of_1s);

initial
begin
    a_in = 8'b1011_0011; #10;
    a_in = 8'b1001_0011; #10;
    a_in = 8'b1011_1011; #10;
    a_in = 8'b1011_0111; #10;
    a_in = 8'b1000_0011; #10;
end
endmodule
