%һάSSHģ���ܴ�ͼ

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
   E(:,i)=eig(H);     %�����еĵ�i��    eig������ֵ�ĺ���
end
% plot(E);
plot(y,E)
xlabel('\phi (rad)'),ylabel('Eigenvalue')
title('һάSSHģ�����ܴ�ͼ����t<0��')
xlim([-pi,pi])
ylim([-1.5,1.5])
