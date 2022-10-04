module bool_tb;
wire y;
reg a,b,c;
booleanfunc gate(.a(a),.b(b),.c(c),.y(y));
initial
begin
$monitor("%b %b %b %b",a,b,c,y);
$dumpfile("bool_tb.vcd");
$dumpvars(0,bool_tb);
a=0;
b=0;
c=0;
#9
#70 $finish;
end
always #40 a=!a;
always #20 b=!b;
always #10 c=!c;
endmodule


