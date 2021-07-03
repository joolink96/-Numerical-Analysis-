
syms t

j=1 % arbitrarirly i substitue to some value to calculate fourier coefficent simply
k=2 % arbitrarirly i substitue to some value to calculate fourier coefficent simply
pi=3 % arbitrarirly i substitue to some value to calculate fourier coefficent simply



f1=(100*t-1)*exp(-j*k*100*pi*t) % because w=2*pi*f=2*pi*50 <f=1/T=1/0.02 >
                               %in seciton [0,0.02], x(t)=100t-1

c1= (1/0.02)*int(f1,t,[0 0.02]) %fourier coefficent c1
z1= angle(c1); %fourier coefficent angle z1

t1=[0:0.001:0.02];  %section
plot(t1,z1,'*r');   %display dots angle in section

hold on;



f2=(100*(t-2/100)-1)*exp(-j*k*100*pi*t) % because w=2*pi*f=2*pi*50 <f=1/T=1/0.02 >
                               %in seciton [0,0.02], x(t)=100(t-2/100)-1

c2= (1/0.02)*int(f2,t,[0.02 0.04]) %fourier coefficent c2

z2= angle(c2); %fourier coefficent angle z2


t2=[0.02:0.001:0.04];%section
plot(t2,z2,'*g');  %display dots angle in section

hold on;


f3=(100*(t-4/100)-1)*exp(-j*k*100*pi*t) % because w=2*pi*f=2*pi*50 <f=1/T=1/0.02 >
                               %in seciton [0,0.02], x(t)=100(t-4/100)-1

c3= (1/0.02)*int(f3,t,[0.04 0.06]) %fourier coefficent c3

z3= angle(c3); %fourier coefficent angle z3
t3=[0.04:0.001:0.06]; %section
plot(t3,z3,'*b');  %display dots angle in section

hold on;



f4=(100*(t-6/100)-1)*exp(-j*k*100*pi*t) % because w=2*pi*f=2*pi*50 <f=1/T=1/0.02 >
                               %in seciton [0,0.02], x(t)=100(t-6/100)-1

c4= (1/0.02)*int(f4,t,[0.06 0.08]) %fourier coefficent c4

z4= angle(c4); %fourier coefficent angle z4

t4=[0.06:0.001:0.08]; %section
plot(t4,z4,'*r');  %display dots angle in section

hold on;



f5=(100*(t-8/100)-1)*exp(-j*k*100*pi*t) % because w=2*pi*f=2*pi*50 <f=1/T=1/0.02 >
                               %in seciton [0,0.02], x(t)=100(t-8/100)-1

c5= (1/0.02)*int(f5,t,[0.08 0.1]) %fourier coefficent c5

z5= angle(c5); %fourier coefficent angle z5


t5=[0.08:0.001:0.1]; %section
plot(t5,z5,'*g');  %display dots angle in section

hold on;

ylabel("Angle")


