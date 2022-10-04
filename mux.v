module mux(s1,s0,i0,i1,i2,i3,y);
input s1,s0,i0,i1,i2,i3;
output y;
wire out_not1,out_not2,out_and1,out_and2,out_and3,out_and4;
not (out_not1,s1),(out_not2,s0);
and (out_and1,out_not1,out_not2,i0),(out_and2,out_not1,s0,i1),(out_and3,s1,out_not2,i2),(out_and4,s1,s0,i3);
or (y,out_and1,out_and2,out_and3,out_and4);
endmodule

