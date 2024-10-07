`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2024 09:27:20 PM
// Design Name: 
// Module Name: dut_shift_reg_4bit
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


module dut_shift_reg_4bit;

       reg clk;
       reg reset_n;
       reg dir_in;
       reg [3:0]data_in;
       reg load;
       wire [3:0]q_out;
       
       shift_reg_4bit(dir_in,load,data_in,clk,reset_n,q_out);
       
       always #5 clk = ~clk;
       initial
        
       begin
       
       $display ("the simulaiton results are ::");
       $monitor ("time=%0t, reset_n=%0h, load = %0, dir_in=%0h",
                    $time, reset_n, load, dir_in);
            clk = 0; reset_n = 0; load = 0;dir_in = 0; data_in = 4'd0;
       #10           reset_n = 0; load = 0;dir_in = 0; data_in = 4'd0;
       #10                        load = 0;dir_in = 0; data_in = 4'd0;
       #10                                        load = 0;dir_in = 1;    
             
end
endmodule
