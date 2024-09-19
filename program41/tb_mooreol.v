module tb_mooreol;
reg rst,clk,din;
wire dout;
mooreol n1(.clk(clk),.rst(rst),.din(din),.dout(dout));
initial
begin
	clk=1'b0;
	forever #10 clk=~clk;
end
initial
begin
	din=1'b0;rst=1'b1;
	#10 din=1'b1;rst=1'b0;
	#10 din=1'b1;
	#10 din=1'b0;
	#10 din=1'b1;
	#100;$finish;
end
initial
begin
	$dumpfile("tb_mooreol.vcd");
	$dumpvars(0,tb_mooreol);
end
endmodule
