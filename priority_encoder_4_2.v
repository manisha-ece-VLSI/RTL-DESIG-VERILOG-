module priority_encoder_4to2 (
    input  [3:0] din,
    output reg [1:0] y,
    output reg valid
);
always @(*) begin
    valid = 1'b1;
    casez (din)
        4'b1??? : y = 2'b11; // din[3]=1 has highest priority
        4'b01?? : y = 2'b10; // din[2]=1
        4'b001? : y = 2'b01; // din[1]=1
        4'b0001 : y = 2'b00; // din[0]=1
        default : begin
            y = 2'b00;
            valid = 1'b0; // no input active
        end
    endcase
end
endmodule
