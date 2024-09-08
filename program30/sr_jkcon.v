module sr_jkcon(j,k,clk,rst,q,qbar);
input j,k,clk,rst;
output q;
output qbar;
wire s,r;
assign s=j&~q;
assign r=k&q;
srflipflop m1(.s(s),.r(r),.clk(clk),.rst(rst),.q(q),.qbar(qbar));
endmodule
