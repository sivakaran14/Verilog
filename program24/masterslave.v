module masterslave(j,k,clk,rst,q,qb);
input j;
input k;
input clk,rst;
output q,qb;
wire mas_q,mas_qb;
jkff f1(.j(j),.k(k),.clk(clk),.rst(rst),.q(mas_q),.qb(mas_qb));
jkff f2(.j(mas_q),.k(mas_qb),.clk(~clk),.rst(rst),.q(q),.qb(qb));
endmodule
