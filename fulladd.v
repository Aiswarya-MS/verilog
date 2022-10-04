module fulladder(a,b,cin,s,cout);
input a,b,cin;
output s,cout;
wire out_xor1,out_and1,out_and2;
xor (out_xor1,a,b),(s,out_xor1,cin);
and (out_and1,a,b);
and (out_and2,cin,out_xor1);
or (cout,out_and1,out_and2);
endmodule
