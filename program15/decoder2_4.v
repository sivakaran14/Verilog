/*module decoder2_4(A,B,E,y1,y2,y3,y4);
input A,B,E;
output y1,y2,y3,y4;
wire x1,x2;
not(x1,A);
not(x2,B);
and a1(y4,A,B,E);
and a2(y3,A,x2,E);
and a3(y2,B,x1,E);
and a4(y1,x1,x2,E);
endmodule*/
module decoder2_4(d,y);
input[1:0]d;
output reg[3:0]y;
always@(*)begin
	case(d)
		2'b00:y=4'b0001;
		2'b01:y=4'b0010;
		2'b10:y=4'b0100;
		2'b11:y=4'b1000;
default:y=4'bxxxx;
endcase
end
endmodule


