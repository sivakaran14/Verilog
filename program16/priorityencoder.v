/*module priorityencoder(d0,d1,d2,d3,x,y,v);
input d0,d1,d2,d3;
output x,y,v;
wire x1,x2;
assign x=x2|d3;
assign x1=~d2;
assign x2=d1&x1;
assign y=d2|d3;
assign v=d0|d1|y;
endmodule*/
module priorityencoder(d,y);
input[3:0]d;
output reg[1:0]y;
always@(*)begin
	if (d[3])
		y=2'b11;
	else if(d[2])
		y=2'b10;
	else if(d[1])
		y=2'b01;
	else
		y=2'b00;
end
endmodule


