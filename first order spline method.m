



%data
x=randn(1,100)
y=randn(1,100)

figure;
plot(x,y,'o');

%interpolation using piecewise linear function
p1=spapi(2,x,y);
hold on;
fnplt(p1,'r',2);

%method 2
cs=csapi(x,y);
fnplt(cs,'b',2);
