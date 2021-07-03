
syms t
j=1 % arbitrarirly i substitue to some value to calculate fourier coefficent simply
k=2 % arbitrarirly i substitue to some value to calculate fourier coefficent simply
pi=3 % arbitrarirly i substitue to some value to calculate fourier coefficent simply

f=exp((-j*k*t*pi)/5); % exp(-jkWot)=exp(-(jk2pi/T)*t) <<!!! T!=t and T is 10!!!>>>
 c1=(1/10)*int(f,t,[0 10]) %fourier coefficent c1

t1=[0:2:10]; %Drawing dots in given section
plot(t1,c1,'r*')
hold on


c2=(-1/10)*int(f,t,[10 20]) %fourier coefficent c2
t2=[10:2:20]; %Drawing  dots in given section
plot(t2,c2,'g*')
hold on 




c3=(1/10)*int(f,t,[20,30]) %fourier coefficent c3
t3=[20:2:30]; %Drawing dots in given section
plot(t3,c3,'b*')

hold on







c4=-(1/10)*int(f,t,[30,40]) %fourier coefficent c4
t4=[30:2:40]; %Drawing dots in given section
plot(t4,c4,'r*')
hold on


c5=(1/10)*int(f,t,[40,50]) %fourier coefficent c5
t5=[40:2:50]; %Drawing dots in given section
plot(t5,c5,'g*')
hold on

c6=-(1/10)*int(f,t,[50,60]) %fourier coefficent c6
t6=[50:2:60]; %Drawing dots in given section
plot(t6,c6,'b*')
hold on

c7=(1/10)*int(f,t,[60,70]) %fourier coefficent c7
t7=[60:2:70]; %Drawing  dots in given section
plot(t7,c7,'r*')
hold on


c8=-(1/10)*int(f,t,[70,80]) %fourier coefficent c8
t8=[70:2:80]; %Drawing  dots in given section
plot(t8,c8,'g*')
hold on


c9=(1/10)*int(f,t,[80,90]) %fourier coefficent c9
t9=[80:2:90]; %Drawing  dots in given section
plot(t9,c9,'b*')
hold on

c10=-(1/10)*int(f,t,[90,100]) %fourier coefficent c10
t10=[90:2:100]; %Drawing  dots in given section
plot(t10,c10,'r*')
hold on
xlabel("Time");
ylabel("Amplitude")

c1 %this fourier coefficents is made by formula
c2 %''
c3 %''
c4 %''
c5 %''
c6 %''
c7 %''
c8 %''
c9 %''
c10 %''










