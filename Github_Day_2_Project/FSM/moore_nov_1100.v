module moore_nov_1100(
input clk,rst,din,output reg detected
);
parameter idle = 3'b000;
parameter s1 = 3'b001;
parameter s2 = 3'b010;
parameter s3 = 3'b011;
parameter s4 = 3'b100;
reg[2:0] ps,ns;
//ps logic
always@(posedge clk)
begin
if (rst)
ps <= 1'b0;
else 
ps <= ns;
end
//ns logic
always@(*)
begin
case(ps)
idle : begin
if(din == 1'b1)
ns = s1;
else 
ns = idle;
end
s1 : begin
if(din == 1'b1)
ns = s2;
else
ns = idle;
end
s2 : begin
if(din == 1'b0)
ns = s3;
else 
ns = s2;
end
s3 : begin
if(din ==1'b0)
ns = s4;
else
ns = s1;
end
s4 : begin
if(din == 1'b0)
ns = idle;
else
ns = s1;

end
default : ns = idle;
endcase
end
//output logic
always@(*)
begin
case(ps)
idle : detected=1'b0;
s1 : detected = 1'b0;
s2 : detected = 1'b0;
s3 : detected = 1'b0;
s4 : detected = 1'b1;
default : detected = 1'b0;
endcase
end
endmodule
