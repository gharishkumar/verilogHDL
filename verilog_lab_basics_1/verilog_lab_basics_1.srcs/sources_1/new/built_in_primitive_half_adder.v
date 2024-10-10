`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2024 08:57:49 AM
// Design Name: 
// Module Name: built_in_primitive_half_adder
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


module built_in_primitive_half_adder(
                                    input a_in,
                                    input b_in,
                                    output sum_out,
                                    output cary_out
                                    );
                                    
        
                    xor u1(sum_out, a_in, b_in);
                    and u2(carry_out, a_in, b_in);
                                               
         
endmodule
