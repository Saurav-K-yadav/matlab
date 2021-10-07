clc
clear all
syms x;
g= @(x)(sqrt(10/(4+x)));


x0=(0+2)/2;
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