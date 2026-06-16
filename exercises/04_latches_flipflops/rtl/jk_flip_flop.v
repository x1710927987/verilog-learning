// jk_flip_flop.v - JK flip-flop (positive-edge triggered)
module jk_flip_flop (
    input  wire clk,
    input  wire j,
    input  wire k,
    input  wire rst_n,
    output reg  q,
    output wire qn
);
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            q <= 1'b0;
        else begin
            case ({j, k})
                2'b00: q <= q;      // hold
                2'b01: q <= 1'b0;   // reset
                2'b10: q <= 1'b1;   // set
                2'b11: q <= ~q;     // toggle
            endcase
        end
    end

    assign qn = ~q;
endmodule
