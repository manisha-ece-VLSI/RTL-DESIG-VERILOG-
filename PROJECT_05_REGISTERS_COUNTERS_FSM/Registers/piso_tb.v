module piso_tb;
reg clk;
reg rst;
reg [3:0]pin;
reg load;
wire sout;
piso dut(clk,rst,pin,load,sout);
initial
begin
{clk,rst,pin,load}=0;
end
always #5 clk =~clk;
initial
begin
rst = 1;
#10;
rst= 0;
#10;
pin = 4'b1101;
load =1'b1;

#20;
load = 1'b0;
end
endmodule


