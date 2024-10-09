`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2024 08:54:39 PM
// Design Name: 
// Module Name: task_h_adder
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
task addition (input a_in, b_in, output sum,carry);
begin
    {carry,sum} = a_in + b_in;
end
endtask

module task_h_adder(
                    input a_in,
                    input b_in,
                    output reg carry_out,
                    output reg sum_out
                    );
    always @*
    begin
        addition(a_in, b_in, sum_out, carry_out);
    end
endmodule

module task_f_adder(
                    input a_in,
                    input b_in,
                    input carry_in,
                    output wire carry_out,
                    output reg sum_out
                    );
    wire [1:0]c;
    always @*
    begin
        addition(a_in, b_in, sum_out, carry_out);
        addition(a_in, b_in, sum_out, carry_out);
    end
    
    assign carry_out = c[0] | c[1];                         
endmodule
