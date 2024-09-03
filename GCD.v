`timescle 1ns/1ps

module gcd_n(
    input wire [7:0]x,
    input wire [7:0]y,
    input clk,
    output reg [7:0]gcd_out
);
reg [7:0;]v;
reg [7:0]u;
reg [1:0]s = 0;

always @(posedge clk)
begin 
    case(s)
    2'b00 begin 
                u =x;
                v= y;
                s=2'b01;
                end
    2'b01:begin
                if (u==0 ||v==0)
                begin   
                    if(u==0)
                    gcd_out=v;
                    else if (v==0)
                    gcd_out = u;
                    s= 2'b00;
                    end
                    else
                    begin
                            if (u!=v)
                                if(u>v)
                                beginu=u-v;
                                s=2'b01;
                                end
                                else
                                begin
                                v=v-u;
                                s=2'b01;
                                end
                            else
                                s=2'b11;
                            end
                            end
                        2'b11:begin
                        gcd_out=u;
                        s=2'b00;
                        end
                        endcase
end
endmodule