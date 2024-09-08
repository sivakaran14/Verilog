module piso(p,so,clk,mode);
input clk,mode;
input[3:0]p;
output so;
reg [3:0]q=0;
always@(posedge clk)
begin
   if(mode)
	q<=p;
   else
   begin
	q[3]<=1'bx;
	q[2]<=q[3];
	q[1]<=q[2];
	q[0]<=q[1];
       end
end
assign so=q[0]; 
endmodule
