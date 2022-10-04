module notgate(a,y);
input a;
output reg y;
always@(*)
begin
if (a==1)
    y=0;
else
    y=1;
end
endmodule