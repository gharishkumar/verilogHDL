`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2024 08:03:44 PM
// Design Name: 
// Module Name: tb
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


module tb;
     
      
    initial
        print();
    initial
        print();
    initial    
        print();
    integer i=0;
    task automatic print();
        begin
            i=i+1;
            $display("%0h",i);
        end
    endtask       
endmodule
