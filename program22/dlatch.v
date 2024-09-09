module dlatch(en,d,rst,q);
input en,d,rst;
output reg q;
always@(en,d)
begin
	if(en)
	begin
		if(rst)
			q<=1'b1;
		else
			q<=d;
	end
	else
		q<=1'b0;
end
endmodule
