`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2024 02:45:40 PM
// Design Name: 
// Module Name: tb_hall_adder_begin
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


module tb_hall_adder_begin;
reg a_in;
reg b_in;
wire sum_out;
wire carry_out;


half_adder DUT (a_in, b_in, sum_out, carry_out);


initial
    begin
        $monitor($time," a_in= %0b, b_in= %0b, sum_out= %0b, carry_out= %0b",
                         a_in,      b_in,      sum_out,      carry_out);
                a_in = 1'b0; b_in = 1'b0;
            #10 a_in = 1'b1; b_in = 1'b0;
            #10 a_in = 1'b0; b_in = 1'b0;
            
            #5 a_in = 1'b0; b_in = 1'b1;
            
            #5 a_in = 1'b1; b_in = 1'b1;
            #10 a_in = 1'b1; b_in = 1'b0;
            #10 a_in = 1'b0; b_in = 1'b0;
            #10 a_in = 1'b1; b_in = 1'b0;
            #10 a_in = 1'b1; b_in = 1'b0;
            #10 a_in = 1'b1; b_in = 1'b1;
            #10 $finish;    
    end
endmodule
