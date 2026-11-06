module siso (
    input  wire sin, clk, enb, rst,
    output wire sout
);
    reg [3:0] temp;

    always @(posedge clk) begin
        if (rst)
            temp <= 4'b0000;
        else if (enb)
            temp <= {temp[2:0], sin}; // Shift left and insert sin at LSB
    end

    assign sout = temp[3];
endmodule
