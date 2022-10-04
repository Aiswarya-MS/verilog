module fullsubtractor(a,b,bin,d,bout);
input a,b,bin;
output d,bout;
wire out_xor1,out_and1,out_not1,out_not2,out_and2;
xor(out_xor1,b,bin);
xor(d,out_xor1,a);
not(out_not1,b);
and(out_and1,out_not1,bin);
not(out_not2,out_xor1);
and(out_and2,out_not2,a);
or(bout,out_and1,out_and2);
endmodule