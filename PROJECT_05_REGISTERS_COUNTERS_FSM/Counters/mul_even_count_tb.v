module mul_count_tb;
reg clk,rst,enb;
reg [1:0] mode;
wire  mod_2_count;
wire [1:0] mod_4_count;
wire [2:0] mod_8_count;
wire [3:0] mod_16_count;

mul_count dut(clk,rst,enb,mode,mod_2_count,mod_4_count,mod_8_count,mod_16_count);
initial
begin
{clk,rst,enb,mode}=0;
end
always #5 clk =~clk;

initial
begin
rst <= 1;
#10;
rst <= 0;
#10;
enb <= 1;

mode <= 2'b00;
#10;
mode <= 2'b01;
#10;
mode <= 2'b10;
#10;
mode <= 11;
#70;
enb <= 0;
end
endmodule




