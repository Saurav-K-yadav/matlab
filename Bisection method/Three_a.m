clc
clear all

f=@(x)   x.^2-29;
% IvT
for i=-10:1:10
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
if n<=((log(b-a)-log(e))/log(2))
    continue;
end
if (abs(a-b)<=e)
    break;
end
end
disp(c);

