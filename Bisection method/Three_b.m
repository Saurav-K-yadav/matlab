clc
clear all

f=@(x)   x.^3+4*x.^2-10;
a=1;
b=2;

e=10^(-3);
n=0;
while 1
    c=(a+b)/2;
if (f(a)*f(c))<0
    b=c;
else
    a=c;
end
n=n+1;
if n>=((log(b-a)-log(e))/log(2))
    break;
end
end
disp(c);
fprintf("Number of Iterations \n %d\n",n);
