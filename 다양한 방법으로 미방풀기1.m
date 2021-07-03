

F=@(t,y)(y*t^2-1.1*y);

[t,y]=ode45(F,[0,2],1);

plot(t,y)

hold on;



t=zeros(201,1);
y=zeros(201,1);
t(1)=0;
y(1)=1; %초기값
for i=1:2000
    t(i+1)=t(i)+0.001;
    y(i+1)=y(i)+0.001*(y(i)*t(i)^2-1.1*y(i));
end
plot(t,y)

hold on;



for i=1:2000
    t(i+1)=t(i)+0.001;
    k1=y(i)*t(i)^2-1.1*y(i);
    y0=y(i)+0.001*k1;
    k2=y0*t(i+1)^2-1.1*y0;
    
    y(i+1)=y(i)+0.001/2*(k1+k2);
end
plot(t,y)  %Heun's method


hold on;




for i=1:2000
    t(i+1)=t(i)+0.001;
    k1=y(i)*t(i)^2-1.1*y(i);
    y0=y(i)+0.001/2*k1;
   
    k2=y0*(t(i)+0.001/2)^2-1.1*y0;
    
    y(i+1)=y(i)+k2*0.001;
    
end
plot(t,y)  %RK2 midpoint method


legend('ODE45','Euelr','Heuns','RK2');



%in this graph, Euler's and heun's method is exactly same. and 
%RK2 and 0DE 45 method is little different. so we must magnify graph in
%large.
