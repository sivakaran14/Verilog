module tb_johncount;
reg clk,rst;
wire  q1,q2,q3,q4;
johncount h1(.clk(clk),.rst(rst),.q1(q1),.q2(q2),.q3(q3),.q4(q4));
initial
begin
	clk=1'b1;
	 forever #10 clk=~clk;
end
initial
begin
	rst=1'b1;
	#10 rst=1'b0;
	#300;$finish;
end
initial
begin
	$dumpfile("tb_johncount.vcd");
	$dumpvars(0,tb_johncount);
end
endmodule
