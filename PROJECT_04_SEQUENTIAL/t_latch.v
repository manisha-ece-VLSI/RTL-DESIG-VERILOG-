// T Latch
module t_latch(
    input en, rst, t,
    output reg q, qbar
);
    always @(*) begin
        if(rst) begin
            q <= 1'b0;
            qbar <= 1'b1;
        end
        else if(en) begin
            if(t)
                begin q <= ~q; qbar <= ~qbar; end // Toggle
            else
                begin q <= q; qbar <= qbar; end // Hold
        end
    end
endmodule
