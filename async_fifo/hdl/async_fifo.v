`timescale 1ns/1ps

module async_fifo #(
    parameter DATA_WIDTH = 8,
    parameter ADDRESS_WIDTH = 4,
    parameter DEPTH = 16
) (
    input   [DATA_WIDTH-1:0] data_in,
    input   wr_en,
    input   wr_clk,
    input   wr_rst_n,
    input   rd_en,
    input   rd_clk,
    input   rd_rst_n,
    output  [DATA_WIDTH-1:0] data_out,
    output  fifo_full,
    output  fifo_empty
);

// synchronizing rd_ptr to wr_clk
wire     [ADDRESS_WIDTH : 0]   wr_q2_rd_ptr;
wire     [ADDRESS_WIDTH : 0]   rd_ptr;

synchronizer
#(
    .WIDTH(ADDRESS_WIDTH)
) sync_rd_ptr (
    .clk(wr_clk),
    .rst_n(wr_rst_n),
    .d_in(rd_ptr),
    .q_out(wr_q2_rd_ptr)
);

// synchronizing wr_ptr to rd_clk
wire    [ADDRESS_WIDTH : 0]   rd_q2_wr_ptr;
wire    [ADDRESS_WIDTH : 0]   wr_ptr;

synchronizer
#(
    .WIDTH(ADDRESS_WIDTH)
) sync_wr_ptr (
    .clk(rd_clk),
    .rst_n(rd_rst_n),
    .d_in(wr_ptr),
    .q_out(rd_q2_wr_ptr)
);

wire [ADDRESS_WIDTH-1 : 0] rd_addr;

read_logic #(
    .ADDRESS_WIDTH(ADDRESS_WIDTH)
) read_logic (
    .rd_en(rd_en),
    .rd_clk(rd_clk),
    .rd_rst_n(rd_rst_n),
    .rd_q2_wr_ptr(rd_q2_wr_ptr),
    .rd_addr(rd_addr),
    .rd_ptr(rd_ptr),
    .fifo_empty(fifo_empty)
);

wire [ADDRESS_WIDTH-1 : 0] wr_addr;

write_logic #(
    .ADDRESS_WIDTH(ADDRESS_WIDTH)
) write_logic (
    .wr_en(wr_en),
    .wr_clk(wr_clk),
    .wr_rst_n(wr_rst_n),
    .wr_q2_rd_ptr(wr_q2_rd_ptr),
    .wr_addr(wr_addr),
    .wr_ptr(wr_ptr),
    .fifo_full(fifo_full)
);

// fifomem
mem
#(
    .DATA_WIDTH(DATA_WIDTH),
    .ADDRESS_WIDTH(ADDRESS_WIDTH),
    .DEPTH(DEPTH)
) fifo_mem ( 
    .data_in(data_in),
    .wr_en(wr_en),
    .wr_clk(wr_clk),
    .wr_addr(wr_addr),
    .rd_en(rd_en),
    .rd_clk(rd_clk),
    .rd_addr(rd_addr),
    .fifo_full(fifo_full),
    .fifo_empty(fifo_empty),
    .data_out(data_out)
);

endmodule