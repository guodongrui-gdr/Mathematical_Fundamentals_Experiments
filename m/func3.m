function m=func3(p,i,n)%p0为本金，i为利率，n为年数
for k=1:n
    p=p*(1+i);
end
m=p/n;
