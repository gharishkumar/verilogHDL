`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 08:12:39 PM
// Design Name: 
// Module Name: decoder_2to4_in_case
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


module decoder_2to4_in_case(
                            input [1:0] set_in,
                            input en_in,
                            output reg [3:0] y_out
                            );
                            
    always @*
        /*if(en_in)
            case(set_in)
                2'b00 : y_out = 4'b0001;
                2'b01 : y_out = 4'b0010;
                2'b10 : y_out = 4'b0100;
                2'b11 : y_out = 4'b1000;
            endcase
        else
            y_out = 4'b0000;*/
            
       case({en_in,set_in})
            3'b100 : y_out = 4'b0001;
            3'b101 : y_out = 4'b0010;
            3'b110 : y_out = 4'b0100;
            3'b111 : y_out = 4'b1000;
            default : y_out = 4'b0000;
       endcase
            
endmodule
