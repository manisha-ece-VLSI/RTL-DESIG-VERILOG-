module mul_count (
input clk,rst,enb,input [1:0] mode,
output reg mod_2_count,
output reg [1:0] mod_4_count,
output reg [2:0] mod_8_count,
output reg [3:0] mod_16_count);

reg [3:0] counter_internal;

always@(posedge clk)
begin
if(rst)
counter_internal <= 0;
else if(enb)
counter_internal <= counter_internal+1'b1;
else 
counter_internal <= counter_internal;
end
always@(posedge clk)
begin
case(mode)
2'b00 : begin
mod_2_count <= counter_internal[0];
end
2'b01 : begin
mod_4_count <= counter_internal[1:0];
end
2'b10 : begin
mod_8_count <= counter_internal[2:0];
end
2'b11 : begin
mod_16_count <= counter_internal[3:0];
end
endcase
end
endmodule
