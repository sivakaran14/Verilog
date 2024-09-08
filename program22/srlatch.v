module srlatch(s,r,en,q,qn);
input s,r,en;
output reg q;
output qn;
always @(*)begin
	if(en)begin
	q<=0;
end
else
begin
	case({s,r})
		2'b00:q<=q;
	        2'b01:q<=0;
	        2'b10:q<=1;
	        2'b11:q<=1'bx;
	endcase
end
end
assign qn=~q;
endmodule
