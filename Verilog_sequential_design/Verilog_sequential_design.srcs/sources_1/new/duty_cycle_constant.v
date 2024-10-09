`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 08:58:36 PM
// Design Name: 
// Module Name: duty_cycle_constant
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


module duty_cycle_constant(
                    input clk,
                    input reset_n,
                    output reg q_out
                    );
        reg [1:0] counter; // 2-bit counter to count clock cycles

    always @(posedge clk or posedge reset_n)
    begin
        if (!reset_n)
        begin
            counter <= 2'b00; // Reset counter
            q_out <= 0;     // Reset output clock
        end
        else
        begin
            if (counter == 2'b10)
            begin
                q_out <= 1;   // Set output high for T/3
            end
            else if (counter == 2'b00)
            begin
                q_out <= 0;   // Set output low for 2T/3
            end
            
            // Increment counter
            counter <= counter + 1;

            // Reset counter after reaching 3
            if (counter == 2'b11) begin
                counter <= 2'b00;
            end
        end
    end
          
endmodule
