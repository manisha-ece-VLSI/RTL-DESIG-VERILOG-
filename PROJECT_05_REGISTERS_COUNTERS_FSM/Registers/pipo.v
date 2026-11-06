module pipo(
input clk,
input rst,
input load,
input [3:0] pin,
output reg [3:0] pout
);

always @(posedge clk)
begin
    if(rst)
        pout <= 4'b0000;
    else if(load)
        pout <= pin;
end

endmodule