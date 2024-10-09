`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2024 09:34:13 AM
// Design Name: 
// Module Name: tb_duty_cycle_constant
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


module tb_duty_cycle_constant;

reg clk;
reg reset_n;
wire q_out;

duty_cycle_constant DUT (
                     .clk(clk),
                     .reset_n(reset_n),
                     .q_out(q_out)
                     );

    always #10 clk = ~clk;
    
    always 
    begin
        #8 reset_n=1;
        #409 reset_n=~reset_n;
    end
    initial
    begin
        clk = 0; reset_n=1;
        #500 $finish;
    end
endmodule
