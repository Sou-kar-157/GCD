`include "GCD.v"
timescale 1ns/1ps
module gcd_n_tb();
reg [7:0]a,b;
reg clk;
wire [7:0]c;

gcd_n g(a,b,c,clk,c);

initial
begin
clk=1'b0;
forever #5 clk=~clk;
end
initial
begin
        a=8'd4;
        b=8'd0;
        #100
        a=8'd128;
        b=8'd64;
        #100
        a=8'd22;
        b=8'd33;
        #100
        a=8'd45;
        b=8'b81;
        #200
        $finish;
        end
        endmodule
