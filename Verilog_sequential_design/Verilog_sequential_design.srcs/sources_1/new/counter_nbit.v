`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 06:18:53 PM
// Design Name: 
// Module Name: counter_nbit
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


module counter_nbit #(parameter DATA_WIDTH = 4) (
                    input up_dn_in,
                    input clk,
                    input reset_n,
                    output reg [DATA_WIDTH-1:0] q_out
                    );
                    
     always @(posedge clk, negedge reset_n)
     begin
            if(!reset_n)
                q_out <= 2'b00;
            else if (up_dn_in)
                q_out <= q_out+1;
            else
                q_out <= q_out-1;
                
     end
endmodule