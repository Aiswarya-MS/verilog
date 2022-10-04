module booleanfunc(a,b,c,y);
input a,b,c;
output y;
assign y=(!a&b)|(b&!c)|(!b&!c);
endmodule
