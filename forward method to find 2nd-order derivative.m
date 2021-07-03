h=2;% 100 points  so h=2;
x=-100:h:100;
pi=3.141592;

syms Va11
syms Va12
syms Va13



y=(1/sqrt(2*pi))*exp(-(x.^2/2));
yderiv= (-x/sqrt(2*pi)).*exp(-(x.^2/2));

%f=sin(x)*cos(3*x);
a=1;

Va11=(1/sqrt(2*pi))*exp(-((a+h).^2/2));
Va12=(1/sqrt(2*pi))*exp(-((a-h).^2/2));
Va13=(1/sqrt(2*pi))*exp(-(a.^2/2));
Second_Der=(Va11-2*Va13+Va12)/(h^2);
Second_Der


plot(x,yderiv,'bs')
lsline