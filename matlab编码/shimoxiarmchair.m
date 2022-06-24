clc;clear;
d=1;
t=0.1;
A=zeros(4);
B=zeros(4);
N=20;
x=-2*pi:pi/100:2*pi;
for ii=1:401
    k=x(ii);
    A(1,2)=t;
    A(1,4)=t;
    A(2,3)=t;
    A(3,4)=t*exp(1i*k*d/2);
    
    B(4,1)=t;
    B(3,2)=t;
    
    h=kron(eye(N),A)+kron(diag(ones(1,N-1),1),B);
    H=h+h';
    E(ii,:)=eig(H);
end
plot(x,E,'-k')
xlabel('k')
ylabel('E')
title('石墨烯armchair模型能带图')
