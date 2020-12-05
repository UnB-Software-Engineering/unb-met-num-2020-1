clc; clear all;  clc;

% dispersao de dados
x = [79 69 70 81 61 63 79 71 73];
y = [183 173 168 188 158 163 193 163 178];
plot(x,y,'*')
grid on
hold on

% ajuste de reta
p=polyfit(x,y,1);

x1=linspace(61,81,9)
y1=polyval(p, x1)

plot(x1,y1)