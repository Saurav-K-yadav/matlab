clc 
clear all
format shortG;
syms x; %for finding the derivative
f=@(x) x.^3-5*x+1;
e=0.05;
for i= 0:1:10
    if f(i)*f(i+1)<0
        a=i;
        b=i+1;
        break;
    end 
end

x0=(a+b)/2;
g=@(x) 3*x.^2-5;
i=0;
 while (i<=100)
x1=x0-((f(x0))/g(x0));
if(abs(x1-x0)<=e)
    fprintf("The root is: ");
    disp(x1);
    break;
end
x0=x1;
i=i+1;
end