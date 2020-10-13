clc; clear all;  

% criacao de vetor de -3 a 3 dividido equidistantemente em 1000 pedacos
x=linspace(-3,3,1e3);

% avaliar individualmente cada um desses pedacos
f=8-4.5*(x-sin(x));

% plotar figura
figure(1); plot(x,f)
grid on
xlabel('x')
ylabel('f(x)')