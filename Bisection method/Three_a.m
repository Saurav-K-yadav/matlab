clc;
clear all;

f=@(x)   x.^2-29;

% IvT
h=1;
for i=0:h:10
    if f(i)*f(i+h)<0
        a=i;
        b=i+h;
        break;
    end 
end 

%Finding the root
e=0.001;
n=((log(b-a)-log(e))/log(2));
fprintf("Number of iterations : %d \n",ceil(n));
j=0;
N=10;
while (j<N)
    c=(a+b)/2;
if (f(a)*f(c))<0
    b=c;
else
    a=c;
end   
if (abs(a-b)<=e)
    break;
end
j=j+1;
end
fprintf("The root is %f",c);
