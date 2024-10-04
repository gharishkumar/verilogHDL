`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2024 08:30:22 PM
// Design Name: 
// Module Name: tb_decoder_2to4
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


module tb_decoder_2to4;

reg[1:0] sel_in;
reg en_in;
wire[3:0] y_out;


decoder_2to4 DUT (
                    .sel_in(sel_in),
                    .en_in(en_in),
                    .y_out(y_out)
                    );

always #10 sel_in=sel_in+1;

always #40 en_in = !en_in;
                  
initial
begin
en_in=1'b1; sel_in=2'b00;
#500 $finish;
end
endmodule
