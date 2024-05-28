clc
clear
load d:\port.dat;
x=port(:,1);
y=port(:,2);
z=port(:,3);
u=port(:,4);
w=port(:,5);
% pp=por(:,6);
 hold on
 figure(1)
 plot(x,y,'r')
 xlabel('x')
 ylabel('y')
 hold on
 figure(2)
 plot(x,z,'r')
 xlabel('x')
 ylabel('y')
 hold on
 figure(3)
 plot(x,u,'r')
 xlabel('x')
 ylabel('y')
 hold on
 figure(4)
 plot(x,w,'r')
 xlabel('x')
 ylabel('y')
 hold on
 figure(5)
 plot(y,z,'r')
 xlabel('x')
 ylabel('y')
 hold on
 figure(6)
 plot(y,u,'r')
 xlabel('x')
 ylabel('y')
 
%  hold on
%  figure(10)
%  plot3(x,y,z)
%  xlabel('x')
%  ylabel('y')
%  zlabel('z')
% 
%  hold on
%  figure(20)
%  plot3(x,z,u)
%  xlabel('x')
%  ylabel('z')
%  zlabel('u')
% 
%  hold on
%  figure(30)
%  plot3(y,z,u)
%  xlabel('y')
%  ylabel('z')
%  zlabel('u')
%  %  
%  hold on
%  figure(40)
%  plot3(y,z,w)
%  xlabel('y')
%  ylabel('z')
%  zlabel('w')

