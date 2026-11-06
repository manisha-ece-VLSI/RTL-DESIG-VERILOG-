module f_5_50dt(
input clk,rst,enb,
output f_5_50dt,
output reg [3:0] count,
output reg enb1,enb2
);
always@(posedge clk)
begin
if(rst) 
count <= 4'b0000;
else 
if(enb && count < 4)
count <= count+1'b1;
else 
if(enb && count == 4)
count <= 4'b0000;
end
always@(posedge clk)
begin
if(rst)
enb1 <= 0;
else
if(count ==0 || count == 1)
enb1 <= 1;
else
enb1 <= 0;
end
always@(negedge clk)
begin
if(rst)
enb2 <= 0;
else
if (count ==0 || count == 1)
enb2 <= 1;
else 
enb2 <= 0;
end
assign f_5_50dt = (enb1)|(enb2);

endmodule
