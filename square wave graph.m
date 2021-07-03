t1=0:0.01:10;

%%to display output result 1 (0~10)
t2=10:0.01:20;
%%to display output result -1 (10~20)
t3=20:0.01:30;
%%to display output result 1 (20~30)
t4=30:0.01:40;

%%to display output result -1 (30~40)

t5=40:0.01:50;
%%to display output result 1 (40~50)
t6=50:0.01:60;

%%to display output result -1 (50~60)
t7=60:0.01:70;
%%to display output result 1 (60~70)
t8=70:0.01:80;

%%to display output result -1 (70~80)
t9=80:0.01:90;
%%to display output result 1 (80~90)
t10=90:0.01:100;

%%to display output result -1 (90~100)

t=[t1 t2 t3 t4 t5 t6 t7 t8 t9 t10];
% t is array of whole space 0~100 (t1~t10)
x1=ones(size(t1));
%all elements 1 during period t1

x2=-ones(size(t2));
%all elements -1 during period t2

x3=ones(size(t3));
%all elements 1 during period t3

x4=-ones(size(t4));
%all elements -1 during period t4

x5=ones(size(t5));
%all elements 1 during period t5

x6=-ones(size(t6));
%all elements -1 during period t6x
x7=ones(size(t7));
%all elements 1 during period t7

x8=-ones(size(t8));
%all elements -1 during period t8


x9=ones(size(t9));
%all elements 1 during period t9

x10=-ones(size(t10));
%all elements -1 during period t10

x=[x1 x2 x3 x4 x5 x6 x7 x8 x9 x10];

%x is array of value x(i)< especially x(i)= 1 or -1 >

plot(t,x);



