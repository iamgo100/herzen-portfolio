#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <locale.h>
#include <malloc.h>
int main()
{
    setlocale(LC_ALL,"");
    printf("Исследование данных о распределении рабочих цеха по тарифному разряду\n\n");
    float n=50,sum,sumX,sumD,srX,disp,otcl,koef;
    int i,j,k=6;
    float *mas3,*mas4;
    float mas1[]={1,2,3,4,5,6};
    float mas2[]={2,3,6,8,22,9};
    mas3=malloc((k+1)*sizeof(float));
    mas3[0]=0;
    for(i=1;i<k+1;i++)
    {
        sum=0;
        for(j=0;j<i;j++)
            sum=sum+mas2[j];
        mas3[i]=sum;
    }
    mas4=malloc((k+1)*sizeof(float));
    for(i=0;i<k+1;i++)
        mas4[i]=mas3[i]/n;
    for(i=0;i<k;i++)
        sumX+=mas1[i]*mas2[i];
    srX=sumX/n;
    for(i=0;i<k;i++)
        sumD+=pow(mas1[i]-srX,2)*mas2[i];
    disp=sumD/n;
    otcl=sqrt(disp);
    koef=otcl/srX;
    printf("| Тарифный | Количество | Накопленные | Накопленные |\n");
    printf("|  разряд  |   рабочих  |   частоты   | частотности |\n");
    printf(" ---------- ------------ ------------- ------------- \n");
    for(i=0;i<k;i++)
    {
        printf("| %-8g | %-10g | %-11g | %-11g |\n",mas1[i],mas2[i],mas3[i],mas4[i]);
        printf(" ---------- ------------ ------------- ------------- \n");
    }
    printf("                        | %-11g | %-11g |\n",mas3[k],mas4[k]);
    printf(" ---------- ------------ ------------- ------------- \n");
    printf("Среднее число рабочих по одному тарифу: %g\nДисперсия: %g\nСреднеквадратичное отклонение: %g\nКоэффициент вариативности: %g\n",srX,disp,otcl,koef);
    return 0;
}
