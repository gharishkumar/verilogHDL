`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 09:20:12 PM
// Design Name: 
// Module Name: encoder_pe
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


module encoder_pe(
                    input [3:0] int_reg,
                    output reg [1:0] y_out,
                    output reg valid_out
                    );
    always@* 
    begin
        if (int_reg[3]==1'b1)
        begin
            y_out= 2'b11;
            valid_out=1;
        end
        else if (int_reg[2]==1'b1)
        begin
            y_out= 2'b10;
            valid_out=1;
        end 
        else if (int_reg[1]==1'b1)
        begin
            y_out= 2'b01;
            valid_out=1;
        end 
        else if (int_reg[1]==1'b1)
        begin
            y_out= 2'b00;
            valid_out=1;
        end
        else
            valid_out=0;
    end
    
endmodule 
