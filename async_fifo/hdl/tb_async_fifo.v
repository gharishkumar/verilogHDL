`timescale 1ns/1ps

module tb_async_fifo;

parameter DATA_WIDTH = 8;
parameter ADDRESS_WIDTH = 4;

reg [DATA_WIDTH-1:0] data_in;
reg wr_en;
reg wr_clk;
reg wr_rst_n;
reg rd_en;
reg rd_clk;
reg rd_rst_n;
wire [DATA_WIDTH-1:0] data_out;
wire fifo_full;
wire fifo_empty;

async_fifo 
#(     
    .DATA_WIDTH(DATA_WIDTH),
    .ADDRESS_WIDTH(ADDRESS_WIDTH)
)
DUT
(
    data_in, wr_en, wr_clk, wr_rst_n, rd_en, rd_clk, rd_rst_n, data_out, fifo_full, fifo_empty
);

initial begin
    wr_rst_n = 0;
    wr_clk = 0;
    wr_en = 0;
    data_in = 0;
    #5 wr_clk = ~wr_clk;
    #5 wr_clk = ~wr_clk;
    wr_rst_n = 1;
    forever #5 wr_clk = ~wr_clk;
end

initial begin
    rd_rst_n = 0;
    rd_clk = 0;
    rd_en = 0;
    #10 rd_clk = ~rd_clk;
    #10 rd_clk = ~rd_clk;
    rd_rst_n = 1;
    forever  #10 rd_clk = ~rd_clk;
end

initial begin
    #10;
    #10; wr_en = 1;data_in = 8'd1;
    #10; wr_en = 1;data_in = 8'd2;
    #10; wr_en = 1;data_in = 8'd3;
    #10; wr_en = 1;data_in = 8'd4;
    #10; wr_en = 1;data_in = 8'd5;
    #10; wr_en = 1;data_in = 8'd6;
    #10; wr_en = 1;data_in = 8'd7;
    #10; wr_en = 1;data_in = 8'd8;
    #10; wr_en = 1;data_in = 8'd9;
    #10; wr_en = 1;data_in = 8'd10;
    #10; wr_en = 1;data_in = 8'd11;
    #10; wr_en = 1;data_in = 8'd12;
    #10; wr_en = 1;data_in = 8'd13;
    #10; wr_en = 1;data_in = 8'd14;
    #10; wr_en = 1;data_in = 8'd15;
    #10; wr_en = 1;data_in = 8'd16;
    #10; wr_en = 0;

     #20; rd_en = 1;
     #340;     //17 read clk
     rd_en=0;

     #100;
     $finish;
end

endmodule