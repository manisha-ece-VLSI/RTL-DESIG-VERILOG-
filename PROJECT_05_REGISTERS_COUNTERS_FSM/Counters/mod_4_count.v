module counter_mod4(
input clk,rst,enb,output reg[2:0] cout
);
always@(posedge clk)
begin
if(rst)
begin
cout <= 1'b0;
end
else if(enb)
begin 
cout <=cout+1'b1;
end
else 
cout = cout;
 end
endmodule

