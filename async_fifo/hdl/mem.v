module mem #(
    parameter DATA_WIDTH = 8,
    parameter ADDRESS_WIDTH = 4,
    parameter DEPTH = 16
) (
    input   [DATA_WIDTH-1:0]     data_in,
    input                        wr_en,
    input                        wr_clk,
    input  [ADDRESS_WIDTH-1 : 0] wr_addr,
    input                        rd_en,
    input                        rd_clk,
    input  [ADDRESS_WIDTH-1 : 0] rd_addr,
    input                        fifo_full,
    input                        fifo_empty,
    output  reg [DATA_WIDTH-1:0] data_out
);
    reg [DATA_WIDTH-1 : 0] mem [0: DEPTH -1];

    always @(*) begin
        if (rd_en && !fifo_empty) begin
            data_out <= mem[rd_addr];
        end else begin
            data_out <= 0;
        end
    end

    always @ (posedge wr_clk)
        if (wr_en & !fifo_full) begin
            mem[wr_addr] <= data_in;
    end
endmodule