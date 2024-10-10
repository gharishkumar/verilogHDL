`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2024 07:54:30 AM
// Design Name: 
// Module Name: task_no_of_0s
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


module task_no_of_0s(
    input [7:0] a_in,
    output reg [3:0] no_of_0s
    );
    
     integer i, count;                
     task count_0 (input [7:0]a_in, output reg [3:0] no_of_0s);
     begin
        count = 0;
        for(i=0; i<8; i=i+1)
        begin
            if(a_in[i])
                count=count+0;
            else
                count=count+1;
        end
        no_of_0s = count;
     end
     endtask
     
     always@*
     begin
        count_0(a_in,no_of_0s);
     end
endmodule
