`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2024 08:18:38 PM
// Design Name: 
// Module Name: tb_ring_counter_57
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


module tb_ring_counter_57;

reg clk;
reg reset_n;
wire [3:0]q_out;

ring_conter_57 DUT (
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
