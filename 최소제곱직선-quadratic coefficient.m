
syms x
syms y
syms A
syms B
syms C

N=1000;

x=randn(1,1000)
y=randn(1,1000)
sum1=0;
sum2=0;
sum3=0;
sum4=0;
sum5=0;
sum6=0;
sum7=0;
sum8=0;

sum9=0;

for i=1:1:N
       sum1=sum1+x(i)^4;
       sum2=sum2+x(i)^3;
       sum3=sum3+x(i)^2;
       sum4=sum4+y(i)*x(i)^2;
       sum5=sum5+x(i);
       sum6=sum6+x(i)*y(i);
       sum7=sum7+y(i);
end

tt=zeros(3,3);
tt(1,1)=sum1;
tt(1,2)=sum2;
tt(1,3)=sum3;
tt(2,1)=sum2;
tt(2,2)=sum3;
tt(2,3)=sum5;
tt(3,1)=sum3;
tt(3,2)=sum5;
tt(3,3)=N;

zz=zeros(3,1);
zz(1,1)=sum4;
zz(2,1)=sum6;
zz(3,1)=sum7;


ab=zeros(3,1);

ab=inv(tt)*zz;

ab

A=ab(1,1);

B=ab(2,1);

C=ab(3,1);

A
B
C




plot(x,y,'bs')
lsline  % least square line .

for i=1:1:N
    
sum9=sum9+(abs(A*x(i)^2+B+C-y(i)))^2;

end;

cc=sum9/N;
 rms=sqrt(cc)  % this is root mean square.
