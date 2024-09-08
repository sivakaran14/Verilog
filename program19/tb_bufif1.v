module tb_bufif1gate;
reg c,d;
wire t;
bufif1gate f1(.Y(t),.A(c),.B(d));
initial
begin
c=1'b0;d=1'b0;
#10 c=1'b0;d=1'b1;
#10 c=1'b0;d=1'bx;
#10 c=1'b0;d=1'bz;
#100;$finish;
end
initial
begin
$dumpfile("tb_bufif1gate.vcd");
$dumpvars(0,tb_bufif1gate);
end
endmodule
