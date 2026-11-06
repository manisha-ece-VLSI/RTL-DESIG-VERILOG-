module f_5_50dt_tb;
reg clk,rst,enb;
wire f_5_50dt;
wire [3:0] count;
wire enb1,enb2;
f_5_50dt dut(clk,rst,enb,f_5_50dt,count,enb1,enb2);
initial
begin
{clk,rst,enb}=0;
end
always #5 clk =~clk;
initial
begin
rst = 1;
#10;
rst = 0;
#10;
enb = 1;
#200;
enb = 0;
end
endmodule
