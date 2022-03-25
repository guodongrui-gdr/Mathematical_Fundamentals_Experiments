 %func4.m
P1=2000;P2=3000;h1=5;h2=6;s=20;
syms x
    r1=(h1^2+x^2)^(1/2);
    r2=(h2^2+(s-x)^2)^(1/2);
    a1=asin(h1/r1);
    a2=asin(h2/r2);
    E1=E(P1,a1,r1);
    E2=E(P2,a2,r2);
    f=(E1^2+E2^2+2*E1*E2*(sin(a1)*sin(a2)-cos(a1)*cos(a2)))^(1/2);
diff(f,x);
vpasolve(diff(f),x)
