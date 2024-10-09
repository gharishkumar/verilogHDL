`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2024 09:25:33 PM
// Design Name: 
// Module Name: tb_tri_state_bus
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


module tri_state_bus #(parameter N = 8);
reg [N-1:0]data_bus_in;
reg en_in;
wire [N-1:0]data_bus_out;
                   
tri_state_bus #(.DATA_WIDTH(N))(data_bus_in, en_in, data_bus_out);

initial
begin
    data_bus_in = 8'b1011_1010; en_in=1; #10;
    data_bus_in = 8'b1010_1010; en_in=1; #10;
    data_bus_in = 8'b1001_1010; en_in=0; #10;
    data_bus_in = 8'b1001_1010; en_in=1; #10;
    data_bus_in = 8'b1011_0010; en_in=1; #10;
    data_bus_in = 8'b1011_1010; en_in=1; #10;
    data_bus_in = 8'b1111_1000; en_in=0; #10;
    data_bus_in = 8'b1011_1110; en_in=1; #10;
    data_bus_in = 8'b1011_1011; en_in=1; #10;
    #100 $finish;
end                     
endmodule
