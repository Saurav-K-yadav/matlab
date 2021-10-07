clc
clear 
n = 100;
Tol = 0.001;
x0 = 1 ;
syms x ;
 g = @(x) atan(x*4) ;
for i = 1:n
    x1 = g(x0) ;
    if ((abs(x1-x0)) <= Tol)
        fprintf("The root is %f",x1);
        break ;
    end
    x0 = x1 ;
end

