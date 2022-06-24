%һάSSHģ�ͱ߽�̬

clc
clear

n=input('������ԭ������:\n');%ѡ��Ԫ������
w=1;
E=zeros(301,2*n);
states=zeros(301,2*n,2*n);       %��ά����

%�о���Χ��0<v/w<3
for j=1:1:301
    v=(j-1)*0.01;
    %������ܶ���
    H=zeros(2*n,2*n);
    H(1,2)=v;
    H(2*n,2*n-1)=v;
    for i=1:1:n-1
        H(2*i,2*i-1)=v;
        H(2*i,2*i+1)=w;
        H(2*i+1,2*i)=w;
        H(2*i+1,2*i+2)=v;
    end
    [states(j,:,:),V]=eigs(H,2*n);%��Ȿ��ֵ�ͱ���ʸ�����������÷����Կ��ĵ�
    E(j,:)=diag(V);
end

Eorder=sort(E,2);%�����Ÿ��򷽱㻭ͼ

v=0:0.01:3;
figure

subplot(2,3,[1,4]);%��������ֵ�ֲ���������v/w�ı仯
hold on
for j=1:1:2*n
    plot(v,Eorder(:,j));
end
hold off
xlabel('v/w');
ylabel('energy E');
title(['���޳�SSHģ�͵�Ƶ��ͼ(n=',num2str(n),')']);

%��v/w=0.5�������������������̬������
subplot(2,3,2);
bar(states(51,:,2*n-3));
title(['E=',num2str(E(51,2*n-3)),',v/w=0.5']);

subplot(2,3,3);
bar(states(51,:,2*n));
title(['E=',num2str(E(51,2*n)),',v/w=0.5']);

%����v/w=0.5ʱ����������ӽ�0�ı���̬�ֲ�
subplot(2,3,5);
bar(states(51,:,2*n-6));
title(['E=',num2str(E(51,2*n-6)),',v/w=0.5']);

subplot(2,3,6);
bar(states(51,:,2*n-7));
title(['E=',num2str(E(51,2*n-7)),',v/w=0.5']);