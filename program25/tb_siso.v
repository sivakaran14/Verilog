module tb_siso;
reg si_in,clk_in;
wire so_out;
siso s1(.si(si_in),.clk(clk_in),.so(so_out));
initial
begin
	clk_in=0;
	forever #5 clk_in =~clk_in;
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
	$dumpfile("tb_siso.vcd");
	$dumpvars(0,tb_siso);
end
endmodule

