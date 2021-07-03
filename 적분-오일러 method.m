y1=(1/sqrt(2*pi))*exp(-(x.^2/2));

y2=(x/2).*exp(-(x.^2/4));



a1=int(y1,[-100,100]) % in previous code assignment7in9, we could see result value by trapezoid is 0, and by simpson's rule is 53.1923. and value a1 is litte different from these values.
a2=int(y2,[-100,100]) % in previous code assignment7in10, we could see the both result by trapezoidal and simpson's rule is zero. and a2 is also zero.


