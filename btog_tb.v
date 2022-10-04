module binarytogray_tb;
wire g0,g1,g2,g3;
reg b0,b1,b2,b3;
binarytogray gate(.b0(b0),.b1(b1),.b2(b2),.b3(b3),.g0(g0),.g1(g1),.g2(g2),.g3(g3));
initial
begin
$monitor("%b %b %b %b  %b %b %b %b",b3,b2,b1,b0,g3,g2,g1,g0);
$dumpfile("binarytogray_tb.vcd");
$dumpvars(0,binarytogray_tb);
b3=0;
b2=0;
b1=0;
b0=0;
#2
#150 $finish;
end
always #10 b0=!b0;
always #20 b1=!b1;
always #40 b2=!b2;
always #80 b3=!b3;
endmodule
 