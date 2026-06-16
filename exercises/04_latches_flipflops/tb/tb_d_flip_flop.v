// tb_d_flip_flop.v - Testbench for D flip-flop
`timescale 1ns / 1ps

module tb_d_flip_flop;
    reg  clk, d, rst_n;
    wire q, qn;

    d_flip_flop uut (.clk(clk), .d(d), .rst_n(rst_n), .q(q), .qn(qn));

    // Generate 10ns clock
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $dumpfile("tb_d_flip_flop.vcd");
        $dumpvars(0, tb_d_flip_flop);

        rst_n = 0; d = 0; #12;
        rst_n = 1;        #10;
        d = 1;            #10;
        d = 0;            #10;
        d = 1;            #10;
        rst_n = 0;        #10;   // reset during active

        #20 $finish;
    end

    initial $monitor("clk=%b rst_n=%b d=%b | q=%b", clk, rst_n, d, q);
endmodule
