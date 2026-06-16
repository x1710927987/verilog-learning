// tb_mux2_1.v - Testbench for 2-to-1 multiplexer
`timescale 1ns / 1ps

module tb_mux2_1;
    reg  a, b, sel;
    wire y;

    mux2_1 uut (.a(a), .b(b), .sel(sel), .y(y));

    initial begin
        $dumpfile("tb_mux2_1.vcd");
        $dumpvars(0, tb_mux2_1);

        a=0; b=0; sel=0; #10;
        a=0; b=0; sel=1; #10;
        a=0; b=1; sel=0; #10;
        a=0; b=1; sel=1; #10;
        a=1; b=0; sel=0; #10;
        a=1; b=0; sel=1; #10;
        a=1; b=1; sel=0; #10;
        a=1; b=1; sel=1; #10;

        $finish;
    end

    initial $monitor("a=%b b=%b sel=%b | y=%b", a, b, sel, y);
endmodule
