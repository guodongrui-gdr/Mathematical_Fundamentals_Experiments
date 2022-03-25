function personal_tax=tax(x)
if(x<=5000)
    a=1;
end
if(x>5000)&&(x<=8000)
    a=2;
end
if(x>8000)&&(x<=17000)
    a=3;
end
if(x>17000)&&(x<=30000)
    a=4;
end
if(x>30000)&&(x<=40000)
    a=5;
end
if(x>40000)&&(x<=60000)
    a=6;
end
if(x>60000)&&(x<=85000)
    a=7;
end
if(x>85000)
    a=8;
end
switch a
    case {1}
        personal_tax=0;
    case {2}
        personal_tax=(x-5000)*0.03;
    case {3}
        personal_tax=(x-5000)*0.1-210;
    case {4}
        personal_tax=(x-5000)*0.2-1410;
    case {5}
        personal_tax=(x-5000)*0.25-2660;
    case {6}
        personal_tax=(x-5000)*0.3-4410;
    case {7}
        personal_tax=(x-5000)*0.35-7160;
    otherwise
        personal_tax=(x-5000)*0.45-15160;
end
