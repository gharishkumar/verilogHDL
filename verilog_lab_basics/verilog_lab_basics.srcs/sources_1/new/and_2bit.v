`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/DATA_WIDTH-10/2024 08:57:5DATA_WIDTH-1 AM
// Design Name: 
// Module Name: and_2bit
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


module and_2bit(
                input a_in,     //a input of 2 ip and
                input b_in,     //b input of 2 ip and
                output y_out    //y output of 2 ip and
                );
                
//functionality of design
          
assign y_out = a_in && b_in;



endmodule
