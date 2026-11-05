// SR Latch with Enable and Async Reset
module sr_latch(
    input enb, rst, s, r,
    output reg q, qbar
);
    always @(*) begin
        // Asynchronous reset
        if(rst) begin
            q <= 1'b0;
            qbar <= 1'b1;
        end
        else if(enb) begin
            if(s==0 && r==0) begin
                q <= q; // Hold
                qbar <= qbar;
            end
            else if(s==0 && r==1) begin
                q <= 1'b0; //reset
                qbar <= 1'b1;
            end
            else if(s==1 && r==0) begin
                q <= 1'b1; //set
                qbar <= 1'b0;
            end
            else begin // s=1, r=1 Invalid
                q <= 1'bx;
                qbar <= 1'bx;
            end
        end
    end
endmodule
