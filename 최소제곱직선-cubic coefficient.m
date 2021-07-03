
syms x
syms y
syms A
syms B
syms C
syms D

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
sum10=0;
sum11=0;

for i=1:1:N
       sum1=sum1+x(i)^6;
       sum2=sum2+x(i)^5;
       sum3=sum3+x(i)^4;
       sum4=sum4+x(i)^3;
       sum5=sum5+x(i)^2;
       sum6=sum6+x(i);
       sum7=sum7+y(i)*x(i)^3;
        sum8=sum8+y(i)*x(i)^2;
         sum9=sum9+y(i)*x(i)^1;
         sum10=sum10+y(i);
       
       
       
      
end

tt=zeros(4,4);
tt(1,1)=sum1;
tt(1,2)=sum2;
tt(1,3)=sum3;
tt(1,4)=sum4;
tt(2,1)=sum2;
tt(2,2)=sum3;
tt(2,3)=sum4;
tt(2,4)=sum5;
tt(3,1)=sum3;
tt(3,2)=sum4;
tt(3,3)=sum5;
tt(3,4)=sum6;
tt(4,1)=sum4;
tt(4,2)=sum5;
tt(4,3)=sum6;
tt(4,4)=N;






zz=zeros(4,1);
zz(1,1)=sum7;
zz(2,1)=sum8;
zz(3,1)=sum9;
zz(4,1)=sum10;


ab=zeros(4,1);

ab=inv(tt)*zz;

ab

A=ab(1,1);

B=ab(2,1);

C=ab(3,1);

D=ab(4,1);

A
B
C
D




plot(x,y,'bs')
lsline  % least square line .

for i=1:1:N
    
sum11=sum11+abs(A*x(i)^3+B*x(i)^2+C*x(i)+D-y(i))^2

end;

cc=sum11/N;
 rms=sqrt(cc)  % this is root mean square.


