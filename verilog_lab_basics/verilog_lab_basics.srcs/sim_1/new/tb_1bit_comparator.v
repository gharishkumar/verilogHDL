`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2024 09:21:27 PM
// Design Name: 
// Module Name: tb_1bit_comparator
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


module tb_1bit_comparator();

      reg a_in;
      reg b_in;
      wire g_out;
      wire e_out;
      wire l_out;
      
      
      comparator_1bit DUT
      (
      .a_in(a_in),
      .b_in(b_in),
      .g_out(g_out),
      .e_out(e_out),
      .l_out(l_out)
      );
      
      initial
      begin
      
              a_in=1'b0; b_in=1'b0;
#2     a_in=1'b0; b_in=1'b1;
#5     a_in=1'b1; b_in=1'b0;
#7     a_in=1'b1; b_in=1'b1;

#10 $finish;
end 


endmodule
