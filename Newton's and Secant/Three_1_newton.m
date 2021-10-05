clc
clear all
format shortG;
syms x;
f=@ (x) x.^2-17;
error= 0.00001;
h=1;
for i= 0:h:20
    if f(i)*f(i+h)<0
        a=i;
        b=i+h;
        break;
    end 
end

x0=(a+b)/2;

% find derivative and converts to a function
g = matlabFunction(diff(sym(f)));
 i=0;
 
 while (i<=100)
x1=x0-((f(x0))/g(x0));

 if(abs(x1-x0)<=error)
     fprintf("The root is: ");
     disp(x1);
     break;
 end
 x0=x1;
 i=i+1;
 end