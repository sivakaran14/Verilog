module tb_piso;
reg [3:0]p_in;
reg clk_in,mode;
wire so_out;
piso s1(.p(p_in),.clk(clk_in),.so(so_out),.mode(mode));
initial
begin
	clk_in=0;
	forever #5 clk_in =~clk_in;
end
initial
begin
	p_in=4'b1010;
       #100;$finish;
end
initial
begin
	mode=1;
	#10 mode=0;
end
initial
begin
	$dumpfile("tb_piso.vcd");
	$dumpvars(0,tb_piso);
end
endmodule

