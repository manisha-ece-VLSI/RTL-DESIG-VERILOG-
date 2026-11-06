module mul_odd_count_tb;
reg clk,rst,enb;
reg [1:0] mode;
wire [3:0] count;
mul_odd_count dut (clk,rst,enb,mode,count);
initial
begin
{clk,rst,enb,mode} = 0;
end
always #5 clk = ~clk;
initial
begin
rst = 1;
enb  = 0;
mode = 2'b00;
#10;
rst= 0;
enb = 1;
mode = 2'b00;
#100;
mode = 2'b01;

#100;
mode = 2'b10;
#100;
mode = 2'b11;
#150;
enb = 0;

end
 endmodule
