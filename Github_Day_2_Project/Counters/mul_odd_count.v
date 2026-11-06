module mul_odd_count(
input clk,rst,enb,
input[1:0] mode,
output reg [3:0] count
);
always@(posedge clk)
begin
if(rst)
count <= 4'b0000;
else
if(enb == 1)
case(mode)
2'b00 :begin
if( count <2)
count <= count + 1'b1;
else 
count <= 4'b0000;
end
2'b01 : begin
if(count < 4)
count <= count + 1'b1;
else 
count <= 4'b0000;
end
2'b10 : begin
if(count < 6)
count <= count + 1'b1;
else
count <= 4'b0000;
end
2'b11 : begin
if(count < 8)
count <= count + 1'b1;
else 
count <= 4'b0000;
end
endcase
else
if(enb == 0)
count <= count;

end
endmodule


