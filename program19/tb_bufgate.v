module tb_bufgate;
reg A;
wire Y;
bufgate g1(.a(A),.y(Y));
initial
begin 
A=1'b0;
#10 A=1'b1;
#10 A=1'bx;
#10 A=1'bz;
#100;$finish;
end
initial
begin
	$dumpfile("tb_bufgate.vcd");
	$dumpvars(0,tb_bufgate);
end
endmodule

