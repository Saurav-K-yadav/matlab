clear all;
prompt="Enter number to find factorial";
number=input(prompt);
fac=1;
for i=number:-1:1
    fac=fac*i;
end
display(fac);