clc;clear;
M=2/3;
t1=1;
t2=1/3;
phi=pi/4;
a=1/sqrt(3);
h1=zeros(2);
h2=zeros(2);
h3=zeros(2);

x=-pi:pi/100:pi;
y=-pi:pi/100:pi;
for ii=1:201
    k1=x(ii);
    for jj=1:201
        k2=y(ii);
        h1(1,1)=M;
        h1(2,2)=-M;
        
        h2(1,2)=t1*(exp(-1i*k2*a)+exp(-1i*sqrt(3)/2*k1*a+1i*1/2*k2*a)+exp(1i*sqrt(3)/2*k1*a+1/2*1i*k2*a));
        h2(2,1)=t1*(exp(1i*k2*a)+exp(1i*sqrt(3)/2*k1*a-1i*1/2*k2*a)+exp(-1i*sqrt(3)/2*k1*a-1/2*1i*k2*a));
        
        h3(1,1)=t2*exp(-1i*phi)*(exp(1i*sqrt(3)*k1*a)+exp(-1i*sqrt(3)/2*k1*a+1i*3/2*k2*a)+exp(-1i*sqrt(3)/2*k1*a-1i*3/2*k2*a));
        h3(2,2)=t2*exp(1i*phi)*(exp(1i*sqrt(3)*k1*a)+exp(-1i*sqrt(3)/2*k1*a+1i*3/2*k2*a)+exp(-1i*sqrt(3)/2*k1*a-1i*3/2*k2*a));
        
        H=h1+h2+h3;
        E=eig(H);
        E1(ii,jj)=E(1);
        E2(ii,jj)=E(2);
    end
end
[X,Y]=meshgrid(x,y);
plot3(X,Y,E1); 
hold on;
plot3(X,Y,E2); 

shading interp  %สนธüนโปฌ
        