module bool_tb;
wire y;
reg a,b,c,d;
booleanfunc gate(.a(a),.b(b),.c(c),.d(d),.y(y));
initial 
begin
$monitor("%b %b %b %b %b",a,b,c,d,y);
$dumpfile("bool_tb.vcd");
$dumpvars(0,bool_tb);
a=0;
b=0;
c=0;
d=0;
#2
#150 $finish;
end
always #80 a=!a;
always #40 b=!b;
always #20 c=!c;
always #10 d=!d;
endmodule
 