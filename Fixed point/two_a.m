clc
clear all
syms x;
g= @(x) x.^3+4*x.^2-10;

% Finding the boundaries
for i=0:0.1:2
    if (g(i)*g(i+0.1)<0)
        a=i;
        b=i+0.1;
        break;
    end
end

x0=(a+b)/2;
tolerance=10^(-3);
i=1;
n=100;
while(i<=n)
    x=g(x0);
     
    x0=x;
    i=i+1;
end
fprintf("The root is %f",x0);