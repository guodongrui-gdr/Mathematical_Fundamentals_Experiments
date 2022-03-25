function [T,d,h_max]=func1(theta,v)%T为总飞行时间,d为落点距离,h_max为最大飞行高度
a0=theta;g=9.8;
vx=v*cos(a0*pi/180);vy=v*sin(a0*pi/180);
T=2*vy/g;
d=vx*T;
h_max=vy^2/(2*g);
for t=0:0.01:T
    h=vy*t-g*t^2/2;
    x=5+vx*t;
    if h>h_max
        h_max=h;
    end
    plot(x,h,'*r','MarkerSize',2)
    grid on
    hold on
    axis([0,d+10,0,h_max])
end
