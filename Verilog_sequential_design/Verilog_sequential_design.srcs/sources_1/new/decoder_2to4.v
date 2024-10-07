`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2024 08:25:11 PM
// Design Name: 
// Module Name: decoder_2to4
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


module decoder_2to4(
                    input[1:0] sel_in,
                    input en_in,
                    output reg [3:0] y_out
                    );
   always @*
    case({en_in, sel_in})
        3'b100:  y_out =  4'b0001;
        3'b101:  y_out =  4'b0010;
        3'b110:  y_out =  4'b0100;
        3'b111 :  y_out =  4'b1000;
        default :  y_out =  4'b0000;
         
    endcase
   
endmodule