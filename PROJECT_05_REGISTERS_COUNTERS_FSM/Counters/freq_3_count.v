module f_3_count (
input clk,rst,enb,
output reg [1:0] count,
output f_3
);
always@(posedge clk)
begin 
if(rst)
count <= 2'b00;
else 
if(enb == 1)
begin
if(count <2)
count <= count +1'b1;
else 
count <= 2'b00;
end
else
if(enb == 0)
count <= count;
end
assign f_3 = count[1];
endmodule

