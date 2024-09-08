module tb_dff;
reg tb_d,tb_clk,tb_rst;
wire tb_q,tb_qbar;
dff d1(.d(tb_d),.clk(tb_clk),.rst(tb_rst),.q(tb_q),.qbar(tb_qbar));
initial
begin
	tb_clk=1'b1;
	forever #10 tb_clk=~tb_clk;
end
initial
begin
	tb_d=1'b0; tb_rst=1'b0;
	#10 tb_d=1'b1; tb_rst=1'b0;
	#10 tb_d=1'b0; tb_rst=1'b1;
	#10 tb_d=1'b1; tb_rst=1'b1;
	#100;$finish;
end
initial
begin
	$dumpfile("tb_dff.vcd");
	$dumpvars(0,tb_dff);
end
endmodule
