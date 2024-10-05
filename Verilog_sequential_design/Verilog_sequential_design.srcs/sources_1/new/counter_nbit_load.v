`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 07:13:06 PM
// Design Name: 
// Module Name: counter_nbit_load
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


module counter_nbit_load#(parameter DATA_WIDTH = 4) (
                    input [DATA_WIDTH-1:0]data_in,
                    input load,
                    input up_dn_in,
                    input clk,
                    input reset_n,
                    output reg [DATA_WIDTH-1:0] q_out
                    );
                    
     always @(posedge clk, negedge reset_n)
     begin
            if(!reset_n)
                q_out <= {DATA_WIDTH{'b0}};
            else if (load)
                q_out <= data_in;
            else if (up_dn_in)
                q_out <= q_out+1;
            else
                q_out <= q_out-1;
                
     end
endmodule