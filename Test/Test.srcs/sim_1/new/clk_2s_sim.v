`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2020 14:40:23
// Design Name: 
// Module Name: clk_2s_sim
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


module clk_2s_sim();

reg clk;
wire led;

clk_2s tb(clk,led);
initial begin
    clk <= 1;
end
always begin
    #5 clk <= ~clk;
end
endmodule
