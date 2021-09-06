clc
clear all
% a=[1;3;7];
% b=[1,8,9];
% disp (a)
% a = [1,2;3,4]
% disp(a);
% c=det(a);
% disp(c);
% d=inv(a);
% disp(d);
% M=a*a;
% disp(M);
% MM=a.*a;
% disp(MM);
% disp(size(MM));
% disp(numel(a));
% B=a';
% disp(B);
% ---------
% a=[5,6,2];
% disp(roots(a));
u=0:0.1:10;
for i=0:0.1:10
    w=5*sin(u);
end
plot(u,w);
hold on;
plot(sin(u),w)