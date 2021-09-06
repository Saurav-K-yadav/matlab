clc
clear all

f=@(x)   x.^3+4*x.^2-10;
a=1;
b=2;

e=10^(-3);
n=round((log(b-a)-log(e))/log(2));
for i=1:1:n
    c=(a+b)/2;
if (f(a)*f(c))<0
    b=c;
else
    a=c;
end
end
fprintf("Answer = \n");
disp(c);
fprintf("Number of Iterations = \n %d\n",n);
