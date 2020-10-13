% Larissa Sales
% 16/0130883

clc; clear all; 

% criacao dos vetores

v1=linspace(-1,1,50);
v2=linspace(-1,1,50);

[x,y]=meshgrid(v1,v2);

% plot
figure(1);
hold on; grid on;
surf(x,y,y.^2-x.^2)
xlabel('Valores de X')
ylabel('Valores de Y')
zlabel('F(x,y)')
rotate3d
title('Parabolóide Hiperbólica')