function [rent,profit_max]=func2()
profit_max=0;
for i=1000:25:3500
    profit=(i-20)*(100-(i-1000)/25);%将租金减去维护费即为收益
    if profit>profit_max
        profit_max=profit;
        rent=i;
    end
    plot(i,profit,'*r','MarkerSize',2)
    grid on
    hold on
    axis([1000,3500,0,profit_max])
end