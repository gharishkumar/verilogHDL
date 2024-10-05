`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 04:22:54 PM
// Design Name: 
// Module Name: tb_ex_38
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


module tb_ex_38;

reg a_in;
reg b_in;
reg clk;
reg reset_n;
wire q_out;

ex_38 DUT(
        .a_in(a_in),
        .b_in(b_in),
        .clk(clk),
        .reset_n(reset_n),
        .q_out(q_out)
        );
            
always #40 a_in = ~a_in;
always #80 b_in = ~b_in;
always #10 clk = ~clk;
always
begin
    #8 reset_n=1;
    #49 reset_n=~reset_n;
end

initial
begin
    $display("Time\tclk\ta_in\t\tb_in\t\treset");
    $monitor("%0t\t%0d\t%0d\t%0d\t%0d", $time, clk, a_in, b_in, reset_n);
    a_in='b0; b_in='b0; clk='b0; reset_n='b1;
    #500 $finish;
end


            
            
endmodule
