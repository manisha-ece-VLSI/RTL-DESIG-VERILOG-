module f_5 (
input clk,rst,enb,
output reg [3:0] count,
output f_5_y
);
always@(posedge clk)
begin 
if(rst)
count <= 3'b000;
else 
if(enb == 1)
begin
if(count <4)
count <= count +1'b1;
else 
count <= 3'b000;
end
else
if(enb == 0)
count <= count;
end
assign f_5_y = count[2];
endmodule

