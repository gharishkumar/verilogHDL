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
reg reset_n;
wire q_out;


d_ff_p DUT(
            .d_in(d_in),
            .clk_in(clk_in),
            .reset_n(reset_n),
            .q_out(q_out)
            );
                
always #20 d_in=~d_in;
always #5 clk_in=~clk_in;

always 
begin
    #8 reset_n=1;
    #49 reset_n=~reset_n;
end


initial
begin
    d_in=0; clk_in=0; reset_n=1;
    #500 $finish ;
end

endmodule
