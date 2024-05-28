syms a b c d
la=0;
% a=6; b=6; c=6; d=6;
% la=0;  a=6; b=6; c=6; d=6
% x0=0;
Mj=[-la a 0 0 d; -a -la c b 0; 0 -c -la c 0; 0 -b -c -la 0; -d 0 0 0 -la];
P=charpoly(Mj)
r=roots(P)
eig(Mj);
% a=5;  b=60; eps=8.0527e-005
% M=[0 -a*b 0; eps -a-eps 1; 1 -1 0]
% eig(M)