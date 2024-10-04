`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2024 09:10:04 PM
// Design Name: 
// Module Name: mux_2to1_
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


module mux_2to1_(
                    input a_in,
                    input b_in,
                    input sel_in,
                    output reg y_out
                    );
                    
    always @(a_in,b_in,sel_in)
        begin
        
            if(sel_in==1'b0)
                y_out=a_in;
            else
                y_out=b_in;
            
        end
   

endmodule
