module tb_t_dcon;
reg d,rst,clk;
wire q;
t_dcon d1(.d(d),.clk(clk),.rst(rst),.q(q));
initial
begin
		clk=1'b1;
		forever #5 clk=~clk;
end
initial
begin
 d=1'b0;rst=1'b0;
#10 d=1'b1;rst=1'b0;
#10 d=1'b0;rst=1'b1;
#10 d=1'b1;rst=1'b1;
#100;$finish;
end
initial
begin
	$dumpfile("tb_t_dcon.vcd");
	$dumpvars(0,tb_t_dcon);
end
endmodule

