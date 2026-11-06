module mealy_nofsm_1010(
input clk,rst,din,output reg detected
);
parameter idle = 2'b00;
parameter s1 = 2'b01;
parameter s2 = 2'b10;
parameter s3 = 2'b11;

reg [1:0] ps,ns;
//ps logic
always@(posedge clk)
begin
if(rst)
ps <= idle;
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
if(din == 1'b0)
ns = s2;
else
ns = s1;
end
s2 : begin
if(din == 1'b1)
ns = s3;
else
ns = idle;
end
s3 : begin
if(din == 1'b1)
ns = s1;
else 
ns = idle;
end
default : ns = idle;
endcase
end
//output logic
always@(posedge clk)
begin
if(ps == s3 && din == 1'b0)

detected = 1'b1;
else 
detected = 1'b0;

end

endmodule
