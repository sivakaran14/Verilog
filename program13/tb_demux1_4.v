module tb_demux1_4;
reg a,s1,s2;
wire y1,y2,y3,y4;
demux1_4 w1(.A(a),.S1(s1),.S2(s2),.Y1(y1),.Y2(y2),.Y3(y3),.Y4(y4));
initial 
begin
 a=1'b1;s1=1'b0;s2=1'b0;
#10 a=1'b1;s1=1'b0;s2=1'b1;
#10 a=1'b1;s1=1'b1;s2=1'b0;
#10 a=1'b1;s1=1'b1;s2=1'b1;
#100;$finish;
end
initial 
begin
$dumpfile("tb_demux1_4.vcd");
$dumpvars(0,tb_demux1_4);
end
endmodule
