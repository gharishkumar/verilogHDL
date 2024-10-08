`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 09:07:39 AM
// Design Name: 
// Module Name: tb_mux_4to1
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


module tb_mux_4to1_ternary();

reg [3:0] d_in;
reg [1:0] sel_in;
wire y_out;

mux_4to1_ternary DUT (
        .data_in(d_in),
        .sel_in(sel_in),
        .y_out(y_out)
        );
    
    
always #10 d_in = d_in+1;
always #40 sel_in = sel_in +1;

initial
begin
    d_in=0; sel_in=0;
end
 
endmodule
