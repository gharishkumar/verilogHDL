`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 05:53:38 PM
// Design Name: 
// Module Name: tb_counter_2bit
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


module tb_counter_2bit;
reg clk;
reg reset_n;
wire [1:0]q_out;

counter_2bit DUT(
                .clk(clk),
                .reset_n(reset_n),
                .q_out(q_out)
                );
                
  always #10 clk = ~clk;
  always
  begin
    #8 reset_n=1;
    #100 reset_n=~reset_n;
  end
  
  initial
  begin
          $monitor("%0t\t%0d\t%0d",$time,q_out,reset_n);
          clk=0; reset_n=0;
          #500 $finish;
  end              
                
endmodule
