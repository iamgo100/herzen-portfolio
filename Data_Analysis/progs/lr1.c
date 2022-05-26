#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <malloc.h>
int main()
{
    int n,i;
    float *m1,*m2,*m3,d0,dsr1,dsr2,so,absp,otnp,sum1=0,sum2=0;
    printf("Zadacha 1.\nVvedite kolichestvo izmereniy: ");
    scanf("%d",&n);
    m1=(float*)malloc(n*sizeof(float));
    printf("Vvedite vashi izmereniya:\n");
    for (i=1;i<=n;i++)
    {
        printf("%d. ",i);
        scanf("%f",&m1[i-1]);
    }
    printf("Vvedite 'd0': ");
    scanf("%f",&d0);
    m2=(float*)malloc(n*sizeof(float));
    m3=(float*)malloc(n*sizeof(float));
    for (i=0;i<n;i++)
    {
        m2[i]=fabs(m1[i]-d0);
        m3[i]=pow(m2[i],2);
    }
    for (i=0;i<n;i++)
    {
        sum1+=m2[i];
        sum2+=m3[i];
    }
    dsr1=d0+(1./n)*sum1;
    dsr2=(1./(n*(n-1)))*(sum2-n*pow(dsr1-d0,2));
    so=sqrt(dsr2);
    absp=2.57*so;
    otnp=absp/dsr1*100;

    printf("| n |   d   |  di-d0  | (di-do)^2 | Srednee d | Sr.-kv. pogr. | Stand. otklon. | Abs. pogr. | Otn. pogr. |\n");
    printf(" ---+-------+---------+-----------+-----------+---------------+----------------+------------+------------ \n");
    printf("| 1 | %2.2f |   %1.2f  | %9f | %9f |   %9f   |    %9f   |  %9f |  %9f |\n",m1[0],m2[0],m3[0],dsr1,dsr2,so,absp,otnp);
    printf(" ---+-------+---------+-----------+-----------+---------------+----------------+------------+------------ \n");
    for (i=1;i<n;i++)
        {
        printf("| %d | %2.2f |   %1.2f  | %9f |           |               |                |            |            |\n",i+1,m1[i],m2[i],m3[i]);
        printf(" ---+-------+---------+-----------+-----------+---------------+----------------+------------+------------ \n");
        }
    printf("                                                                                 %2.2f+-%1.2f              \n",dsr1,absp);

    getchar();
    return 0;
}
