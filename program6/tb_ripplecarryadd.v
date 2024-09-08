module tb_ripplecarryadd;
reg [3:0]a;
reg [3:0]b;
reg c;
wire[3:0]s;
wire d;
ripplecarryadd g1(.A(a),.B(b),.C(c),.S(s),.D(d));
initial 
begin
a=4'b0000; b=4'b0000; c=1'b0;	
#10 a=4'b0001; b=4'b0001; c=1'b1;
#10 a=4'b0010; b=4'b0010; c=1'b0;	
#10 a=4'b0011; b=4'b0011; c=1'b1;	
#10 a=4'b0100; b=4'b0100; c=1'b0;	
#10 a=4'b0101; b=4'b0101; c=1'b1;	
#10 a=4'b0110; b=4'b0110; c=1'b0;	
#10 a=4'b0111; b=4'b0111; c=1'b1;	
#10 a=4'b1000; b=4'b1000; c=1'b0;	
#10 a=4'b1001; b=4'b1001; c=1'b1;
#10 a=4'b1010; b=4'b1010; c=1'b0;	
#10 a=4'b1011; b=4'b1011; c=1'b1;	
#10 a=4'b1100; b=4'b1100; c=1'b0;	
#10 a=4'b1101; b=4'b1101; c=1'b1;	
#10 a=4'b1110; b=4'b1110; c=1'b0;	
#10 a=4'b1111; b=4'b1111; c=1'b1;
#100;$finish;
end
initial
begin
$dumpfile("tb_ripplecarryadd.vcd");
$dumpvars(0,tb_ripplecarryadd);
end
endmodule
