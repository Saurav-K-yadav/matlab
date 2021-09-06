clc 
clear all
format longG;%prints the exact value
f=@(x)   (1/(18.99+273))-(1.129241*(10^(-3)))+(2.341077*(10^(-4))*(log(x)))+(8.775468*(10^(-8))*((log(x))^(3)));
for i=0:1:100
    if f(i)*f(i+1)<0
        a=i;
        b=i+1;
        break;
    end 
end 

%Finding the root
e=0.001;
while 1
    c=(a+b)/2;
if (f(a)*f(c))<0
    b=c;
else
    a=c;
end
if (abs(b-a)<e)
   break;
end
end
disp(c);
