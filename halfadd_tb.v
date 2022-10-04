module halfadder_tb;
wire s,c;
reg a,b;
halfadder gate(.a(a),.b(b),.s(s),.c(c));
initial
begin
$monitor("%b %b %b %b",-a,b,s,c);
$dumpfile("halfadder_tb.vcd");
$dumpvars(0,halfadder_tb);
a=0;
b=0;
#2
#30 $finish;
end
always #20 a=!a;
always #10 b=!b;
endmodule