clc;clear;
d=1;
t=0.1;
A=zeros(4);
B=zeros(4);
N=20;
x=-2*pi:pi/100:2*pi;
for ii=1:401
    k=x(ii);
    A(1,2)=t+t*exp(-1i*k*d/2);
    A(2,3)=t;
    A(3,4)=t+t*exp(-1i*k*d/2);
    
    B(4,1)=t;
    
    h=kron(eye(N),A)+kron(diag(ones(1,N-1),1),B);
    H=h+h';
    E(ii,:)=eig(H);
end
plot(x,E,'-k')
