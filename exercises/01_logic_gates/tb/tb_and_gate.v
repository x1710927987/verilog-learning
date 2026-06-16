// tb_and_gate.v - Testbench for 2-input AND gate
`timescale 1ns / 1ps

module tb_and_gate;
    reg  a, b;
    wire y;

    and_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        $dumpfile("tb_and_gate.vcd");
        $dumpvars(0, tb_and_gate);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end

    initial begin
        $monitor("a=%b b=%b | y=%b", a, b, y);
    end
endmodule
