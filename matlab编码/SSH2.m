%一维SSH模型能带图

clc;clear;
w=0;
v=1;
H=zeros(2);
y=-pi:pi/100:pi;
for i=1:length(y)
    k=y(i);
    H(1,2)=w+v*exp(-1i*k);
    H(2,1)=w+v*exp(1i*k);
     
%     E=eig(H);
   E(:,i)=eig(H);     %所有行的第i列    eig是求本征值的函数
end
% plot(E);
plot(y,E)
xlabel('\phi (rad)'),ylabel('Eigenvalue')
title('一维SSH模型体能带图（δt<0）')
xlim([-pi,pi])
ylim([-1.5,1.5])
