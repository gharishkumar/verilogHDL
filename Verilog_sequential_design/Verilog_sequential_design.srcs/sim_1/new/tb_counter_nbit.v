`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 06:21:51 PM
// Design Name: 
// Module Name: tb_counter_nbit
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


module tb_counter_nbit #(parameter N = 2);
reg up_dn_in;
reg clk;
reg reset_n;
wire [N-1:0]q_out;

counter_nbit #(.DATA_WIDTH(N))DUT(
                                    .up_dn_in(up_dn_in),
                                    .clk(clk),
                                    .reset_n(reset_n),
                                    .q_out(q_out)
                                    );
                
  always #10 clk = ~clk;
  always #160 up_dn_in=~up_dn_in;
  always
  begin
    #8 reset_n=1;
    #150 reset_n=~reset_n;
  end
  
  initial
  begin
          $display("time\t\tq_out\treset_n\tup_dn_in");
          $monitor("%0t\t\t%0d\t%0d\t%0d",$time,q_out,reset_n, up_dn_in);
          clk=0; reset_n=0; up_dn_in=1;
          #5000 $finish;
  end              
                
endmodule