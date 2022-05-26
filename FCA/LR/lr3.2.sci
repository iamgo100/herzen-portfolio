printf("Ввод и формирование массивов и матриц\n");
printf("\n");

mas1=1:2:10;
mas2=1:5;
mas3=mas1+mas2;
mas4=[1 2 3 4 5];
mas5=[6,7,8,9,10];
mas6=[2;4;5];
printf("%d %d %d\n",mas5);
printf("\n");

A=[1 2 3;4 5 6;7 8 9];
a11=A(1,1);
printf("%d\n",a11);
printf("\n");

v1=[1 2 3];
v2=[4 5 6];
B=[v1 v2];
C=[v1;v2];
M1=[C C];
M2=[B;B];
printf("%d, %d, %d, %d\n",B(4),C(2,2),M1(2,3),M2(2,3));
printf("\n");

A(:,2);
A(3,:);
M3=A(2:3,3:1);
A(:,2)=[];
A(3,:)=[];
v3=M3(:);
a=v3(2:4);
a(2)=[];
printf("%d %d\n",A);
printf("\n");

printf("Действия над матрицами\n");
printf("\n");

M4=M1+M2;
M5=M2-M1;
CT=C';
C1=2*CT;
C2=C*C1;
C3=C2^2;
C3/C2;
C3\C2;
M4.*M2;
M2.^2;
C3./C2;
C3.\C2;
function [y]=f(x)
    y=x^2
endfunction;
v4=f(v1);
printf("%d %d %d\n",v4);
printf("\n");

printf("Специальные матричные функции\n");
printf("\n");

D1=matrix(C,3,2);
printf("%d %d\n",D1);
printf("\n");
ones(2,2);
zeros(2,2);
E1=eye(C2);
R=rand(2,3);
printf("%f, %f\n",R(2,3),rand());
printf("\n");
D2=full(sparse([1 2;2 1;3 3],[1,2,3]));
printf("%d, %d\n",D2(1,2),D2(2,2));//1, 0
//hypermatrix в версии 6.0.2 не поддерживается
D3=diag(A);
D4=diag(v2);
printf("%d, %d\n",D3(2),D4(3,3));
//cat в версии 6.0.2 не поддерживается
D5=tril(D4);
D6=triu(D4);
printf("%d, %d\n",D5(1,3),D6(3,1)); //0, 0
printf("\n");
//sort в версии 6.0.2 не поддерживается
[m,n]=size(D1);
k=length(D1);
printf("%d, %d, %d\n",m,n,k);
s1=sum(D1);
s2=sum(D1,1);
s3=sum(D1,2);
printf("%d, %d, %d\n",s1,s2(1),s3(1));
p1=prod(D1);
p2=prod(D1,1);
p3=prod(D1,2);
printf("%d, %d, %d\n",p1,p2(1),p3(1));
[m1,num1]=max(D1);
m2=max(D1,1);
m3=max(D1,2);
printf("%d, %d, %d, %d\n",m1,num1,m2(1),m3(1));
[mi1,num2]=min(D1);
mi2=min(D1,1);
mi3=min(D1,2);
printf("%d, %d, %d, %d\n",mi1,num2,mi2(1),mi3(1));
men1=mean(D1);
men2=mean(D1,1);
men3=mean(D1,2);
printf("%d, %d, %d\n",men1,men2(1),men3(1));
med1=median(D1);
med2=median(D1,1);
med3=median(D1,2);
printf("%d, %d, %d\n",med1,med2(1),med3(1));
d1=det(D2);
r1=rank(D2);
printf("%.0f, %d\n",d1,r1);
n1=norm(D2,1);
n2=norm(D2,2);
n3=norm(D2,'inf');
n4=norm(D2,'fro');
c=cond(D2);
printf("%f, %f, %f, %f, %f\n",n1,n2,n3,n4,c);
s=spec(D2);
l=length(s);
printf("%d\n",s(l));
printf("\n");
D7=inv(D2);
Dp=pinv(D2);
printf("%d %d %d\n",D7);
printf("\n");
printf("%d %d %d\n",Dp);
printf("\n");
//{x1+2x2=7; x1+x2=6}
a=[1 2;1 1];
b=[7;6];
x=linsolve(a,b);
printf("%.0f\n",x);
printf("\n");
A1=[3 -2 1 5;6 -4 2 7;9 -6 3 12];
G=rref(A1);
printf("%.4f %.4f %.4f %.4f\n",G);
printf("\n");
A2=[2 -1 5;3 2 -5;1 1 -2];
[L,U]=lu(A2);
printf("%.4f %.4f %.4f | %.4f %.4f %.4f\n",L,U);
printf("\n");
[Q,R]=qr(A2);
printf("%.4f %.4f %.4f | %.4f %.4f %.4f\n",Q,R);
printf("\n");
[U,S,V]=svd(A2);
printf("%.4f %.4f %.4f | %.4f %.4f %.4f | %.4f %.4f %.4f\n",U,S,V);
printf("\n");
A3=[4 1 -3 -1;2 3 1 -5;1 -2 -2 3];
k=kernel(A3);
printf("%f\n",k);
printf("\n");

printf("Символьные матрицы и операции над ними\n");
printf("\n");

P=['a' 'b';'c' 'd'];
Q=['1' '2';'3' '4'];
printf("%s %s\n",P+Q);
printf("\n");
printf("%s %s\n",P');
//функции addf и mulf в версии 6.0.2 не поддерживаются
