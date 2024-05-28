clc
clear
load d:\bi.dat;
a=bi(:,1);
x1=bi(:,2);
x2=bi(:,3);
x3=bi(:,4);
x4=bi(:,5);
x5=bi(:,6);
x6=bi(:,7);
hold on
figure(200)
plot(a,x1,'.')
% figure(5)
% plot(a,x5,'.')
% figure(6)
% plot(a,x6,'.')

% x=fzero(@(x)1.4*x-(2.682E-4)*sinh(4.0486*x))
% function y = f(x)
% y = 1.4*x-(2.682E-4)*sinh(4.0486*x)
% fun = @f; % function
% x0 = 20; % initial point
% z = fzero(fun,x0)
