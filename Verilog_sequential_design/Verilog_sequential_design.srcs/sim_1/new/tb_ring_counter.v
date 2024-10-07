`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2024 08:56:21 AM
// Design Name: 
// Module Name: tb_ring_counter
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


module tb_ring_counter;
reg [3:0]data_in;
reg load;
reg clk;
reg reset_n;
wire [3:0]q_out;

ring_counter DUT (data_in,load,clk,reset_n,q_out);

    always #10 clk = ~clk;
    
    always 
    begin
        #8 load=0;
        #509 load=~load;
    end
    
    always 
    begin
        #8 reset_n=1;
        #409 reset_n=~reset_n;
    end
    initial
    begin
        clk = 0; reset_n=1; load=0; data_in=3'b100;
        #500 $finish;
    end
endmodule
