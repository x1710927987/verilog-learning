// tb_sr_latch.v - Testbench for SR latch
`timescale 1ns / 1ps

module tb_sr_latch;
    reg  s, r;
    wire q, qn;

    sr_latch uut (.s(s), .r(r), .q(q), .qn(qn));

    initial begin
        $dumpfile("tb_sr_latch.vcd");
        $dumpvars(0, tb_sr_latch);

        s=0; r=0; #10;
        s=1; r=0; #10;
        s=0; r=0; #10;
        s=0; r=1; #10;
        s=0; r=0; #10;

        $finish;
    end

    initial $monitor("s=%b r=%b | q=%b qn=%b", s, r, q, qn);
endmodule
