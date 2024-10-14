`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2024 04:46:10 PM
// Design Name: 
// Module Name: tb_timing_check
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


module tb_timing_check;

reg d_in;
reg clk_in;
reg reset_n;
wire q_out;

wire D1;
wire CLK1;

assign D1=d_in;
assign CKL1=clk_in;

specify
specparam tsu = 2;
 $setup(D1, CKL1, tsu);
endspecify


d_ff_async_reset DUT(
            .d_in(d_in),
            .clk_in(clk_in),
            .reset_n(reset_n),
            .q_out(q_out)
            );

always #5 clk_in=~clk_in;

always 
begin
    #8 reset_n=1;
    #49 reset_n=~reset_n;
end


initial
begin
    $display("Time\tclk\td_in\treset");
    $monitor("%0t\t%0d\t%0d\t%0d", $time, clk_in, d_in, reset_n);
    d_in=0; clk_in=0; reset_n=1;
    fork
        #3 d_in =1;
        #7 d_in = 0;
        #12 d_in =1;
        #14 d_in =0;
        #20 d_in =1;
        #24 d_in =0;
    join
    #10000 $finish ;
end
endmodule
