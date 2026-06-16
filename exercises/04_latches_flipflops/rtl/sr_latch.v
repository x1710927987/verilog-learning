// sr_latch.v - SR latch (NOR-based, active-high)
// S=1: Set (Q=1), R=1: Reset (Q=0), S=R=1: invalid
module sr_latch (
    input  wire s,
    input  wire r,
    output wire q,
    output wire qn
);
    assign q  = ~(r | qn);
    assign qn = ~(s | q);
endmodule
