clc
clear all
a=[10,8,-3,1,16;2,10,1,-4,9;3,-4,10,1,10;2,2,-3,10,11];
n=4;
for j=1:n-1
    for i=j+1:n
        m(i,j)=a(i,j)/a(j,j);
       a(i,:)=a(i,:)-(m(i,j)*a(j,:));       
    end
end

%makes diagnol elements 1 
% for i=1:n
%     a(i,i)=1
% end

x(n)=a(n,n+1)/a(n,n);
for i=n-1:-1:1
    sum=0;
    for j=i+1:n
     sum=sum+a(i,j)*x(j);
     x(i)=(a(i,n+1)-sum)/a(i,i)
    end
end

