module demux1_2(a,s,y1,y2);
input a,s;
output y1,y2;
wire x;
not n1(x,s);
and a1(y1,a,s);
and a2(y2,a,x);
endmodule
