module halfadder(a,b,s,c);
input a,b;
output reg s,c;
always@(*)
begin
if(a==b)
	s=0;
else
	s=0;
if(a==1&&b==1)
	c=1;
else
	c=0;
end
endmodule
