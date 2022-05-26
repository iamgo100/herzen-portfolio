program lr104;
const n=10;
var mas:array[1..n] of integer;
    i,j,k,l,a,max,max1:integer;
    f:boolean;

begin
writeln('Введите последовательно ',n,' элементов массива');
for i:=1 to n do
    begin
    read(a);
    mas[i]:=a;
    end;
writeln('Ваш массив: ',mas);

k:=0; l:=0;
for i:=1 to n-1 do
    begin
    max:=mas[i];
    l:=i+1;
    max1:=mas[l];
    for k:=i+1 to n do
        begin
        if mas[k]>max1 then 
            begin
            max1:=mas[k];
            l:=k;
            end;
        end;
    if max1>max then
        begin
        mas[l]:=mas[i];
        mas[i]:=max1;
        end;
    j:=1;
    f:=true;
    while (j<=n-1) and (f=true) do
        if mas[j]<mas[j+1] then f:=false else j:=j+1;
    if f=true then break;
    end;
writeln('Ваш отсортированный массив',mas);
end.