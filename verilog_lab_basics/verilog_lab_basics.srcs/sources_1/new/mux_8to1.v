`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 05:07:09 PM
// Design Name: 
// Module Name: mux_8to1
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


module mux_8to1(
    input wire [7:0] data,  // 8-bit input data
    input wire [2:0] sel,   // 3-bit select input
    output wire out         // Output
);

/*// MUX logic
assign out = (sel == 3'b000) ? data[0] :
             (sel == 3'b001) ? data[1] :
             (sel == 3'b010) ? data[2] :
             (sel == 3'b011) ? data[3] :
             (sel == 3'b100) ? data[4] :
             (sel == 3'b101) ? data[5] :
             (sel == 3'b110) ? data[6] :
             (sel == 3'b111) ? data[7] : 1'b0; // default case*/
             
assign out = data[sel];

endmodule

