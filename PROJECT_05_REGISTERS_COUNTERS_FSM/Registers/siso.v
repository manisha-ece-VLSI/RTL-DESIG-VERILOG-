module siso (
input sin,clk,enb,rst,output sout
);
reg [3:0] temp;
always@(posedge clk)
begin
if(rst)
temp<=4'b0000;
else if(enb)
begin
temp<=temp<<1;
temp[0]<=sin;
end
end
assign sout=temp[3];

endmodule
