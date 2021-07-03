n=50;
syms x
A=randn(n,n)
b=randn(n,1)

rref(A) % this is upper triangle matrix that used to solve Ux=c and in this formula,x is same below x=linsolve(A,b)




x=linsolve(A,b)


[L,U]=lu(A)

p=L*U  % in this, Linear equation is <pxx=b>


xx=linsolve(p,b) % xx is same above x=linsolve(A,b) because matrix A can be divided in LU.