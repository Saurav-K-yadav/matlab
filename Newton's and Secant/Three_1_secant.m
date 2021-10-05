clc
clear all;
syms x;
f=@(x) x.^2-17;
error=0.001;

for i= 0:1:20
    if f(i)*f(i+1)<0
        x0=i;
        x1=i+1;
        break;
    end 
end

n=0;
while (n<=10000)
    x2=x1-((x1-x0)/((f(x1))-(f(x0)))*f(x1));
    if (abs(x2-x1)<=error)
        fprintf("The root is %f ",x2);
        break;
    end
    n=n+1;
    x0=x1;
    x1=x2;
end
