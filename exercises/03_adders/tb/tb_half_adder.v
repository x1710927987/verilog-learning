// tb_half_adder.v - Testbench for half adder
`timescale 1ns / 1ps

module tb_half_adder;
    reg  a, b;
    wire sum, carry;

    half_adder uut (.a(a), .b(b), .sum(sum), .carry(carry));

    initial begin
        $dumpfile("tb_half_adder.vcd");
        $dumpvars(0, tb_half_adder);

        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;

        $finish;
    end

    initial $monitor("a=%b b=%b | sum=%b carry=%b", a, b, sum, carry);
endmodule
