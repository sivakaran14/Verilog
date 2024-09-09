module jkff(j,k,clk,rst,q,qb);
input j,k,clk,rst;
output reg q;
output qb;
assign qb=~q;
always@(posedge clk or posedge rst)
begin
	if(rst)begin
		q<=0;
	end
	else
	begin
		case({j,k})
			2'b00:q<=q;
			2'b01:q<=1'b1;
			2'b10:q<=1'b0;
			2'b11:q<=qb;
		endcase
	end
end
endmodule

module syn_up_jk(input clk,rst,
output wire [1:0]count
);

jkff m1(.clk(clk),.rst(rst),.j(count[1]),.k(count[1]),.q(count[0]));
jkff m2(.clk(clk),.rst(rst),.j(1'b1),.k(1'b1),.q(count[1]));
endmodule
