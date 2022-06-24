clc;clear;
w=2;
v=1;
A=zeros(4);
B=zeros(4);
N=20;
x=-pi:pi/100:pi;
for ii=1:201
    k=x(ii);
    A(1,2)=w;
    A(1,4)=w+v*exp(1i*k);
    A(2,3)=w+v*exp(1i*k);
    A(3,4)=w;
    
    B(2,1)=v;
    B(3,4)=v;
    h=kron(eye(N),A)+kron(diag(ones(1,N-1),1),B);
    H=h+h';
    E(ii,:)=eig(H);
end
plot(x,E)
xlabel('k')
ylabel('E')
xlim([-pi,pi])
title('二维BBH模型混合边界条件（胞间耦合强度<胞内耦合强度）')