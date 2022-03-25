k=ceil(1.87*(length(x)-1)^0.4);
[ni,ak]=hist(x,k);
fi=ni/length(x);
mfi=cumsum(fi);
stats= table([1:k]',ak',ni',fi',mfi','VariableNames',{'组序','组中值','频数','频率','累计频率'})
histogram(x)