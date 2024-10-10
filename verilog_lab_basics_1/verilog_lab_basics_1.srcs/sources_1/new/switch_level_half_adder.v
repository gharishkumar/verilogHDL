`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2024 09:31:00 AM
// Design Name: 
// Module Name: switch_level_half_adder
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


module switch_level_half_adder (
    input A,
    input B,
    output Sum,
    output Carry
);
    // Internal signals for NMOS and PMOS
    electrical (A, B, Sum, Carry);
    
    // Declare supply voltage and ground
    supply1 Vdd; // Power supply
    supply0 Gnd; // Ground

    // Sum output (A XOR B)
    // PMOS transistors
    pmos(Sum, Vdd, A); // When A = 0
    pmos(Sum, Vdd, B); // When B = 0
    nmos(Sum, A, B); // When both A and B are 1

    // Carry output (A AND B)
    // PMOS transistors
    pmos(Carry, Vdd, A); // When A = 0
    pmos(Carry, Vdd, B); // When B = 0
    nmos(Carry, A, B); // When both A and B are 1

endmodule

