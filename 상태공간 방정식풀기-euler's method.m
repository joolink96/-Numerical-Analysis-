t=zeros(501,1);
x=zeros(501,1);
t(1)=0;
x(1)=1; %초기값
for i=1:1000
    t(i+1)=t(i)+0.001;
    x(i+1)=x(i)+0.001*(x(i)-x(i)^3+y(i));
end
plot(t,x)
hold on

t=zeros(501,1);
y=zeros(501,1);
t(1)=0;
y(1)=0; %초기값
for i=1:1000
    t(i+1)=t(i)+0.001;
    y(i+1)=y(i)+0.001*(3*x(i)-y(i));
end
plot(t,y)


legend('X1','X2');
  