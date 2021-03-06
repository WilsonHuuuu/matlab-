clc;clear;
w=2;
v=1;
A=zeros(4);
B=zeros(4);
C=zeros(4);
n=20;
x=-pi:pi/100:pi;
for ii=1:201
    k=x(ii);
    A(1,2)=w;
    A(2,3)=v;
    A(3,4)=w;
    B(1,4)=w;
    B(2,3)=w;
    B(3,2)=w;
    B(4,1)=w;
    C(1,4)=v;
    C(2,3)=v;
    C(3,2)=v;
    C(4,1)=v;
    M=kron(eye(n),A)+kron(diag(ones(1,n-1),1),B);
    N=kron(diag(ones(1,n-1),-1),C);
    P=kron(eye(n),M)+kron(diag(ones(1,n-1),1),N);
    H=P+P';
    [V,D]=eig(H);
    D=diag(D);
end
plot(V)
i=1:4*n;
scatter(i,D)
xlabel('k')
ylabel('E')
xlim([-pi,pi])
title('二维BBH模型自由边界条件')
