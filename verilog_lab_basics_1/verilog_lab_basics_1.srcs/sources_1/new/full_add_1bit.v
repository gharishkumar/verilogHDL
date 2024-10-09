`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2024 08:25:33 AM
// Design Name: 
// Module Name: full_add_1bit
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


module full_add_1bit(
                    input a_in,
                    input b_in,
                    input carry_in,
                    output sum_out,
                    output carry_out
                    );
                    

    function [2:0]addition (input a_in,b_in,carry_in);
    begin                
        addition =  a_in + b_in + carry_in;
    end    
    endfunction
    
    assign {carry_out,sum_out} = addition(a_in,b_in,carry_in);                   
endmodule
