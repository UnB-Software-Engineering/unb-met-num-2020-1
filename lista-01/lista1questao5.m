clc; clear all; 

x=linspace(-3,3,100);

a = 0.5;
y = (8.*a.^2)./((x.^2)+4.*a.^2);
plot(x,y)

hold on; grid on;

y = (x.^3+2.*a.*x.^2-(a+5).*x-1);
plot(x,y)

xlabel('X')
ylabel('Y')
title('Funções f(x) e g(x)')
legend('f(x)','g(x)')