`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 07:17:44 PM
// Design Name: 
// Module Name: tb_counter_nbit_load
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


module tb_counter_nbit_load#(parameter N = 4);
reg[N-1:0]data_in;
reg load;
reg up_dn_in;
reg clk;
reg reset_n;
wire [N-1:0]q_out;

counter_nbit_load #(.DATA_WIDTH(N))DUT(
                                    .data_in(data_in),
                                    .load(load),
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
  always
  begin
    #1 load=1;
    #150 load=~load;
  end
  
  initial
  begin
          $display("time\t\tq_out\treset_n\tup_dn_in");
          $monitor("%0t\t\t%0d\t%0d\t%0d",$time,q_out,reset_n, up_dn_in);
          clk=0; reset_n=0; up_dn_in=1; load=1; data_in = 4'b1010;
          #5000 $finish;
  end              
                
endmodule
