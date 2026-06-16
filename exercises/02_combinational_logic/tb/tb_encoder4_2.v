// tb_encoder4_2.v - Testbench for 4-to-2 priority encoder
`timescale 1ns / 1ps

module tb_encoder4_2;
    reg  [3:0] in;
    wire [1:0] y;
    wire       valid;

    encoder4_2 uut (.in(in), .y(y), .valid(valid));

    initial begin
        $dumpfile("tb_encoder4_2.vcd");
        $dumpvars(0, tb_encoder4_2);

        in = 4'b0000; #10;
        in = 4'b0001; #10;
        in = 4'b0010; #10;
        in = 4'b0100; #10;
        in = 4'b1000; #10;
        in = 4'b1111; #10;   // higher priority wins

        $finish;
    end

    initial $monitor("in=%b | y=%b valid=%b", in, y, valid);
endmodule
