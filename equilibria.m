% close all
clc
mu=2.5; 
sigma=((exp((2/3)*log(1-(1/mu)))))
m=2;
x = -10:0.001:10;
y = -x+mu*sqrt(x+1)-(mu-1)*sqrt(1-(x/sigma))-m./(sqrt(m*m-2*x));
z=0;
hold on
grid on
figure(1)
plot(x,y)
plot(x,z)
r=[-10:0.1:10];
y = zeros(length(r),1);
plot(r,y,'r');


% x5=-4.6748;
% x1=
% x3=0.8282;

% x1=0;
% x3=0;
% x5=0;

v1=1+x5-x1*x1*x1*x1
v2=sigma*(1-x3*x3*x3*x3)-x5
v3=mu*x1*x1-(mu-1)*x3*x3-m./(sqrt(m*m-2*x5))