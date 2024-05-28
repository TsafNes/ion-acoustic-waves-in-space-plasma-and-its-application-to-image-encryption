load d:\pduf.dat;
x=pduf(:,2);
% u=chua(:,3);
% y=chua(:,4);
h=0.005;
N=length(x);
T=N*h;
p=abs(fft(x))/(N/2);
q=p(1:N/2).^2;
freq=(0:N/2-1)*(2*pi)/T;
semilogy(freq,q);

% N1=length(u);
% T1=N1*h;
% p1=abs(fft(u))/(N1/2);
% q1=p1(1:N1/2).^2;
% freq1=(0:N1/2-1)*(2*pi)/T1;
% semilogy(freq1,q1);
% 
% N2=length(y);
% T2=N2*h;
% p2=abs(fft(y))/(N2/2);
% q2=p2(1:N2/2).^2;
% freq2=(0:N2/2-1)*(2*pi)/T2;
% semilogy(freq2,q2);
% %hold on