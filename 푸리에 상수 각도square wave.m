syms t
j=1 % arbitrarirly i substitue to some value to calculate fourier coefficent simply
k=2 % arbitrarirly i substitue to some value to calculate fourier coefficent simply
pi=3 % arbitrarirly i substitue to some value to calculate fourier coefficent simply

f=exp((-j*k*t*pi)/5); % exp(-jkWot)=exp(-(jk2pi/T)*t) <<!!! T!=t and T is 10!!!>>>


c1=(1/10)*int(f,t,[0 10]) %fourier coefficent c1
z1=angle(c1); %fourier coefficent angle z1
t1=[0:5:10]; %Drawing  dots in given section
plot(t1,z1,'r*')
hold on


c2=(-1/10)*int(f,t,[10 20]) %fourier coefficent c2
z2=angle(c2); %fourier coefficent angle z2
t2=[10:5:20]; %Drawing four dots in given section
plot(t2,z2,'g*')
hold on 




c3=(1/10)*int(f,t,[20,30]) %fourier coefficent c3
z3=angle(c3); %fourier coefficent angle z3
t3=[20:5:30]; %Drawing four dots in given section
plot(t3,z3,'b*')

hold on







c4=-(1/10)*int(f,t,[30,40]) %fourier coefficent c4
z4=angle(c4); %fourier coefficent angle z4
t4=[30:5:40]; %Drawing four dots in given section
plot(t4,z4,'r*')
hold on


c5=(1/10)*int(f,t,[40,50]) %fourier coefficent c5
z5=angle(c5);%fourier coefficent angle z5
t5=[40:5:50]; %Drawing four dots in given section
plot(t5,z5,'g*')
hold on

c6=-(1/10)*int(f,t,[50,60]) %fourier coefficent c6
z6=angle(c6);%fourier coefficent angle z6
t6=[50:5:60]; %Drawing four dots in given section
plot(t6,z6,'b*')
hold on

c7=(1/10)*int(f,t,[60,70]) %fourier coefficent c7
z7=angle(c7); %fourier coefficent angle z7
t7=[60:5:70]; %Drawing four dots in given section
plot(t7,z7,'r*')
hold on


c8=-(1/10)*int(f,t,[70,80]) %fourier coefficent c8
z8=angle(c8); %fourier coefficent angle z8
t8=[70:5:80]; %Drawing four dots in given section
plot(t8,z8,'g*')
hold on


c9=(1/10)*int(f,t,[80,90]) %fourier coefficent c9
z9=angle(c9); %fourier coefficent angle z9
t9=[80:5:90]; %Drawing four dots in given section
plot(t9,z9,'b*')
hold on

c10=-(1/10)*int(f,t,[90,100]) %fourier coefficent c10
z10=angle(c10); %fourier coefficent angle z10
t10=[90:5:100]; %Drawing four dots in given section
plot(t10,z10,'r*')
hold on

xlabel("Time");
ylabel("Angle")


z1 %this fourier coefficents angle
z2 %''
z3 %''
z4 %''
z5 %''
z6 %''
z7 %''
z8 %''
z9 %''
z10 %''

%%conclusion : In this graph,angle z1~z10 is 0 or pi in given section.








