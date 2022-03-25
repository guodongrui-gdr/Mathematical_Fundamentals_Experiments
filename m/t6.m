syms p q n1 n2 n3;
assume(q>=0&q<=1);
n1=18;n2=20;n3=12;p=0.516;
p1=p*q+(1-q)*p^2;
p2=2*(1-q)*(1-p)*p;
p3=q*(1-p)+(1-q)*(1-p)^2;
f =n1*log(p1)+n2*log(p2)+n3*log(p3);
Q=solve(diff(f,q),q)