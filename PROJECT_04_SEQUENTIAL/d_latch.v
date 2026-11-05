// D Latch with Reset
module d_latch(
    input en, rst, d,
    output reg q
);
    always @(*) begin
        if(rst)
            q = 1'b0;
        else if(en)
            q = d;
    end
endmodule
