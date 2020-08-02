`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Novin Tong Yong Kang
// 
// Create Date: 02.08.2020 12:58:04
// Design Name: 
// Module Name: clk_2s
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Create a 1s clk signal from a 10ns clk signal so that we can see the led blinking every 1s
//              1s/10ns = 0.1G = 1*10^8(every 1*10^8 times, we will go high to toggle led)
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module clk_2s(
    input clk,
    output reg led
);

// log2(100000000) = 26.75 = 27 bits to reach that count
// Initialise the count as zero first
reg count = 27'd0;
reg enable = 1'b0;

initial begin
    led <= 1'b0;
end

always@(posedge clk)
begin
    if(count == 99999999)
        begin
            count <= 0;
            enable <= 1;
        end
    else
        begin
            count <= count + 1;
            enable <= 0; 
        end
    if(enable)
        led <= !led;
end
endmodule
