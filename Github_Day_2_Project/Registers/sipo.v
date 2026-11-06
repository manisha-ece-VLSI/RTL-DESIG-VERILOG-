module sipo(
input clk,rst,enb,sin,output reg [3:0] pout);
reg [3:0] temp;
always@(posedge clk)
if(rst)
begin
temp <= 4'b0000;
end
else if(enb==0
)begin
temp <= temp>>1;
temp[3]<=sin;
end
else if (enb ==1)
begin
pout <=temp;
end
endmodule


