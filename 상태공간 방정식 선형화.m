A=[1 1; 3 -1];

B=[-1;0];
dt=0.00001;
time=0:dt:1;

[a b]=size(time);

X=[1;0];

State=zeros(2,b);
State(:,1)=X;
for j=2:1:b
    dX=(A*X+B)*dt;
    X=X+dX;
    State(:,j)=X;
end

plot(time,State)  

%conclusion :: graph of i,ii is little bit different. but
%but in ii), when we set in equation like<< X'=AX+B , B=[-x1^3;0] >> in x1=-1, problem i), ii) graphs are looks like same .
