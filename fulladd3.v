module fulladder(a,b,cin,s,cout);
input a,b,cin;
output reg s,cout;
always@(*)
begin
if(a==0&&b==0&&cin==0)
begin
    s=0;
    cout=0;
end
else if(a==0&&b==0&&cin==1)
begin
    s=1;
    cout=0;
end
else if(a==0 && b==1 && cin==0)
begin
    s=1;
    cout=0;
end
else if(a==0 && b==1 && b==1)
begin
    s=0;
    cout=1;
end
if(a==1&&b==0&&cin==0)
begin
    s=1;
    cout=0;
end
else if(a==1&&b==0&&cin==1)
begin
    s=0;
    cout=1;
end
else if(a==1 && b==1 && cin==0)
begin
    s=0;
    cout=1;
end
else if(a==1 && b==1 && b==1)
begin
    s=1;
    cout=1;
end
end
endmodule