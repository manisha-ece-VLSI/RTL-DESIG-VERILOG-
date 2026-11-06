module freq_4_tb;
reg clk,rst, enb;
wire f_4;
wire [1:0] count;
freq_4 dut (clk,rst,enb,f_4);
initial
begin
{clk,rst,enb}=0;
end
always #5 clk =~clk;
initial
begin
rst <= 1;
#10;
rst<= 0;
#10;
enb <= 1;
#100;

enb <= 0;
end

endmodule



