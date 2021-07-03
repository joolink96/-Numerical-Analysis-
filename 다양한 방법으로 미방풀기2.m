
F=@(t,y)((1+4*t)*sqrt(y));

[t,y]=ode45(F,[0,1],1);

plot(t,y)

hold on;



t=zeros(201,1);
y=zeros(201,1);
t(1)=0;
y(1)=1; %초기값
for i=1:4
    t(i+1)=t(i)+0.25;
    y(i+1)=y(i)+0.25*((1+4*t(i))*sqrt(y(i)));
end
plot(t,y)

hold on;



for i=1:4
    t(i+1)=t(i)+0.25;
    k1=(1+4*t(i))*sqrt(y(i))
    y0=y(i)+0.25*k1;
    k2=(1+4*t(i+1))*sqrt(y0);
    
    y(i+1)=y(i)+0.25/2*(k1+k2);
end
plot(t,y)  %Heun's method


hold on;




for i=1:4
    t(i+1)=t(i)+0.25;
    k1=(1+4*t(i))*sqrt(y(i))
    y0=y(i)+0.25/2*k1;
   
    k2=(1+4*(t(i)+0.25/2))*sqrt(y0);
    
    y(i+1)=y(i)+k2*0.25;
    
end
plot(t,y)  %RK2 midpoint method


legend('ODE45','Euelr','Heuns','RK2');



%in this graph, ODE 45 has 1 graph, but other methods are have 2 graphs in 
%given section.
