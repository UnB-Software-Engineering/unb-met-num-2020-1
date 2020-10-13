clc; clear all;  clc;

% criacao de vetor de -3 a 3 dividido equidistantemente em 1000 pedacos
x=linspace(-3,3,1e3);

% avaliar individualmente cada um desses pedacos
f=2*x.^3 - 11.7*x.^2 + 17.7*x - 5;

% plotar figura
figure(1); plot(x,f)
grid on
xlabel('x')
ylabel('f(x)')