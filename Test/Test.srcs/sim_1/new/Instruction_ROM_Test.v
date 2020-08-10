`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2020 21:16:56
// Design Name: 
// Module Name: Instruction_ROM_Test
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
module Instruction_ROM_Test(
    );
    
    parameter addr_width = 32;
    parameter data_width = 256;
    
    reg  [(addr_width-1):0] PC;
    wire [(addr_width-1):0] instruction;
    
    Instruction_ROM tb(PC,instruction);
    initial begin
        PC <= 32'h00000000;
    end
    always begin
        #5 PC <= 32'h00000000;
    end
endmodule
