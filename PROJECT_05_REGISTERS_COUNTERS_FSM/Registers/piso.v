module piso(
input clk,rst,load, input [3:0]pin,output reg sout
);
reg [3:0] temp;
always@(posedge clk)
begin 
if(rst)
temp<= 4'b0000;
else if(load)
temp<= pin;
else if(load ==0)
begin
temp <={0,temp[3:1]};
sout <=temp[0];

end
end
endmodule