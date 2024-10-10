`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2024 07:54:46 AM
// Design Name: 
// Module Name: tb_task_no_of_0s
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


module tb_task_no_of_0s;

reg [7:0]a_in;
wire [3:0] no_of_1s;


task_no_of_0s DUT (a_in,no_of_1s);

initial
begin
    a_in = 8'b1011_0011; #10;
    a_in = 8'b1001_0011; #10;
    a_in = 8'b1011_1011; #10;
    a_in = 8'b1011_0111; #10;
    a_in = 8'b1000_0011; #10;
    #80 $finish;
end
endmodule
