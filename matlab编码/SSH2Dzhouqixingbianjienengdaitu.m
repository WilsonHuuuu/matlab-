clc;clear;
w=2;
v=1;
h=zeros(4);
N=10;

x=-pi:pi/100:pi;
for ii=1:201
    k=x(ii);
    h(1,2)=w+v*exp(-1i*k);
    h(1,4)=w+v*exp(1i*k);
    h(2,3)=w+v*exp(1i*k);
    h(3,4)=w+v*exp(1i*k);
    H=h+h';
    E(ii,:)=eig(H);     
end

plot(x,E,'-k')
xlabel('k')
ylabel('E')
title('��άBBHģ�������Ա߽������ܴ�ͼ')
