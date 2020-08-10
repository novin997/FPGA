`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2020 21:01:04
// Design Name: 
// Module Name: Instruction_ROM
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
module Instruction_ROM(
    input  [(addr_width-1):0] PC,
    output [(addr_width-1):0] instruction
    );
    
    parameter addr_width = 32;
    parameter data_width = 256;
    
    reg [(addr_width-1):0] rom[(data_width-1):0];
    
    initial begin
        $readmemh("PC_Instruction.mem", rom);
    end
endmodule
