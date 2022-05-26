program lr33;
var a:real;

function f(x:real):real;
var func:real;

begin
func:=cos(x*x+0.8)/(1.5+sin(0.6*x+0.5));
f:=func;
end;

begin
read(a);
write(f(a));
end.