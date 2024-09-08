module tb_mux2_1;
reg a,b,c;
wire d;
mux2_1 m1(.i1(a),.i2(b),.s1(c),.y(d));
initial 
begin
    c=1'b0;a=1'b1;b=1'b0;
#10 c=1'b1;b=1'b0;b=1'b1; 
#100;$finish;
end 
initial
begin
$dumpfile("tb_mux2_1.vcd");
$dumpvars(0,tb_mux2_1);
end
endmodule

