`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2024 08:27:01 PM
// Design Name: 
// Module Name: full_adder_1bit_task
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


module full_adder_1bit_task(
                    input a_in,
                    input b_in,
                    input carry_in,
                    output reg sum_out,
                    output reg carry_out
                   );
                    

    task addition(input a_in, b_in, carry_in, output sum_out, carry_out);
    begin                
        {carry_out,sum_out} = a_in + b_in + carry_in;
    end    
    endtask
    
    
    always @*
    begin
        addition(a_in, b_in, carry_in, sum_out, carry_out);
    end                  
endmodule