module fulladder_tb;
wire s,cout;
reg a,b,cin;
fulladder gate(.a(a),.b(b),.cin(cin),.s(s),.cout(cout));
initial
begin
$monitor("%b %b %b -> %b %b",a,b,cin,s,cout);
$dumpfile("fulladder_tb.vcd");
$dumpvars(0,fulladder_tb);
a=0;
b=0;
cin=0;
#2
#70 $finish;
end
always #40 a=!a;
always #20 b=!b;
always #10 cin=!cin;
endmodule
