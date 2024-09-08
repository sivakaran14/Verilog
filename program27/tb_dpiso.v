module tb_dpiso;
reg clk,rst,s1,s2,s3,s4;;
wire s0;
dpiso d1(.clk(clk),.reset(rst),.s1(s1),.s0(s0),.s2(s2),.s3(s3),.s4(s4));
initial
begin
	clk=1'b0;
	forever #5 clk=~clk;
end
initial
begin
	 s1=1'b0;rst=1'b1;
	#10 s2=1'b1;rst=1'b0;
	#10 s3=1'b0;rst=1'b0;
	#10 s4=1'b1;rst=1'b0;
	#100;$finish;
end
initial
begin
	$dumpfile("tb_dpiso.vcd");
	$dumpvars(0,tb_dpiso);
end
endmodule
