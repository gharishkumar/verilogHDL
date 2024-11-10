module synchronizer #(
    parameter WIDTH = 4
) (
    input                       clk,
    input                       rst_n,
    input         [WIDTH : 0]   d_in,
    output  reg   [WIDTH : 0]   q_out
);

    // synchronizing ptr to clk
    reg     [WIDTH : 0]   q1_ptr;

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            {q_out, q1_ptr} <= 2'b0;
        else
            {q_out, q1_ptr} <= {q1_ptr, d_in};
    end
    
endmodule