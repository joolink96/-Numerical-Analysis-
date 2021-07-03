func= @(t,x) 2*x+x^2/2+1;
t0=0;
t_end=1;

tspan=[t0 t_end];
x0=1

[t,x]=ode45(func,tspan,x0);

plot(t,x)


%conclusion :: Euler and heuns and ode45 methods graph's look are same.
%but function value at x>0.7 is very different.
%ODE 45 is lowest value above three methods and Euler's method is highest value at x>0.7
%function value at x>0.7 -->> ((ODE45<Heun's<Euler's))