`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2024 08:30:03 AM
// Design Name: 
// Module Name: adder_8bit
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


module adder_8bit(
                    input [7:0] a_in,
                    input [7:0] b_in,
                    input carry_in,
                    output [7:0] sum_out,
                    output carry_out
                    );
     wire [6:0]c;               
                    
     /*full_add_1bit FA_1 (a_in[0] ,b_in[0] ,carry_in ,sum_out[0] ,c[0]);
     full_add_1bit FA_2 (a_in[1] ,b_in[1] ,c[0]     ,sum_out[1] ,c[1]);
     full_add_1bit FA_3 (a_in[2] ,b_in[2] ,c[1]     ,sum_out[2] ,c[2]);
     full_add_1bit FA_4 (a_in[3] ,b_in[3] ,c[2]     ,sum_out[3] ,c[3]);
     full_add_1bit FA_5 (a_in[4] ,b_in[4] ,c[3]     ,sum_out[4] ,c[4]);
     full_add_1bit FA_6 (a_in[5] ,b_in[5] ,c[4]     ,sum_out[5] ,c[5]);
     full_add_1bit FA_7 (a_in[6] ,b_in[6] ,c[5]     ,sum_out[6] ,c[6]);
     full_add_1bit FA_8 (a_in[7] ,b_in[7] ,c[6]     ,sum_out[7] ,carry_out);*/
     
     
     full_add_1bit FA_1 (a_in[0] ,b_in[0] ,carry_in ,sum_out[0] ,c[0]);
     generate
     genvar i;
        for( i=1; i<7; i=i+1)
        begin
            full_add_1bit FA (a_in[i] ,b_in[i] ,c[i-1],sum_out[i] ,c[i]);
        end
     endgenerate
     full_add_1bit FA_8 (a_in[7] ,b_in[7] ,c[6]     ,sum_out[7] ,carry_out);
     
     
endmodule
