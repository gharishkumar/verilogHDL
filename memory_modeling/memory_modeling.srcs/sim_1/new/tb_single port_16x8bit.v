`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2024 09:42:57 AM
// Design Name: 
// Module Name: tb_single_port_16x8bit
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


module tb_single_port_16x8bit;

reg [3:0] address_in;
wire [7:0] data_io;
reg [7:0] data_io_drive;
reg cs;
reg write_en;
reg out_en;
reg clk;
       
single_port_16x8bit DUT( address_in, data_io, cs, write_en, out_en, clk);
                    
assign data_io = (!out_en & write_en && cs) ? data_io_drive: 8'bzzzz_zzzz; 
     
always #5 clk = ~clk;
always #10 address_in = address_in + 1;
always #160 write_en = !write_en;
always #400 cs = ~cs;
always #160 out_en = ~out_en;
always #10 data_io_drive = $random();
           
           
    initial 
    begin 
        data_io_drive = 0;
        address_in = 0;
        write_en = 1;
        out_en = 0;
        clk = 0;
        cs = 1;
        
        #500 $finish;
    end
endmodule