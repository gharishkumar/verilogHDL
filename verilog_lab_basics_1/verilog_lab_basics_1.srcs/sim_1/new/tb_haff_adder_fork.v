`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2024 02:36:24 PM
// Design Name: 
// Module Name: tb_haff_adder_fork
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


module tb_haff_adder_fork;

reg a_in;
reg b_in;
wire sum_out;
wire carry_out;

half_adder DUT (a_in, b_in, sum_out, carry_out);

initial
    begin
        $monitor($time," a_in= %0b, b_in= %0b, sum_out= %0b, carry_out= %0b",
                         a_in,      b_in,      sum_out,      carry_out);
        fork
                a_in = 1'b0;     b_in = 1'b0;
            #10 a_in = 1'b1; #10 b_in = 1'b0;
            #20 a_in = 1'b0; #20 b_in = 1'b0;
            
            #25 a_in = 1'b0; #25 b_in = 1'b1;
            
            #30 a_in = 1'b1; #30 b_in = 1'b1;
            #40 a_in = 1'b1; #40 b_in = 1'b0;
            #50 a_in = 1'b0; #50 b_in = 1'b0;
            #60 a_in = 1'b1; #60 b_in = 1'b0;
            #70 a_in = 1'b1; #70 b_in = 1'b0;
            #80 a_in = 1'b1; #80 b_in = 1'b1;
            #100 $finish;
        join
    
    end
endmodule
