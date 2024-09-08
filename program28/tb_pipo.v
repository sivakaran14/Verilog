module tb_pipo;
reg clk;
reg[3:0]pi;
wire[3:0]po;
pipo p1(.pi(pi),.po(po),.clk(clk));
initial
begin
	clk=1'b0;
	forever #5 clk=~clk;
end
initial
begin
	pi=4'b1001;
	#100;$finish;
end
initial
begin
	$dumpfile("tb_pipo.vcd");
	$dumpvars(0,tb_pipo);
end
endmodule
	

