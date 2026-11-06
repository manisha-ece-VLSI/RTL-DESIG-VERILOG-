module usr_tb;
reg clk,rst,load,sin,shift;
reg [1:0] mode;
reg  [3:0] pin;
wire [3:0] pout, sout;
usr dut(clk,rst,load,sin,shift,mode,pin,pout,sout);
initial 
begin
{clk,rst,load,sin,shift,mode,pin}=0;
end

always #5 clk=~clk;
initial
begin
rst=1;
#10;
rst=0;
#10;
mode = 2'b00;
shift = 1'b1;
sin=1'b1;
#10;
sin= 1'b0;
#10;
sin=1'b1;
#10;
sin=1'b1;

#50;
shift = 1'b0;
end
endmodule

