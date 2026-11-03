// JK Latch
module jk_latch(
    input en, rst, j, k,
    output reg q, qbar
);
    always @(*) begin
        if(rst) begin
            q <= 1'b0;
            qbar <= 1'b1;
        end
        else if(en) begin
            case({j,k})
                2'b00: begin q <= q; qbar <= qbar; end // Hold
                2'b01: begin q <= 1'b0; qbar <= 1'b1; end // Reset
                2'b10: begin q <= 1'b1; qbar <= 1'b0; end // Set
                2'b11: begin q <= ~q; qbar <= ~qbar; end // Toggle
            endcase
        end
    end
endmodule
