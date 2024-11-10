module read_logic #(
    parameter ADDRESS_WIDTH = 4
) (
    input                                rd_en,
    input                                rd_clk,
    input                                rd_rst_n,
    input          [ADDRESS_WIDTH : 0]   rd_q2_wr_ptr,
    output         [ADDRESS_WIDTH-1 : 0] rd_addr,
    output reg     [ADDRESS_WIDTH : 0]   rd_ptr,
    output reg                           fifo_empty
);
// generating fifo_empty condition
wire    fifo_empty_val;
wire    [ADDRESS_WIDTH : 0]   rd_ptr_nxt;

assign  fifo_empty_val = (rd_ptr_nxt == rd_q2_wr_ptr); 

always @(posedge rd_clk or negedge rd_rst_n) begin
    if(!rd_rst_n)
        fifo_empty <= 1'b0;
    else
        fifo_empty <= fifo_empty_val;
end

// generating read address for fifomem
reg     [ADDRESS_WIDTH : 0]   rd_ptr_bin;
wire    [ADDRESS_WIDTH : 0]   rd_ptr_bin_nxt;

assign rd_ptr_bin_nxt = rd_ptr_bin + (rd_en & ~fifo_empty);

always @ (posedge rd_clk or negedge rd_rst_n) 
    if (!rd_rst_n)
        rd_ptr_bin <= 0;
    else 
        rd_ptr_bin <= rd_ptr_bin_nxt;
assign rd_addr = rd_ptr_bin[ADDRESS_WIDTH-1:0]; 

// generating rd_ptr to send to wr_clk domain
// convert from binary to gray
assign rd_ptr_nxt = rd_ptr_bin_nxt ^ (rd_ptr_bin_nxt>>1);

always @ (posedge rd_clk or negedge rd_rst_n)
    if (!rd_rst_n)
        rd_ptr <= 0;
    else 
        rd_ptr <= rd_ptr_nxt;

endmodule