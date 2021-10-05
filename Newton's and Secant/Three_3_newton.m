clc
clear all
format shortG;
syms x;
f=@ (x) x-2*sin(x);
error= 0.00001;

% IVT
h=1;
for i= -20:h:20
    if f(i)*f(i+h)<0
        a=i;
        b=i+h;
        break;
    end 
end

% Finding the root
x0=(a+b)/2;
g = matlabFunction(diff(sym(f)));
 i=0;
 
 while (i<=100)
x1=x0-((f(x0))/g(x0));

if(abs(x1-x0)>error)
    x0=x1;
    i=i+1;

else
     if (x0==0)
         x0=x1;
         i=i+1;
         continue;
     end
      
     fprintf("The root is: ");
     disp(x0);
     break;
end
 
 end