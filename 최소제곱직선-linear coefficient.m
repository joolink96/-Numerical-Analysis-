syms x
syms y

N=1000;

x=randn(1,1000)
y=randn(1,1000)
sum1=0;
sum2=0;
sum3=0;
sum4=0;

sum5=0;

for i=1:1:N
       sum1=sum1+x(i)^2;
       sum2=sum2+x(i);
       sum3=sum3+x(i)*y(i);
       sum4=sum4+y(i);
end

A=((N*sum3)-(sum2*sum4))/((N*sum1)-(sum2^2));
B=sum4/N-(A*sum2)/N;
A
B

plot(x,y,'bs')
lsline  % least square line .

for i=1:1:N
    
sum5=sum5+(abs(A*x(i)+B-y(i)))^2

end;

cc=sum5/N
 rms=sqrt(cc)  % this is root mean square.






