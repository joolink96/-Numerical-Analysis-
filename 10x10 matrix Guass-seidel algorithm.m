n=10;

A=randn(n,n)+0.001*eye(n,n)
b=randn(n,1)
P=[0;0;0;0;0;0;0;0;0;0] %this value you have to insert by directly like this when, n=20
e=0.00001;

N=length(b);
X=zeros(N,1);
Y=X+1;
j=1;

while abs(Y-X)>e
    Y=X;
    for i=1:N
        X(i)=(b(i)/A(i,i))-(A(i,[1:i-1,i+1:N])*P([1:i-1,i+1:N]))/A(i,i);
        P(i)=X(i);
    end
    fprintf('Iteration no %d \n',j)
    X
    plot(X)
    j=j+1;
end

