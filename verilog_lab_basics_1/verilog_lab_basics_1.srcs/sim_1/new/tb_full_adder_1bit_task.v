`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2024 08:28:58 PM
// Design Name: 
// Module Name: tb_full_adder_1bit_task
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


module tb_full_adder_1bit_task;

    reg a_in;
    reg b_in;
    reg carry_in;
    wire sum_out;
    wire carry_out;
    
    full_adder_1bit_task DUT (
             .a_in(a_in),
             .b_in(b_in),
             .carry_in(carry_in),
             .sum_out(sum_out),
             .carry_out(carry_out)
    );
    
    initial begin
    
        a_in = 0; b_in = 0; carry_in=0;
    #10 a_in = 0; b_in = 1; carry_in=0;
    #10 a_in = 1; b_in = 0; carry_in=0;
    #10 a_in = 1; b_in = 1; carry_in=0;
    
    #10 a_in = 0; b_in = 0; carry_in=1;
    #10 a_in = 0; b_in = 1; carry_in=1;
    #10 a_in = 1; b_in = 0; carry_in=1;
    #10 a_in = 1; b_in = 1; carry_in=1;
        
    #100 $finish;
    
    end
endmodule
