program lr14;
var a,b,c,f,l,x:integer;

begin
read(a);
f:=a div 100;
b:=a div 10;
c:=b mod 10;
l:=a mod 10;
x:=l+c+f;
write(x);
end.