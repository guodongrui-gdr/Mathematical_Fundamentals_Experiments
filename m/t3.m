k=ceil(1.87*(length(x)-1)^(2/5));
histfit(x,k);
alpha=0.05;
[mu,sigma]=normfit(x);
p1=normcdf(x,mu,sigma);
[H1,s1]=kstest(x,[x,p1],alpha);
if H1==0
    disp('该数据服从正态分布。')
else
    disp('该数据不服从正态分布。')
end