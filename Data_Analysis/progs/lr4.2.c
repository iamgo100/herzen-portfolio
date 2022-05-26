#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <locale.h>
#include <malloc.h>
int main()
{
    setlocale(LC_ALL,"");
    printf("Исследование успеваемости студентов в РГПУ им. А.И. Герцена по каждому направлению.\n\n");
    float n=15,del,sum,sumX,sumD,srX,disp,otcl,koef;
    int i,j,min,max,k;
    int mas[15]={14,5,12,7,8,10,15,15,8,6,11,19,12,7,8};
    float *mas1,*mas2,*mas3,*mas4,*mas5;
    printf("Список из количества должников по каждому факультету\n");
    for(i=0;i<n;i++)
        printf("%d ",mas[i]);
    printf("\n\n");
    k=round(1+1.4*log(n));
    min=mas[0];
    max=mas[0];
    for(i=1;i<n;i++)
    {
        if(mas[i]<min)
            min=mas[i];
        if(mas[i]>max)
            max=mas[i];
    }
    del=(float)(max-min)/k;
    mas1=malloc((k+1)*sizeof(float));
    mas1[0]=min;
    for(i=1;i<=k;i++)
        mas1[i]=mas1[i-1]+del;
    mas2=malloc(k*sizeof(float));
    for(i=0;i<k;i++)
        mas2[i]=(mas1[i]+mas1[i+1])/2;
    mas3=malloc(k*sizeof(float));
    for(i=0;i<k;i++)
    {
        mas3[i]=0;
        for(j=0;j<n;j++)
            if((mas[j]>=mas1[i]) && (mas[j]<mas1[i+1]))
                mas3[i]++;
    }
    mas3[k-1]+=1;
    mas4=malloc((k+1)*sizeof(float));
    mas4[0]=0;
    for(i=1;i<k+1;i++)
    {
        sum=0;
        for(j=0;j<i;j++)
            sum=sum+mas3[j];
        mas4[i]=sum;
    }
    mas5=malloc((k+1)*sizeof(float));
    for(i=0;i<k+1;i++)
        mas5[i]=mas4[i]/n;
    for(i=0;i<k;i++)
        sumX+=mas2[i]*mas3[i];
    srX=sumX/n;
    for(i=0;i<k;i++)
        sumD+=pow(mas2[i]-srX,2)*mas3[i];
    disp=sumD/n;
    otcl=sqrt(disp);
    koef=otcl/srX;
    printf("| Интервалы |  Середины  | Количество | Накопленные | Накопленные |\n");
    printf("|           | интервалов |   вариант  |   частоты   | частотности |\n");
    printf(" ----------- ------------ ------------ ------------- ------------- \n");
    for(i=0;i<k;i++)
    {
        printf("| %-9g | %-10g | %-10g | %-11g | %-11g |\n",mas1[i],mas2[i],mas3[i],mas4[i],mas5[i]);
        printf(" ----------- ------------ ------------ ------------- ------------- \n");
    }
    printf("| %-9g |            |            | %-11g | %-11g |\n",mas1[k],mas4[k],mas5[k]);
    printf(" ----------- ------------ ------------ ------------- ------------- \n");
    printf("Среднее число должников: %g\nДисперсия: %g\nСреднеквадратичное отклонение: %g\nКоэффициент вариативности: %g\n",srX,disp,otcl,koef);
    return 0;
}
