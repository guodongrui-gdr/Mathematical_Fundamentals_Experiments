function [t,x,h]=a(b,v)
a0=b;g=9.8;
vx=v*cos(a0*pi/180);vy=v*sin(a0*pi/180);
T=2*vy/g;
for t=0:0.05:T
    h=vy*t-g*t^2/2;
    x=5+vx*t;
    pause(0.1);
    plot(x,h,'or','MarkerSize',5,'MarkerFace',[1,0,0])
    grid
    axis([4,8,-10,2])
end
