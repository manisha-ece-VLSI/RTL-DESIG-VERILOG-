module usr(
input clk,rst,load,sin,shift,
input [1:0] mode,
input [3:0] pin,
output [3:0] pout, sout
);
reg [3:0] temp;

always@(posedge clk)
begin
if(rst)
temp<= 4'b0000;
case (mode)
2'b00 : //siso;
begin
if(shift)
temp<= {sin,temp[3:1]};
else
temp <= temp;
end

2'b01 : //sipo;
begin
if(shift)
temp<= {sin,temp[3:1]};
else 
temp<= temp;
end

2'b10 : //piso;
begin
if(load)
temp<= pin;
else
temp<={sin,temp[3:1]};
end

2'b11 : //pipo;
begin
if(load)
temp<= pin;
else 
temp<= temp;
end
default temp<= temp;

endcase
end
assign sout = temp[0];
assign pout = (shift ==0&&load ==0)? temp:'bx;

endmodule





