`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 08:38:09 PM
// Design Name: 
// Module Name: tb_logic_unit
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


module tb_logic_unit;

reg [3:0]a_in;
reg [3:0]b_in;
reg [1:0]opcode_in;
wire [3:0]result_out;

          logic_unit DUT 
          (
            .a_in(a_in),
            .b_in(b_in),
            .opcode_in(opcode_in),
            .result_out(result_out)
              
          );
          always #10 a_in = a_in + 1;
          always #40 b_in = b_in + 1;
          always #160 opcode_in = opcode_in + 1;
          
          initial
          begin
                a_in = 0; b_in = 0; opcode_in = 0;
                #1000 $finish;
                
          end
            
endmodule
