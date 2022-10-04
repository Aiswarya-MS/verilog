module and_tb;
wire y;
reg a,b;
andgate gate (.a(a),.b(b),.y(y));
initial begin
	$monitor("%b %b - %b",a,b,y);
	$dumpfile("and_tb.vcd");
	$dumpvars(0,and_tb);
	a=0;
	b=0;
	#2
	#30 $finish;
end
always #20 a=!a;
always #10 b=!b;
endmodule;