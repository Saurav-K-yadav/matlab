clc 
clear all

f=@(x)   (1/(18.99+273))-(1.129241*(10^(-3)))+(2.341077*(10^(-4))*(log(x)))+(8.775468*(10^(-8))*((log(x))^(3)));
f(0.0312)
for i=-10:1:100
    if f(i)*f(i+1)<0
        a=i;
        b=i+1;
    end 
end 

%Finding the root
e=0.001;
abs(a-b);
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
