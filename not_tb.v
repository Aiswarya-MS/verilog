module notgate_tb;
wire y;
reg a;
notgate gate(.a(a),.y(y));
initial
begin
$monitor("%b->%b",a,y);
$dumpfile("note_tb.vcd");
$dumpvars(0,notgate_tb);
a=0;
#5
a=1;
#5;
end
endmodule