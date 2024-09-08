module t_ff(t,clk,rst,q);
input t,clk,rst;
output reg q; 
always@(posedge clk)begin
if (!rst)q<=0;
else begin
	q<=(t?~q:q);
end
end
endmodule


module t_dcon(d,clk,rst,q);
input d,rst,clk;
output q;
wire t;
assign t=d^q;
t_ff t1(.t(t),.clk(clk),.rst(rst),.q(q));
endmodule 
