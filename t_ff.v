// T Flip Flop with Async Reset
module t_flipflop(
    input clk, rst, t,
    output reg q, qbar
);
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            q <= 1'b0;
            qbar <= 1'b1;
        end
        else begin
            if(t) begin
                q <= ~q;      // Toggle when T=1
                qbar <= ~qbar;
            end
            else begin
                q <= q;       // Hold when T=0
                qbar <= qbar;
            end
        end
    end
endmodule
