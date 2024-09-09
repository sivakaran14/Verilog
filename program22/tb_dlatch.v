module tb_dlatch;
reg en,d,rst;
wire q;
dlatch d1(.en(en),.d(d),.rst(rst),.q(q));
initial
begin
rst=0;d=0;en=0;
#10 rst=0;d=1;en=0;
#10 rst=1;d=0;en=0;
#10 rst=1;d=1;en=0;
#10 rst=0;d=0;en=1;
#10 rst=0;d=1;en=1;
#10 rst=1;d=0;en=1;
#10 rst=1;d=1;en=1;
#100;$finish;
end
initial
begin
$dumpfile("tb_dlatch.vcd");
$dumpvars(0,tb_dlatch);
end
endmodule
