clc;clear;

t=1;
A=zeros(4);
B=zeros(4);
N=10;
x=-pi:pi/100:pi;    

for ii=1:201
   k=x(ii);
   A(1,1)=t*exp(1i*k);
   A(1,2)=t;
   A(2,2)=t*exp(1i*k);
   A(2,3)=t;
   A(3,3)=t*exp(1i*k);
   A(3,4)=t;
   A(4,4)=t*exp(1i*k);

   B(4,1)=t;
   h=kron(eye(N),A)+kron(diag(ones(1,N-1),1),B);
   H=h+h';
   E(ii,:)=eig(H);
end

plot(x,E)