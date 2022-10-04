module demux_tb;
reg d,s0,s1;
wire d0,d1,d2,d3;

demux gate(.d0(d0),.d1(d1),.d2(d2),.d3(d3),.s0(s0),.s1(s1),.d(d));
initial begin
    $dumpfile("demux_tb.vcd");
    $dumpvars(0,demux_tb);
    $display("S0 | S1 | D || D0 | D1 | D2 | D3");
    $display("--------------------------------");

    $monitor("%b  | %b  | %b  || %b  | %b  | %b  | %b",s0,s1,d,d0,d1,d2,d3);

    d=0;
    s0=0;
    s1=0;
    #9
    #70 $finish;
end
always #40 s0=!s0;
always #20 s1=!s1;
always #10 d=!d;
endmodule