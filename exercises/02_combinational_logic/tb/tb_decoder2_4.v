// tb_decoder2_4.v - Testbench for 2-to-4 decoder
`timescale 1ns / 1ps

module tb_decoder2_4;
    reg  [1:0] in;
    reg        en;
    wire [3:0] y;

    decoder2_4 uut (.in(in), .en(en), .y(y));

    initial begin
        $dumpfile("tb_decoder2_4.vcd");
        $dumpvars(0, tb_decoder2_4);

        en = 0; in = 0; #10;
        en = 1; in = 0; #10;
        en = 1; in = 1; #10;
        en = 1; in = 2; #10;
        en = 1; in = 3; #10;
        en = 0; in = 3; #10;

        $finish;
    end

    initial $monitor("en=%b in=%b | y=%b", en, in, y);
endmodule
