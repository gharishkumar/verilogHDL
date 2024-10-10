`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2024 09:12:07 PM
// Design Name: 
// Module Name: tb_loop_shift_left_reg
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


module tb_loop_shift_left_reg # (parameter N = 8);

                        reg [N-1:0] d_in;
                        reg load;
                        reg clk;
                        reg reset_n;
                        wire [N-1:0]d_out;
                        
           for_loop_shift_left_reg DUT (d_in,load,clk,reset_n,d_out);
           always #10 clk = ~clk;
           always 
           begin 
                reset_n = 1; #5;
                reset_n = ~reset_n; #10;
           end
           initial 
           begin 
                clk = 0; reset_n=1;
        #1000 $finish;
    end
                                    
                      
                        
endmodule
