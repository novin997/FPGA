`timescale 1ns/1ps

module Test(
    input clk,
    output reg led
);

always@(posedge clk)
begin
    led <= !led;
end
endmodule
    