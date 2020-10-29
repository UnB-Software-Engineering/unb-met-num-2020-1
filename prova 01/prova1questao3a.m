clc; clear all; close all;

% criacao de vetor de -1 a 1
x=linspace(-1,1,1e3);

% funcao
f=x.^5 - (10/9)*x.^3 + (5/21)*x;

% plotar figura
figure(1); plot(x,f)
grid on
xlabel('x')
ylabel('f(x)')