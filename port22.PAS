uses crt,dos;
const

       L=20000;
label fin;

var   h,x,u,y,v,w,z,t,t0,x0,u0,y0,v0,w0,z0,k0x,k0y,k0u,k0v,k0w,k0z,k1x,k1y,k1u,k1v,k1w,k1z,k2x,k2y,k2u,k2v,k2w,k2z:extended;
      k3x,k3y,k3u,k3v,k3w,k3z,k4x,k4y,k4u,k4v,k4w,k4z,Io,Rc,Rb,Vt,rau,tmin,a,b,c,C1,C2,C0,alpha,mu,k,zita,E: extended;
      d,p1,eps2,nu,is,vref, gamma,sigma, rau1,b1,r0, neta,im ,m1,m0, mm,Rn, R,hh : extended;
	  a1,a2,a3,a4,a5,a0,del,beta,ga,ne,eps,l1,l2: extended;
      deltat,ie:integer;
      nom:string;
      result: text ;

function g1(x,u,y,v,w,z:extended):extended;
begin
g1:=u;
end;

function g2(x,u,y,v,w,z:extended):extended;
begin
g2:=(6*mu/hh*hh)*x*(1+w-x*x*x*x);
end;

function g3(x,u,y,v,w,z:extended):extended;
begin
g3:=v;
end;

function g4(x,u,y,v,w,z:extended):extended;
begin
g4:=(6*mu/hh*hh)*y*(sigma*(1-y*y*y*y)-w);
end;

function g5(x,u,y,v,w,z:extended):extended;
begin
g5:=z;
end;

function g6(x,u,y,v,w,z:extended):extended;
begin
g6:=mu*x*x-(mu-1)*y*y-mm/(sqrt(mm*mm+2*w));
end;

begin

clrscr;
nom:='d:\port.dat';
assign(result,nom);
rewrite(result);

mu:=2.5;  hh:=0.9; mm:=0.35; sigma:=exp((2/3)*ln(1-(1/mu)));

t0:=0.0; x0:=0.5; u0:=0.02; y0:=-0.5; v0:=0.4; w0:=-0.01; z0:=0.01; h:=0.005; ie:=0;

tmin:=5000;deltat:=100;


repeat


k1x:=g1(x0,u0,y0,v0,w0,z0);
k1u:=g2(x0,u0,y0,v0,w0,z0);
k1y:=g3(x0,u0,y0,v0,w0,z0);
k1v:=g4(x0,u0,y0,v0,w0,z0);
k1w:=g5(x0,u0,y0,v0,w0,z0);
k1z:=g6(x0,u0,y0,v0,w0,z0);

k2x:=g1(x0+k1x*(h/2),u0+k1u*(h/2),y0+k1y*(h/2),v0+k1v*(h/2),w0+k1w*(h/2),z0+k1z*(h/2));
k2u:=g2(x0+k1x*(h/2),u0+k1u*(h/2),y0+k1y*(h/2),v0+k1v*(h/2),w0+k1w*(h/2),z0+k1z*(h/2));
k2y:=g3(x0+k1x*(h/2),u0+k1u*(h/2),y0+k1y*(h/2),v0+k1v*(h/2),w0+k1w*(h/2),z0+k1z*(h/2));
k2v:=g4(x0+k1x*(h/2),u0+k1u*(h/2),y0+k1y*(h/2),v0+k1v*(h/2),w0+k1w*(h/2),z0+k1z*(h/2));
k2w:=g5(x0+k1x*(h/2),u0+k1u*(h/2),y0+k1y*(h/2),v0+k1v*(h/2),w0+k1w*(h/2),z0+k1z*(h/2));
k2z:=g6(x0+k1x*(h/2),u0+k1u*(h/2),y0+k1y*(h/2),v0+k1v*(h/2),w0+k1w*(h/2),z0+k1z*(h/2));

k3x:=g1(x0+k2x*(h/2),u0+k2u*(h/2),y0+k2y*(h/2),v0+k2v*(h/2),w0+k2w*(h/2),z0+k2z*(h/2));
k3u:=g2(x0+k2x*(h/2),u0+k2u*(h/2),y0+k2y*(h/2),v0+k2v*(h/2),w0+k2w*(h/2),z0+k2z*(h/2));
k3y:=g3(x0+k2x*(h/2),u0+k2u*(h/2),y0+k2y*(h/2),v0+k2v*(h/2),w0+k2w*(h/2),z0+k2z*(h/2));
k3v:=g4(x0+k2x*(h/2),u0+k2u*(h/2),y0+k2y*(h/2),v0+k2v*(h/2),w0+k2w*(h/2),z0+k2z*(h/2));
k3w:=g5(x0+k2x*(h/2),u0+k2u*(h/2),y0+k2y*(h/2),v0+k2v*(h/2),w0+k2w*(h/2),z0+k2z*(h/2));
k3z:=g6(x0+k2x*(h/2),u0+k2u*(h/2),y0+k2y*(h/2),v0+k2v*(h/2),w0+k2w*(h/2),z0+k2z*(h/2));

k4x:=g1(x0+k3x*h,u0+k3u*h,y0+k3y*h,v0+k3v*h,w0+k3w*h,z0+k3z*h);
k4u:=g2(x0+k3x*h,u0+k3u*h,y0+k3y*h,v0+k3v*h,w0+k3w*h,z0+k3z*h);
k4y:=g3(x0+k3x*h,u0+k3u*h,y0+k3y*h,v0+k3v*h,w0+k3w*h,z0+k3z*h);
k4v:=g4(x0+k3x*h,u0+k3u*h,y0+k3y*h,v0+k3v*h,w0+k3w*h,z0+k3z*h);
k4w:=g5(x0+k3x*h,u0+k3u*h,y0+k3y*h,v0+k3v*h,w0+k3w*h,z0+k3z*h);
k4z:=g6(x0+k3x*h,u0+k3u*h,y0+k3y*h,v0+k3v*h,w0+k3w*h,z0+k3z*h);

k0x:=(k1x+2*k2x+2*k3x+k4x)/6;
k0y:=(k1y+2*k2y+2*k3y+k4y)/6;
k0u:=(k1u+2*k2u+2*k3u+k4u)/6;
k0v:=(k1v+2*k2v+2*k3v+k4v)/6;
k0w:=(k1w+2*k2w+2*k3w+k4w)/6;
k0z:=(k1z+2*k2z+2*k3z+k4z)/6;

x:=x0+k0x*h;
y:=y0+k0y*h;
u:=u0+k0u*h;
v:=v0+k0v*h;
w:=w0+k0w*h;
z:=z0+k0z*h;
t:=t0+h;



if (t>=tmin) then
      begin


writeln(result,' ',x:9:5,' ',u:9:5,' ',y:9:5,' ',v:9:5,' ',w:9:5);


    end;

x0:=x;
y0:=y;
u0:=u;
v0:=v;
w0:=w;
z0:=z;
t0:=t;

 until t>(tmin+deltat);

writeln('x=',x,'u=',u,'y=',y,'v=',v,'w=',w,'z=',z);



 close(result);
readln;
end.
