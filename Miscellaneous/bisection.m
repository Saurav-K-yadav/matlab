clc
clear all
f=@(x)(x-2^(-x));
a=0;
b=1;
c=(a+b)/2;
e=0.001;
N=(log(b-a)-log(e))/log(2);
disp(ceil(N));
while (abs(b-a)>(10^(-3)))
    c=(a+b)/2;
    if (f(a)*(f(c))<0)
        b=c;
    else
        a=c;
    end
end
disp(c);
