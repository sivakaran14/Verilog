module tb_par_addsub;
reg [3:0]a;
reg [3:0]b;
reg c;
wire[3:0]s;
wire d;
par_addsub g1(.A(a),.B(b),.C(c),.S(s),.D(d));
initial 
begin
a=4'b1111; b=4'b0000; c=1'b0;	
#10 a=4'b0001; b=4'b1001; c=1'b0;
#10 a=4'b0010; b=4'b0110; c=1'b0;	
#10 a=4'b0011; b=4'b0011; c=1'b1;	
#10 a=4'b0100; b=4'b0100; c=1'b1;	
#100;$finish;
end
initial
begin
$dumpfile("tb_par_addsub.vcd");
$dumpvars(0,tb_par_addsub);
end
endmodule
