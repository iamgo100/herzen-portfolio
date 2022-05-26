program lr104;
const n=10;
var mas:array[1..n] of integer;
    i,a:integer;

begin
writeln('Введите последовательно ',n,' элементов массива');
for i:=1 to n do
    begin
    read(a);
    mas[i]:=a;
    end;
writeln('Ваш массив: ',mas);
end.