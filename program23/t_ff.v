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


/*always@(posedge clk  or posedge rst)begin
	if(~rst)
	begin
		q<=1;
	end
	else
	begin
		q<=~q;*/
	       

