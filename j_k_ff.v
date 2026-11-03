// JK Flip Flop with Async Reset - No Invalid State
module jk_flipflop(
    input clk, rst, j, k,
    output reg q, qbar
);
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            q <= 1'b0;
            qbar <= 1'b1;
        end
        else begin
            case({j,k})
                2'b00: begin q <= q; qbar <= qbar; end // Hold
                2'b01: begin q <= 1'b0; qbar <= 1'b1; end // Reset
                2'b10: begin q <= 1'b1; qbar <= 1'b0; end // Set
                2'b11: begin q <= ~q; qbar <= ~qbar; end // Toggle - JK Advantage!
            endcase
        end
    end
endmodule
