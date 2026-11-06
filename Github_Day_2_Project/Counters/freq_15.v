module f_15 (
input clk,rst,enb,
output f_1_5_50dt,
output reg [1:0] count,
output reg enb1,enb2
);
always@(posedge clk)
begin
if(rst)
count <= 0;
else if (enb && count <2)
count <= count + 1'b1;
else if(enb && count == 2)
count <= 0;
end
always@(posedge clk)
begin
if(rst) 
count <= 0;
else 
if(enb && count == 2)
enb1 <= 1;
else
enb1 <= 0;
end
always@(negedge clk)
begin
 if(rst)
count <= 0;
else 
if(enb && count == 1)
enb2 <= 1;
else 
enb2 <= 0;
end
assign f_1_5_50dt = enb1 ^ enb2;
endmodule
