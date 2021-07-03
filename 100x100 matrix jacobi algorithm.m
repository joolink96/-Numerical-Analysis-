n=100;
A=randn(n,n)+100*eye(n,n)
b=randn(n,1)

n=length(b);
x=zeros(n,1);
xnew=zeros(n,1);

x(:)=0;
iterlimit=100;
tol=0.0000001;

for iteration=1:iterlimit
    convergence=true;
    for i=1:n
        Sum=0;
        for j=1:n
        if j~=i
            Sum=Sum+A(i,j)*x(j);
           
        end
       
    end
    xnew(i)=-1/A(i,i) * (Sum-b(i));
    plot(xnew)
    if abs(xnew(i)-x(i))>tol
        convergence=false;
        
    end

end

if convergence
    break
end
x=xnew;

end
disp('iterations')

disp('solution')
xnew
