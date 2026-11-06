module siso_tb;
reg sin;
reg clk;
reg rst;
reg enb;
wire sout;
siso dut(
.sin(sin),
.clk(clk),
.rst(rst),
.enb(enb),
.sout(sout)
);
initial
begin
{sin,clk,rst,enb}=0;
end
always #5 clk = ~clk;
initial 
begin
rst=1;
#10;
rst = 0;
#10;
enb=0;
#10;
enb = 1;
#10;
sin=1;
#10;
sin=0;
#10;
sin=1;
#10;
sin = 1;
#50;
enb =0;
end
endmodule

