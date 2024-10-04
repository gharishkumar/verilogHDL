`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2024 08:45:25 PM
// Design Name: 
// Module Name: tb_full_adder
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


module tb_full_adder();

    reg a_in;
    reg b_in;
    reg c_in;
    
    wire sum_out;
    wire carry_out;
    
    full_adder DUT 
    (
.a_in(a_in),
.b_in(b_in),
.c_in(c_in),
.sum_out(sum_out),
.carry_out(carry_out) 
    ); 
    
    initial
    begin 
       a_in=0; b_in=0; c_in=0;
#10    a_in=0; b_in=0; c_in=1;
#10    a_in=0; b_in=1; c_in=0;
#10    a_in=0; b_in=1; c_in=1;
#10    a_in=1; b_in=0; c_in=0;
#10    a_in=1; b_in=0; c_in=1;
#10    a_in=1; b_in=1; c_in=0;
#10    a_in=1; b_in=1; c_in=1;
    end
    
endmodule
