

A=[0 1 0 0; 0 0 1 0; 0 0 0 1; -9/2 -7/2 -5/2 -1/2];
B=[0;0;0;-3];



dt=0.00001;
time=0:dt:1;

[a b]=size(time);

X=[0.1;0.2;0.3;0.5];

State=zeros(4,b);
State(:,1)=X;



for j=4:1:b
    dX=(A*X+B)*dt;
    X=X+dX;
    State(:,j)=X;
end

plot(time,State)
