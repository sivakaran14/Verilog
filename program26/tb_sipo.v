module tb_sipo;
reg si_in,clk_in;
wire [3:0]q_out;
sipo s1(.si(si_in),.clk(clk_in),.q(q_out));
initial
begin
	clk_in=1'b0;
	forever #5 clk_in=~clk_in;
end
initial
begin
	si_in=1'b1;
	#10 si_in=1'b0;
        #10 si_in=1'b0;
	#10 si_in=1'b1;
	#100;$finish;

end
initial
begin
	$dumpfile("tb_sipo.vcd");
	$dumpvars(0,tb_sipo);
end
endmodule
