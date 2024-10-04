`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 09:25:47 PM
// Design Name: 
// Module Name: tb_encoder_pe
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


module tb_encoder_pe;
reg [3:0]int_reg;
wire [1:0]y_out;
wire valid_out;

encoder_pe DUT (
                .int_reg(int_reg),
                .y_out(y_out),
                .valid_out(valid_out)
                );
   always #10 int_reg = int_reg +1;
   
   initial
   begin
   $monitor ("time%0t=;\t\t%0h;\t%0h;\t%0h",$time,int_reg,y_out,valid_out);
        int_reg = 0;
        #100 $finish;
   end      
          
endmodule
