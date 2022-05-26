program log;
var a,b:integer;
    c:real;

begin
write('Введите основание логарифма: ');
read(a);
write('Введите число логарифма: ');
read(b);
c:=ln(b)/ln(a);
write(c);
end.