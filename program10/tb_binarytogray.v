module tb_binarytogray;
reg a,b,c,d;
wire e,f,g,h;
binarytogray g1(.A(a),.B(b),.C(c),.D(d),.E(e),.F(f),.G(g),.H(h));
initial
begin
	 a=1'b0;b=1'b0;c=1'b0;d=1'b0;
	#10 a=1'b0;b=1'b0;c=1'b0;d=1'b1;
	#10 a=1'b0;b=1'b0;c=1'b1;d=1'b0;
	#10 a=1'b0;b=1'b0;c=1'b1;d=1'b1;
	#10 a=1'b0;b=1'b1;c=1'b0;d=1'b0;
	#10 a=1'b0;b=1'b1;c=1'b0;d=1'b1;
	#10 a=1'b0;b=1'b1;c=1'b1;d=1'b0;
	#10 a=1'b0;b=1'b1;c=1'b1;d=1'b1;
	#10 a=1'b1;b=1'b0;c=1'b0;d=1'b0;
	#10 a=1'b1;b=1'b0;c=1'b0;d=1'b1;
	#10 a=1'b1;b=1'b0;c=1'b1;d=1'b0;
	#10 a=1'b1;b=1'b0;c=1'b1;d=1'b1;
	#10 a=1'b1;b=1'b1;c=1'b0;d=1'b0;
	#10 a=1'b1;b=1'b1;c=1'b0;d=1'b1;
	#10 a=1'b1;b=1'b1;c=1'b1;d=1'b0;
	#10 a=1'b1;b=1'b1;c=1'b1;d=1'b1;
	#100;$finish;
end
initial
begin
$dumpfile("tb_binarytogray.vcd");
$dumpvars(0,tb_binarytogray);
end
endmodule
