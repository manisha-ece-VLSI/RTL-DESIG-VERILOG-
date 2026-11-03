// SR Flip Flop with Async Reset
module sr_flipflop(
    input clk, rst, s, r,
    output reg q, qbar
);
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            q <= 1'b0;
            qbar <= 1'b1;
        end
        else begin
            case({s,r})
                2'b00: begin q <= q; qbar <= qbar; end
                2'b01: begin q <= 1'b0; qbar <= 1'b1; end
                2'b10: begin q <= 1'b1; qbar <= 1'b0; end
                2'b11: begin q <= 1'bx; qbar <= 1'bx; end // Invalid
            endcase
        end
    end
endmodule
