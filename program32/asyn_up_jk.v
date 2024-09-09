module jkff(j,k,clk,rst,q,qb);
input j,k,clk,rst;
output reg q;
output qb;
assign qb=~q;
always@(posedge clk or posedge rst)begin
	if(rst)
begin
	q<=0;
end
else
begin
case({j,k})
2'b00:q<=q;
2'b01:q<=0;
2'b10:q<=1;
2'b11:q<=~q;
endcase
end
end
endmodule

module asyn_up_jk( input clk,rst,
output [2:0]count
);
jkff f1(.clk(clk),.rst(rst),.j(1'b1),.k(1'b1),.q(count[0]));
jkff f2(.clk(~count[0]),.rst(rst),.j(1'b1),.k(1'b1),.q(count[1]));
jkff f3(.clk(~count[1]),.rst(rst),.j(1'b1),.k(1'b1),.q(count[2]));
endmodule 

