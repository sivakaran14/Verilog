module tb_demux1_2;
reg A,S;
wire y1,y2;
demux1_2 d1(.a(A),.s(S),.y1(y1),.y2(y2));
initial
begin
	A=1;S=0;
	#10 A=1;S=1;
	#100;$finish;
end
initial
begin
	$dumpfile("tb_demux1_2");
	$dumpvars(0,tb_demux1_2);
end
endmodule
