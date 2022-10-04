module orgate(a,b,y);
input a,b;
output reg y;
always@(*)
begin 
	if(a==0 && b==0)
		y=0;
	else
		y=1;
end
endmodule