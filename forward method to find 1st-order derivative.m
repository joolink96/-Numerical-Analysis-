

x=-100:delx:100;
pi=3.141592;

delx=2; % 100 points  so h=2;

y=(1/sqrt(2*pi))*exp(-(x.^2/2));


fig=figure();
set(fig,'color','white')
plot(x,y,'LineWidth',2)
xlabel('x')
ylabel('y')
grid on

yderiv= (-x/sqrt(2*pi)).*exp(-(x.^2/2));




fig=figure();
set(fig,'color','white')
plot(x,yderiv,'LineWidth',2)
xlabel('x')
ylabel('y')
grid on

yderivest=(y(2:end)-y(1:end-1))./delx;

hold on

plot(x(2:end)-delx/2,yderivest,'r-','LineWidth',2)

legend('Analytical Derivative','Numerical Derivative')


figure; % this is curve-fitting 

plot(x,yderiv,'bs')
lsline
