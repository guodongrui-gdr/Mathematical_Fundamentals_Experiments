function [y,x,val_x,val_y]=curve_fit()
x=0:0.1:10*pi;
y=f(x);
val_x=max(x):0.1:50;
val_y=f(val_x);

