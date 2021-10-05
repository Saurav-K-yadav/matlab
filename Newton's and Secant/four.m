clc
clear all
syms x;
f=@(x) -9*exp(-x)*sin(2*x*pi)+3.5;
error= 0.00001;
% IVT
h=0.1;
for i= 0:h:100
    if f(i)*f(i+h)<0
        a=i;
        b=i+h;
        break;
    end 
end
c0=((a+b)/2);

% find derivative and converts to a function
g = matlabFunction(diff(f(x),x));
 i=0;
 
 while (i<=100)
c1=c0-((f(c0))/g(c0));

 if(abs(c1-c0)<=error)
     fprintf("The lowest value of t is : ");
     disp(c1);
     break;
 end
 c0=c1;
 i=i+1;
 end