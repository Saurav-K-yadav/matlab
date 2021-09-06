clc
clear all
syms x
f=@(x) x^2+cos(x);
df=diff(f,x)