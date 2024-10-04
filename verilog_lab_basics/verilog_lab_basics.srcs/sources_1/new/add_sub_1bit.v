`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 07:54:56 AM
// Design Name: 
// Module Name: add_sub_1bit
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


module add_sub_1bit(
    input a_in,
    input b_in,
    input opcode_in,
    output sum_out,
    output flag_out
    );
    
    reg sum_diff;
    /*always @(*)
    begin
        if (opcode_in)
            {flag_out,sum_out} = a_in - b_in;
        else
            {flag_out,sum_out} = a_in + b_in;
    end*/
    
    /*always @(*)
    begin
        sum_out = a_in ^ b_in;
        if (opcode_in)
            flag_out = a_in & b_in;
        else
            flag_out = ~a_in & b_in;
    end*/
    
    always @(*)
    begin
    
        if (opcode_in)
        begin
            sum_diff = ~b_in;
        end
        else
        begin
            sum_diff = b_in;
        end
 
    end
    assign {flag_out,sum_out} = a_in + (sum_diff + opcode_in);
    
endmodule
