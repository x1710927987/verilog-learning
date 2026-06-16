// tb_ripple_carry_adder_4bit.v - Testbench for 4-bit RCA
`timescale 1ns / 1ps

module tb_ripple_carry_adder_4bit;
    reg  [3:0] a, b;
    reg        cin;
    wire [3:0] sum;
    wire       cout;

    ripple_carry_adder_4bit uut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

    initial begin
        $dumpfile("tb_ripple_carry_adder_4bit.vcd");
        $dumpvars(0, tb_ripple_carry_adder_4bit);

        a = 4'd3;  b = 4'd5;  cin = 0; #10;
        a = 4'd15; b = 4'd1;  cin = 0; #10;   // overflow
        a = 4'd7;  b = 4'd8;  cin = 1; #10;
        a = 4'd0;  b = 4'd0;  cin = 0; #10;

        $finish;
    end

    initial $monitor("a=%d b=%d cin=%b | sum=%d cout=%b", a, b, cin, sum, cout);
endmodule
