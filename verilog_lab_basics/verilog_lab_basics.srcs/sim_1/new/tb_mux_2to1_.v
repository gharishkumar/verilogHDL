`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2024 09:10:30 PM
// Design Name: 
// Module Name: tb_mux_2to1_
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


module tb_mux_2to1_;

reg a_in;
reg b_in;
reg sel_in;
wire y_out;

mux_2to1_ DUT (
    .a_in(a_in),
    .b_in(b_in),
    .sel_in(sel_in),
    .y_out(y_out)
);

always #10 a_in = !a_in;
always #20 b_in = !b_in;
always #40 sel_in = !sel_in;

initial 
begin

       sel_in=1'b0; a_in=1'b0;b_in=1'b0;

#800     $finish;
end


endmodule
