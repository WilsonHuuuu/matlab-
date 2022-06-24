clc;clear;

h=zeros(2);
even=zeros(1,2);
N=20;
s=0:2*pi/50:2*pi;
x=-pi:2*pi/50:pi;
for ii=1:51
    kx=x(ii);
    for jj=1:51
        ks=s(jj);
        
        %π˛√‹∂Ÿ¡ø
        h(1,2)=1.5*(1-cos(kx))-(1+0.5i)*cos(ks)-1.5i*sin(kx);
        h(2,1)=1.5*(1-cos(kx))-(1+0.5i)*cos(ks)+1.5i*sin(kx);

        
        E=eig(h);
        even(1,1)=sqrt(2)/2;
        even(1,2)=sqrt(2)/2;
        E1(ii,jj)=E(1);
        E2(ii,jj)=E(2);
        
        result=dot(even,E);
        
    end
end
[X,S]=meshgrid(x,s);
s=surface(X,S,real(E1));
s.CDate=result
hold on
colorbar(X,S,real(E2));
s.CDate=result
shading interp