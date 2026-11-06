module f_3_50dt_tb;
reg clk,rst,enb;
wire f_3_50dt;
wire [1:0] count;
wire enb1,enb2;
f_3_50dt dut (clk,rst,enb,f_3_50dt,count,enb1,enb2);
initial
begin
{clk,rst,enb}=0;
end
always #5 clk = ~clk;
initial
begin
rst <= 1;
 #10;
rst <= 0;
#10;
enb <= 1;
#100;
enb <=0;
end
endmodule
