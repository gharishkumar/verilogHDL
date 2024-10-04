`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2024 09:20:29 AM
// Design Name: 
// Module Name: tb_exercise_2
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


module tb_exercise_2();
reg [3:0] a_in;
reg [3:0] b_in;
wire [3:0] NOT_out;
wire [3:0] AND_out;
wire [3:0] OR_out;
wire [3:0] NAND_out;
wire [3:0] NOR_out;
wire [3:0] XOR_out;
wire [3:0] XNOR_out;

exercise_2 #(.DATA_WIDTH(4)) DUT
( .a_in(a_in),
  .b_in(b_in),
  .AND_out(AND_out),  
  .OR_out(OR_out),  
  .NAND_out(NAND_out),  
  .NOR_out(NOR_out),  
  .NOT_out(NOT_out),  
  .XOR_out(XOR_out),  
  .XNOR_out(XNOR_out)  
);


initial
begin

a_in = 0;
b_in = 0;

#10 a_in = 4'b001;
    b_in = 4'b000;
    
end
endmodule
