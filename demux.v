module demux(d0,d1,d2,d3,d,s0,s1);
input s0,s1,d;
output d0,d1,d2,d3;
wire out_not1,out_not2;
not(out_not1,s1),(out_not2,s0);
and(d0,out_not1,out_not2,d),(d1,out_not2,s1,d),(d2,out_not1,s0,d),(d3,s1,s0,d);
endmodule