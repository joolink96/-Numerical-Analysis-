
x=-100:delx:100;
pi=3.141592;

delx=2; % 100 points  so h=2;

y=(1/sqrt(2*pi))*exp(-(x.^2/2));




yderiv= (-x/sqrt(2*pi)).*exp(-(x.^2/2));





plot(x,yderiv,'b-')

xlabel('x')
ylabel('y')
grid on

hold on;

dy=diff(y(1:2:end));
dx=diff(x(1:2:end));
dydx_cd=dy./dx;


plot(x(2:2:end),dydx_cd,'k-') %This is backward method 

hold on

figure; % this is curve-fitting 

plot(x,yderiv,'bs')
lsline