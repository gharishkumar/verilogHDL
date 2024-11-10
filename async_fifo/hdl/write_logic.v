module write_logic #(
    parameter ADDRESS_WIDTH = 4
) (
    input                                wr_en,
    input                                wr_clk,
    input                                wr_rst_n,
    input          [ADDRESS_WIDTH : 0]   wr_q2_rd_ptr,
    output         [ADDRESS_WIDTH-1 : 0] wr_addr,
    output reg     [ADDRESS_WIDTH : 0]   wr_ptr,
    output reg                           fifo_full
);
    // generating write address for fifomem
reg     [ADDRESS_WIDTH : 0]   wr_ptr_bin;
wire    [ADDRESS_WIDTH : 0]   wr_ptr_bin_nxt;
wire    [ADDRESS_WIDTH : 0]   wr_ptr_nxt;

assign wr_ptr_bin_nxt = wr_ptr_bin + (wr_en & !fifo_full);

always @ (posedge wr_clk or negedge wr_rst_n)
    if(!wr_rst_n)
        wr_ptr_bin <= 0;
    else
        wr_ptr_bin <= wr_ptr_bin_nxt;

assign wr_addr = wr_ptr_bin [ADDRESS_WIDTH-1:0];

// generating wr_ptr to send to rd_clk domain
// convert from binary to gray
assign wr_ptr_nxt = (wr_ptr_bin_nxt>>1) ^ wr_ptr_bin_nxt; 

always @ (posedge wr_clk or negedge wr_rst_n)
    if(!wr_rst_n)
        wr_ptr <= 0;
    else
        wr_ptr <= wr_ptr_nxt;

// generate fifo_full condition
wire fifo_full_val;
assign fifo_full_val = (wr_q2_rd_ptr == {~wr_ptr[ADDRESS_WIDTH : ADDRESS_WIDTH-1],wr_ptr[ADDRESS_WIDTH-2 : 0]});

always @ (posedge wr_clk or negedge wr_rst_n)
    if (!wr_rst_n)
        fifo_full <= 0;
    else 
        fifo_full <= fifo_full_val;
endmodule