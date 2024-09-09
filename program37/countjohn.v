module dff(
input clk,rst,d,
output reg q,
output qb
);
assign qb=~q;
always@(posedge clk or posedge rst)
begin
	if(rst)
	begin
		q<=0;
	end
	else
	begin
		q<=d;
	end
end
endmodule

module johncount(
input clk,rst,
output q1,q2,q3,q4
);
dff d1(.d(~q4),.clk(clk),.q(q1),.rst(rst));
dff d2(.d(q1),.clk(clk),.q(q2),.rst(rst));
dff d3(.d(q2),.clk(clk),.q(q3),.rst(rst));
dff d4(.d(q3),.clk(clk),.q(q4),.rst(rst));
endmodule
