module freq_2_tb;
reg clk,rst;
wire f_2;
freq_2 dut(clk,rst,f_2);

initial
begin
{clk,rst}=0;
end

always #5 clk = ~clk;
initial
begin
rst <= 1;
#10;
rst <= 0;

end
endmodule
