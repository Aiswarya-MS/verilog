module graytobinary_tb;
reg g0,g1,g2,g3;
wire b0,b1,b2,b3;
graytobinary gate(.b0(b0),.b1(b1),.b2(b2),.b3(b3),.g0(g0),.g1(g1),.g2(g2),.g3(g3));
initial
begin
$monitor("%b %b %b %b  %b %b %b %b",g3,g2,g1,g0,b3,b2,b1,b0);
$dumpfile("graytobinary_tb.vcd");
$dumpvars(0,graytobinary_tb);
g3=0;
g2=0;
g1=0;
g0=0;
#2
#150 $finish;
end
always #10 g0=!g0;
always #20 g1=!g1;
always #40 g2=!g2;
always #80 g3=!g3;
endmodule