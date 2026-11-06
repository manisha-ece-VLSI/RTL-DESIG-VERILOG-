module sipo_tb();
reg clk;
reg rst;
reg enb;
reg sin;
wire [3:0]pout;
sipo dut(clk,rst,enb,sin,pout);
initial
begin
{clk,rst,enb,sin}=0;
end
always #5 clk=~clk;
initial
begin
rst=1;
#10;
rst=0;
#10;
sin=1;
#10;
sin=1;
#10;
sin=0;
#10;
sin=0;
#10;
enb=1;
 end
endmodule

