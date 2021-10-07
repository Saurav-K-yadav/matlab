clc 
clear all

f=@(x) (1.129241*(10^-3))+((2.341077*(10^-4))*log(x))+((8.775468*(10^-8))*((log(x))^3))-(1/(18.99+273));
Tol=10^(-2);
h=0.1;
N=100000;
for i=0:h:N
    if (f(i)*f(i+h)<0)
        a=i;
        b=i+h;
        break;
    end
end

%Finding the root
while (abs(b-a)>=Tol)
    c=(a+b)/2;
if (f(a)*f(c))<0
    b=c;
else
    a=c;
end
end
fprintf("The root is %f",c);
