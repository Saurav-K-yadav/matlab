clc
clear all
syms x;
g= @(x)(0.5*(sqrt(10-((x)^3))));

% Finding the boundaries
for i=0:1:4
    if (g(i)*g(i+0.1)<0)
        a=i;
        b=i+0.1;
        break;
    end
end
x0=(a+b)/2;
tolerance=1.0000e-3;
i=1;
n=100;
while(i<=n)
    x=g(x0);
    if (abs(x-x0)<tolerance)
        fprintf("The root of the equation is %f after %d iterations",x,i);
        break;
    end     
    x0=x;
    i=i+1;
end

if (i>n)
    fprintf("Method fails to find a root");
 end