clc
clear 

n = 1000 ;
Tol = 0.01 ;
x0 = 1;

syms x ;
g = @(x) -2 * sin(pi * x);
for i = 1:n
    x1 = g(x0) ;
     if (((abs(1-x0/x1))<Tol)&&(x1<2))
         root=x1;
     end
    x0 = x1 ;
end
fprintf("The root is %f",root);
       