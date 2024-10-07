`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2024 08:04:50 AM
// Design Name: 
// Module Name: tb_conter_mod_5
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


module tb_conter_mod_5;

reg [2:0]data_in;
reg load;
reg up_dn_in;
reg clk;
reg reset_n;
wire [2:0]q_out;

counter_mod_5 DUT(
                    .data_in(data_in),
                    .load(load),
                    .up_dn_in(up_dn_in),
                    .clk(clk),
                    .reset_n(reset_n),
                    .q_out(q_out)
                    );
                    
                    
    always #5 clk = ~clk;
    always #80 load = ~load;
    always #1000 up_dn_in = ~up_dn_in;
    always 
    begin
        #8 reset_n=1;
        #409 reset_n=~reset_n;
    end

    initial
    begin
        clk = 0; load = 0; up_dn_in = 0; reset_n = 1; data_in = 3'b101;
        #10000 $finish;
    end 
endmodule
