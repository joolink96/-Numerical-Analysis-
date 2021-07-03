F=@(t,x)(2*t*x+x^2/2+1);

[t,x]=ode45(F,[0,1],1);

plot(t,x)

%ODE 45 method 
% and Heuns method and RK2 midpoint method is very similar to this
%ODE 45 graph , but EUler's method is little bit different.