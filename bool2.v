module booleanfunc(a,b,c,d,y);
input a,b,c,d;
output y;
assign y=(!a&!c)|(!a&!b&!d)|(!a&b&d)|(a&c&d);
endmodule
