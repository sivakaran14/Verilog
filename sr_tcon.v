module srflipflop(s,r,clk,rst,q);
input s,r,clk,rst;
output reg q;
wire qbar;
assign qbar=~q;
always@(posedge clk or posedge rst)
begin
	if(rst)
		q<=0;
else begin
	case({s,r})
		2'b00:q<=q;
		2'b01:q<=1'b0;
		2'b10:q<=1'b1;
		2'b11:q<=1'bx;
	endcase
end
end
endmodule

module sr_tcon(t,clk,rst,q);
input t,clk,rst;
output q;
wire s,r;
assign s=t&~q;
assign r=t&q;
srflipflop s1(.s(s),.r(r),.clk(clk),.rst(rst),.q(q));
endmodule
