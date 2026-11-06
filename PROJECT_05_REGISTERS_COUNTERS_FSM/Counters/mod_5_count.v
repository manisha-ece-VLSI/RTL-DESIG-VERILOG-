module mod_5_count(
input clk,rst,enb,
output reg[2:0] count
);
always@(posedge clk)
begin
if(rst)
count <= 3'b00;
else 
if(enb ==1)
begin
if(count < 4)
count <=count + 1'b1;
else
count <= 0;
end
else 
if(enb == 0)
count <= count;
end
endmodule
