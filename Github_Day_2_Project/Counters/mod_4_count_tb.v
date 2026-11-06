module counter_mod4_tb;
reg clk,rst,enb;
wire [2s:0] cout;
counter_mod4 dut(clk,rst,enb,cout);
initial
begin
{clk,rst,enb}=0;
end
always #5 clk=~clk;
initial
begin
rst=1;
#10;
rst=0;
#10;
enb =1;
#50;
enb=0;
end
endmodule


