clc
clear all
format shortG;
syms x;
f=@ (x) (exp(-x))*(x.^2+5*x+2)+1;
error= 0.00001;
x0=-1.0;

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