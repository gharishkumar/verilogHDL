`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2024 07:56:57 AM
// Design Name: 
// Module Name: counter_mod_5
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


module counter_mod_5(
                    input [2:0]data_in,
                    input load,
                    input up_dn_in,
                    input clk,
                    input reset_n,
                    output [2:0]q_out
                    );
      reg [2:0]count;              
      
      always@ (posedge clk or negedge reset_n)
      begin
            if(!reset_n)
                count <= 3'b000;
            else if(load)
                count <= load;
            else if(count == 3'b101)
                count <= 3'b000;
            else if(up_dn_in)
                count <= count+1; 
            else
                count <= count-1;    
      end
      
      assign q_out = count;
      
endmodule
