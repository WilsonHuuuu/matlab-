% This code is supported by the website: https://www.guanjihuan.com
% The newest version of this code is on the web page: https://www.guanjihuan.com/archives/4179

% ������Ч��
clear;clc;
n=1000; % �����ܶ�
delta=2*pi/n;
C=0; 
for kx=-pi:(2*pi/n):pi
    for ky=-pi:(2*pi/n):pi
        VV=get_vector(HH(kx,ky));
        Vkx=get_vector(HH(kx+delta,ky)); % ��ƫ��kx�Ĳ�����
        Vky=get_vector(HH(kx,ky+delta)); % ��ƫ��ky�Ĳ�����
        Vkxky=get_vector(HH(kx+delta,ky+delta)); % ��ƫ��kx��ky�Ĳ�����
        
        Ux = VV'*Vkx/abs(VV'*Vkx);
        Uy = VV'*Vky/abs(VV'*Vky);
        Ux_y = Vky'*Vkxky/abs(Vky'*Vkxky);
        Uy_x = Vkx'*Vkxky/abs(Vkx'*Vkxky);
        
        % berry curvature
        F=log(Ux*Uy_x*(1/Ux_y)*(1/Uy));
        % chern number
        C=C+F;  
    end
end
C=C/(2*pi*1i);
print('C=',C)



