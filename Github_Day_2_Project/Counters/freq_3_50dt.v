module f_3_50dt(
input clk,rst,enb,
output f_3_50dt,
output reg [1:0] count,
output reg enb1,enb2
);
always@(posedge clk)
begin
if(rst)
count <= 0;
if(enb && count < 2)
count <= count + 1'b1;
else 
if(enb && count == 2)
count <= 0;
end
always@(posedge clk)
begin
if (count == 0)
enb1 <= 1'b1;
else 
enb1 <= 1'b0;
end
always@(negedge clk)
begin
if(count ==1)
enb2 <= 1'b1;
else 
enb2 <= 1'b0;
end
assign f_3_50dt = (enb1)|(enb2);
endmodule 

