function H=HH(kx,ky)
kx=1;
w=2;
v=1;
A=zeros(4);
B=zeros(4);
N=20;
A(1,2)=w;
A(1,4)=w+v*exp(1i*ky);
A(2,3)=w+v*exp(1i*ky);
A(3,4)=w;

B(2,1)=v;
B(3,4)=v;
h=kron(eye(N),A)+kron(diag(ones(1,N-1),1),B);
H=h+h';
end