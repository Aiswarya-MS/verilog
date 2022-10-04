module mux_tb;
reg s1,s0,i0,i1,i2,i3;
wire y;
mux gate(.s1(s1),.s0(s0),.i0(i0),.i1(i1),.i2(i2),.i3(i3),.y(y));
initial
begin
$dumpfile("mux_tb.vcd");
$dumpvars(0,mux_tb);
$display("S1 | S0 | I0 | I1 | I2 | I3 | Y ");
$display("...............................");
$monitor("%b | %b | %b | %b | %b | %b | %b ",s1,s0,i0,i1,i2,i3,y);
s1=0;
s0=0;
i0=0;
i1=0;
i2=0;
i3=0;
#5
s1=0;
s0=1;
i0=0;
i1=1;
i2=0;
i3=0;
#5
s1=1;
s0=0;
i0=0;
i1=0;
i2=1;
i3=0;
#5
s1=1;
s0=1;
i0=0;
i1=0;
i2=0;
i3=1;
#5;
end
endmodule
