module 2_4decoder(a,e,y);
input [1:0]a;
output [3:0]y;
input e;
always@(a,en);
if(en==0)
	y=1'b0;
else if
  2'b00;y=4'b0001;
else if
	2'b01;y=4'b0010;
else if
    2'b10;y=4'b0100;
else if
	2'b11;y=4'b1000;
else
	y=1'bx;
end
endmodule

