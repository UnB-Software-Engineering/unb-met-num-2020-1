function [Yint, a] = ex2_newton_int(x, y, Xint)
% NewtonINT ajusta um polinomio de Newton a um dado conjunto de pontos e
% usa esse polinomio para determinar o valor interpolado de um ponto.
% Variaveis de entrada
% x		vetor com as coordenadas x dos pontos dados
% y		vetor com as coordenadas y dos pontos dados
% Xint	coordenada x do ponto a ser interpolado
% Variavel de saida
% Yint	o valor interpolado de Xint

n = length(x); % o comprimento de vetor x fornece o numero de coeficiente (e termos) do polinomio
a(1) = y(1); % o primeiro coeficiente a1

% calcula as diferencas divididas
% elas sao armazenadas na primeira coluna de divDIF
for i = 1:n-1
	divDIF(i, 1) = (y(i+1) - y(i))/(x(i+1) - x(i));
endfor

% calcula as diferencas divididas de ordem 2 e superior (ate a ordem (n-1))
% os valores sao atribuidos as colunas de divDIF
for j = 2:n-1
	for i = 1:n-j
		divDIF(i,j) = (divDIF(i+1, j-1) - divDIF(i, j-1)) / (x(j+i) - x(i));
	endfor
endfor

% organiza e atribui os coeficientes
for j = 2:n
	a(j) = divDIF(1, j-1);
endfor

% calcula o valor interpolado de Xint
% o primeiro termo no polinomio eh a1
% os termos seguintes sao adicionados por meio de um loop
Yint = a(1);
xn = 1;

for k = 2:n
	xn = xn * (Xint - x(k-1));
	Yint = Yint + a(k) * xn;
endfor

% para testar
% >> x=[1 2 4 5 7];
% >> y=[52 5 -5 -40 10];
% >> plot(x,y,'o')
% >> grid on
% >> [Yint, a] = ex2_newton_int(x, y, 3)
%
% as saidas serao
% Yint = 6
% a = 
%
%	52 -47 14 -6 2
