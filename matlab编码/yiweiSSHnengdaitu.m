clc
clear
n=input('请输入原胞数量:');
v=input('请输入胞内v=');
w=input('请输入胞外w=');
H=zeros(2*n,2*n);
x=-pi:pi/100:pi;
if n==1
    H(2,1)=v;
    H(1,2)=v;
end
if n>1
    for i=1:1:n
        H(i,i+1)=v;
        H(i+1,i)=v;
        H(i+1,i+2)=w;
        H(i+2,i+1)=w;
    end
end
E(i,:)=eigs(H);
plot(x,E);