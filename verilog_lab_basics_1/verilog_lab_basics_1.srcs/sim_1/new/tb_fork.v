`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2024 02:27:20 PM
// Design Name: 
// Module Name: tb_fork
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


module tb_fork;

reg [3:0]a_in;
initial
   begin
    $monitor($time," a_in=%0b",a_in);
    fork      
        /*#0 a_in = 4'b0000;
        #10 a_in = 4'b0001;
        #20 a_in = 4'b0110;
        #30 a_in = 4'b0010;
        #40 a_in = 4'b0011;*/
        
        /*a_in = 4'b0000;
        #10 a_in = 4'b0001; #20;
        a_in = 4'b0110; #30;
        a_in = 4'b0010; #40;
        a_in = 4'b0011;*/
        
        a_in = 4'b0000;
        #10 a_in = 4'b0001;
        #20 a_in = 4'b0110;
        #30 a_in = 4'b0010;
        #40 a_in = 4'b0011;
        
        #100 $finish;
    join
   end
endmodule
