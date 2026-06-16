// d_latch.v - D latch (level-sensitive, active-high enable)
module d_latch (
    input  wire d,
    input  wire en,
    output reg  q,
    output wire qn
);
    always @(en or d) begin
        if (en)
            q <= d;
    end

    assign qn = ~q;
endmodule
