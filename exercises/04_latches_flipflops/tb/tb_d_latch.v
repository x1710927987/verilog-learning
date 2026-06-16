// tb_d_latch.v - Testbench for D latch
`timescale 1ns / 1ps

module tb_d_latch;
    reg  d, en;
    wire q, qn;

    d_latch uut (.d(d), .en(en), .q(q), .qn(qn));

    initial begin
        $dumpfile("tb_d_latch.vcd");
        $dumpvars(0, tb_d_latch);

        en=0; d=0; #10;
        en=0; d=1; #10;   // en=0, q should not change
        en=1; d=1; #10;   // en=1, q follows d
        en=1; d=0; #10;
        en=0; d=1; #10;   // en=0 again, q holds

        $finish;
    end

    initial $monitor("d=%b en=%b | q=%b qn=%b", d, en, q, qn);
endmodule
