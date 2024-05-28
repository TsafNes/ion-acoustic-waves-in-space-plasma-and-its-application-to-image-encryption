syms alpha a A c b la
% la=0; a=2.5; b=100; ep=2.8984E-5;
M=[0 -a*b 0; ep -a-ep 1; 1 -1 -0]
%M=[(alpha/7)-(d*rhau) alpha 0;1 -1 1;0 -beta 0];
eig(M)