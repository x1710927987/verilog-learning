// tb_full_adder.v - Testbench for full adder
`timescale 1ns / 1ps

module tb_full_adder;
    reg  a, b, cin;
    wire sum, cout;

    full_adder uut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

    initial begin
        $dumpfile("tb_full_adder.vcd");
        $dumpvars(0, tb_full_adder);

        // Test all 8 input combinations
        integer i;
        for (i = 0; i < 8; i = i + 1) begin
            {a, b, cin} = i;
            #10;
        end

        $finish;
    end

    initial $monitor("a=%b b=%b cin=%b | sum=%b cout=%b", a, b, cin, sum, cout);
endmodule
