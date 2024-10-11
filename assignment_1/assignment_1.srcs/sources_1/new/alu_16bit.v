`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2024 09:02:33 PM
// Design Name: 
// Module Name: alu_16bit
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


module alu_16bit(
    input [15:0] a_in,
    input [15:0] b_in,
    input [3:0] opcode,
    input clk,
    input reset_n,
    output reg [15:0] result_out,
    output reg zero_flag_out,
    output reg sign_flag_out, //sign of SUB result_out
    output reg carry_flag_out, //carry of ADD result_out
    output reg parity_flag_out
    );
    reg [15:0] a_reg, b_reg;
    
    reg zero_flag, sign_flag, carry_flag, parity_flag;

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            a_reg <= 16'b0;
            b_reg <= 16'b0;
            result_out <= 16'b0;
            zero_flag_out <= 1'b0;
            sign_flag_out <= 1'b0;
            carry_flag_out <= 1'b0;
            parity_flag_out <= 1'b0;
        end else begin
 
            a_reg <= a_in;
            b_reg <= b_in;


            case (opcode)
                4'b0000: {carry_flag_out, result_out} <= a_reg + b_reg;
                4'b0001: {carry_flag_out, result_out} <= a_reg - b_reg;
                4'b0010: {carry_flag_out, result_out} <= a_reg + 1;
                4'b0011: {carry_flag_out, result_out} <= a_reg - 1;
                4'b0100: result_out <= a_reg >> 1;
                4'b0101: result_out <= a_reg << 1;
                4'b0110: result_out <= a_reg | b_reg;
                4'b0111: result_out <= a_reg ^ b_reg;
                4'b1000: result_out <= a_reg & b_reg;
                4'b1001: result_out <= ~a_reg;
                default: result_out <= 16'b0;
            endcase


            zero_flag <= (result_out == 16'b0);
            sign_flag <= result_out[15];
            parity_flag <= ~^result_out;

        end
    end
endmodule
