module booleanfunc(a,b,c,d,y);
input a,b,c,d;
output y;
assign y=(a&!c)|(!b&d)|(!a&c&d)|(a&b&c&d);
endmodule;
