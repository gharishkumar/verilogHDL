`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2024 01:49:36 PM
// Design Name: 
// Module Name: tb_forever
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


module tb_forever;

reg clk;

initial
begin
    clk = 0;
    forever #5 clk=~clk;
end


initial
begin
    #250 $finish;
end
endmodule
