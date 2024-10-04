`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2024 08:13:24 AM
// Design Name: 
// Module Name: tb_mux_2to_1
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


module tb_mux_2to_1;

reg a_in;
reg b_in;
reg sel_in;
wire y_out;

mux_2to1 DUT (
    .a_in(a_in),
    .b_in(b_in),
    .sel_in(sel_in),
    .y_out(y_out)
);

initial 
begin

       sel_in=1'b0; a_in=1'b0;b_in=1'b0;
#10    sel_in=1'b0; a_in=1'b0;b_in=1'b1;
#10    sel_in=1'b0; a_in=1'b1;b_in=1'b0;
#10    sel_in=1'b0; a_in=1'b1;b_in=1'b1;
#10    sel_in=1'b1; a_in=1'b0;b_in=1'b0;
#10    sel_in=1'b1; a_in=1'b0;b_in=1'b1;
#10    sel_in=1'b1; a_in=1'b1;b_in=1'b0;
#10    sel_in=1'b1; a_in=1'b1;b_in=1'b1;
#10     $finish;
end
endmodule
