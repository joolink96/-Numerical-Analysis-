
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

dy=diff(y)
dx=diff(x)
dydx=dy./dx;


plot(x(2:end),dydx,'g-') %This is backward method 

hold on

figure();
plot(x,yderiv,'bs') %curve fitting
lsline
