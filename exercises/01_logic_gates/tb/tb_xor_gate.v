// tb_xor_gate.v - Testbench for 2-input XOR gate
`timescale 1ns / 1ps

module tb_xor_gate;
    reg  a, b;
    wire y;

    xor_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        $dumpfile("tb_xor_gate.vcd");
        $dumpvars(0, tb_xor_gate);

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
