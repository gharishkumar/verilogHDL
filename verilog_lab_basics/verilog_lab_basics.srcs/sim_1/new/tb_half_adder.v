// `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2024 08:16:27 PM
// Design Name: 
// Module Name: tb_half_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 

// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_half_adder();
reg a_in;
reg b_in;
wire sum_out;
wire carry_out;

half_adder DUT (
    .a_in(a_in),
    .b_in(b_in),
    .sum_out(sum_out),
    .carry_out(carry_out)
);

initial
begin
        a_in=1'b0; b_in=1'b0;
#10     a_in=1'b0; b_in=1'b1;
#10     a_in=1'b1; b_in=1'b0;
#10     a_in=1'b1; b_in=1'b1;


end
endmodule
