clc
clear all
syms x;
g= @(x)(0.5*(sqrt(10-((x)^3))));

% Finding the boundaries
for i=0:1:2
    if (g(i)*g(i+0.1)<0)
        a=i;
        b=i+0.1;
        break;
    end
end