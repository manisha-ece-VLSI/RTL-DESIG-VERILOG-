module f_3_count_tb;
reg clk,rst,enb;
wire [1:0] count;
wire f_3;
f_3_count dut (clk,rst,enb,count,f_3);
initial
begin
{clk,rst,enb}=0;
end
always #5 clk=~clk;
initial
begin
rst = 1;
#10;
rst=0;
#10;
enb = 1;
#100;
enb =0;
end
endmodule
