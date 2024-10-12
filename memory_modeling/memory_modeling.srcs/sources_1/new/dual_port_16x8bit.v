`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2024 10:49:35 AM
// Design Name: 
// Module Name: dual_port_16x8bit
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


/*module dual_port_16x8bit(
                    input [1:0][3:0]address_in,
                    inout [1:0][7:0]data_io,
                    input [1:0]cs,
                    input [1:0]write_en,
                    input [1:0]out_en,
                    input clk
                    );
    reg [7:0] temp_reg;
    reg [7:0] memory [0:15];
    
    always@(posedge clk)
    begin                
        if(cs[0] && write_en[0])
                memory[0][address_in] <= data_io[0];
    end
    always@(posedge clk)
    begin                
        if(cs[1] && write_en[1])
                memory[1][address_in] <= data_io[1];
    end
    
    always@(posedge clk)
    begin           
        if(cs[0] && !write_en[0])
                temp_reg <= memory[0][address_in];     
    end
    always@(posedge clk)
    begin           
        if(cs[1] && !write_en[1])
            temp_reg <= memory[1][address_in];     
    end
    
    *//*assign data_io[0] = (cs[0] && !write_en[0] && out_en[0])?temp_reg:8'bzzzz_zzzz;
    assign data_io[1] = (cs[1] && !write_en[1] && out_en[1])?temp_reg:8'bzzzz_zzzz;*//*
    assign data_io = (cs && !write_en && out_en)?temp_reg:8'bzzzz_zzzz;
endmodule*/


module dual_port_16x8bit(
                    input [3:0] address_in_0,
                    inout [7:0] data_io_0,
                    input cs_0,
                    input write_en_0,
                    input out_en_0,
                    input [3:0] address_in_1,
                    inout [7:0] data_io_1,
                    input cs_1,
                    input write_en_1,
                    input out_en_1,
                    input clk
                    );
    reg [7:0] temp_reg_0;
    reg [7:0] memory [0:15];
    always@(posedge clk)
    begin                
        if(cs_0 && write_en_0)
                memory[address_in_0] <= data_io_0;
    end
    always@(posedge clk)
    begin           
        if(cs_0 && !write_en_0)
                temp_reg_0 <= memory[address_in_0];     
    end
    assign data_io_0 = (cs_0 && !write_en_0 && out_en_0)?temp_reg_0:8'bzzzz_zzzz;
    
    reg [7:0] temp_reg_1;
    always@(posedge clk)
    begin                
        if(cs_1 && write_en_1)
                memory[address_in_1] <= data_io_1;
    end
    always@(posedge clk)
    begin           
        if(cs_1 && !write_en_1)
                temp_reg_1 <= memory[address_in_1];     
    end
    assign data_io_1 = (cs_1 && !write_en_1 && out_en_1)?temp_reg_1:8'bzzzz_zzzz;
endmodule