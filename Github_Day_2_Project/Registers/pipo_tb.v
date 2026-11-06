module pipo_tb;
reg clk;
reg rst;
reg load;
reg [3:0] pin;
wire [3:0]pout;
pipo dut(clk,rst,load,pin,pout);
initial 
begin
{clk,rst,load,pin}=0;
end
always #5 clk =~clk;
initial
begin
 rst=1;
#10;

rst = 0;
#10;
pin = 4'b1110;
load =1'b1;
#30;
load =0;
end 
endmodule