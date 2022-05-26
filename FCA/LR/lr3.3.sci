printf("ЧИСЛЕННОЕ ИНТЕГРИРОВАНИЕ И ДИФФЕРЕНЦИРОВАНИЕ\n\n")

printf("Интегрирование по методу трапеций\n\n")

a=5; b=13; x=a:b; y=sqrt(2*x-1)
printf("%f\n",inttrap(x,y))
h=0.5; x=a:h:b; y=sqrt(2*x-1)
printf("%f\n",inttrap(x,y))
h=0.1; x=a:h:b; y=sqrt(2*x-1)
printf("%f\n",inttrap(x,y))

x=a:b; y=sqrt(2*x-1)
printf("%f\n",inttrap(y))
h=0.1; x=a:h:b; y=sqrt(2*x-1)
printf("%f\n",inttrap(y))

printf("\nИнтегрирование по квадратуре\n\n")

printf("%f\n",integrate('(2*x-1)^0.5','x',5,13))

printf("\nИнтегрирование внешней функцией\n\n")

function y=f(x)
    y=sqrt(2*x-1)
endfunction
printf("%f\n",intg(5,13,f))

function y=f1(t)
    y=t^2/sqrt(3+sin(t))
endfunction
[I,err]=intg(0,1,f1)
printf("%f, %e\n",I,err)

printf("\nПриближенное дифференцирование, основанное на интерполяционной формуле Ньютона\n\n")

h=5; x=50:5:65; y=log10(x)
printf("%f, %f, %f, %f\n",y)
dy=diff(y)
dy2=diff(y,2)
dy3=diff(y,3)
printf("//Приближенное значение y`(50) по формуле\n")
Y=(dy(1)-dy2(1)/2+dy3(1)/3)/h
printf("%f\n",Y)
printf("//Значение y`(50) для lg`(x)\n")
Y=1/log(10)/x(1)
printf("%f\n",Y)

printf("\nВычисление производной функции в точке. Приближенное вычисление частных производных\n\n")

//Функция numdiff не поддерживается в версии 6.0.2
