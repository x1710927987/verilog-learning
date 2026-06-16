// encoder4_2.v - 4-to-2 priority encoder
module encoder4_2 (
    input  wire [3:0] in,
    output reg  [1:0] y,
    output reg        valid
);
    always @(*) begin
        casez (in)
            4'b1??? : begin y = 2'b11; valid = 1; end
            4'b01?? : begin y = 2'b10; valid = 1; end
            4'b001? : begin y = 2'b01; valid = 1; end
            4'b0001 : begin y = 2'b00; valid = 1; end
            default : begin y = 2'b00; valid = 0; end
        endcase
    end
endmodule
