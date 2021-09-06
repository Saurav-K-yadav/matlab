clear all;
addition=0;
while 1
prompt="Enter the number";
num =input(prompt);
addition=addition+num;
prompt="Do you want to continue?Y/N";
str=input(prompt,'s');
if ((str=='N')||(str=='n'))
    break;
end
end
display(addition);