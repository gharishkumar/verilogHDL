`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2024 08:45:29 PM
// Design Name: 
// Module Name: shift_reg_4bit
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


module shift_reg_4bit(
                    input dir_in,
                    input load,
                    input [3:0] data_in,
                    input clk,
                    input reset_n,
                    output reg [3:0] q_out
                    );
                    
    
    always@(posedge clk or negedge reset_n)
    begin
        if(!reset_n)
        begin
            q_out <= 4'b000;
        end
        else if(load)
        begin
            q_out <= data_in;
        end
        else if(dir_in)
        begin
            q_out <= {1'b0,q_out[3:1]};
        end
        else
        begin
            q_out <= {q_out[2:0],1'b0};
        end
    end   
     
endmodule
