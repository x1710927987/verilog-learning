// d_flip_flop.v - D flip-flop (positive-edge triggered)
module d_flip_flop (
    input  wire clk,
    input  wire d,
    input  wire rst_n,
    output reg  q,
    output wire qn
);
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            q <= 1'b0;
        else
            q <= d;
    end

    assign qn = ~q;
endmodule
