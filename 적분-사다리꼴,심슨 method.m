

h1=200;

y=@(x) (1/sqrt(2*pi))*exp(-(x.^2/2));

f0=y(-100)
f1=y(100)
s=(h/2)*(f0+f1); %trapozidal rule
s

h2=100; %between [-100,100], -100,0,100 is 3 points . so h=100;

f00=y(-100)
f10=y(0)
f20=y(100)

ss=(h2/3)*(f00+4*f10+f20);

ss  %simson's rule

