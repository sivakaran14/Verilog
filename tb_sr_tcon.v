module tb_sr_tcon;
reg t,clk,rst;
wire q;
sr_tcon s1(.t(t),.clk(clk),.rst(rst),.q(q));
initial
begin
	clk=1'b0;
	forever #5 clk=~clk;
end
initial
begin
		t=1'b0;rst=1'b0;
		#10 t=1'b1;rst=1'b0;
		#10 t=1'b0;rst=1'b1;
		#10 t=1'b1;rst=1'b1;
		#100;$finish;
end
initial
begin
	$dumpfile("tb_sr_tcon.vcd");
	$dumpvars(0,tb_sr_tcon);
end
endmodule
