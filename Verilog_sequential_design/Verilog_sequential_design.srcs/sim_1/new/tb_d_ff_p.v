`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 01:35:37 PM
// Design Name: 
// Module Name: tb_d_ff_p
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


module tb_d_ff_p;

reg d_in;
reg clk_in;
wire q_out;


d_ff_p DUT(
            .d_in(d_in),
            .clk_in(clk_in),
            .q_out(q_out)
            );
                
always #20 d_in=~d_in;
always #10 clk_in=~clk_in;

initial
begin
    d_in=0; clk_in=0;
    #100 $finish ;
end

endmodule
