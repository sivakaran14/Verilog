module jkff(j,k,clk,rst,q,qb);
input j,k,clk,rst;
output reg q,qb;
always@(posedge clk)
	if(rst)
begin
	if((j==0)&(k==0))
	begin
		q<=q;
		qb<=~q;
	end 
	else if((j==0)&(k==1))
	begin
		q<=0;
		qb<=1;
	end
	else if((j==1)&(k==0))
	begin
		q<=1;
	        qb<=0;
	end
	else if((j==1)&(k==1))
	begin	
	     q<=~q;
	     qb<=q;
	end 
end
endmodule

