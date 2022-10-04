module fullsubtractor_tb;
wire d,bout;
reg a,b,bin;
fullsubtractor gate(.a(a),.b(b),.bin(bin),.d(d),.bout(bout));
initial
begin
$monitor("%b %b %b %b %b",a,b,bin,d,bout);
$dumpfile("fullsubtractor_tb.vcd");
$dumpvars(0,fullsubtractor_tb);
a=0;
b=0;
bin=0;
#2
#70 $finish;
end
always #40 a=!a;
always #20 b=!b;
always #10 bin=!bin;
endmodule