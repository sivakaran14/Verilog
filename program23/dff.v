module dff(d,clk,rst,q,qbar);
input d,clk,rst;
output q,qbar;
reg q,qbar;
always @(posedge clk)
	if(rst)
begin
	q<=d;
	qbar<=~d;
end
endmodule
