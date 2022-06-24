%能级图

clc;clear;
w=1;
v=1;
H=zeros(2);
g=zeros(2);
N=4;
y=-pi:pi/100:pi;
 for i=1:201
    H(1,2)=w;
    H(2,1)=w;
    
    g(2,1)=v;

    matrix=kron(eye(N),H)+kron(diag(ones(1,N-1),1),g)+kron(diag(ones(1,N-1),-1),g');
    %kron张量积  %eye单位矩阵  %diag创建对角矩阵或获取矩阵的对角元素  %
%     E=eig(matrix);
     E(i,:)=eig(matrix);
 end
 plot(y,E)
% plot(E);
xlim([-pi,pi]);
