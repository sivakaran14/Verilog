module tb_srlatch;
reg en,s,r;
wire q,qn;
srlatch d1(.en(en),.s(s),.r(r),.q(q),.qn(qn));
initial
begin
    s=0;r=0;en=1;
#10 s=0;r=1;en=1;
#10 s=1;r=0;en=1;
#10 s=1;r=1;en=1;
#10 s=0;r=0;en=0;
#10 s=0;r=1;en=0;
#10 s=1;r=0;en=0;
#10 s=1;r=1;en=0;
#100;$finish;
end
initial
begin
$dumpfile("tb_srlatch.vcd");
$dumpvars(0,tb_srlatch);
end
endmodule
