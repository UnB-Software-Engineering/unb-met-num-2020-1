function Yint = ex3_lagrange_int(x, y, Xint)
% ajuste de um polinomio de lagrange
% Variaveis de entrada
% x		vetor com as coordenadas x dos pontos dados
% y		vetor com as coordenadas y dos pontos dados
% Xint	coordenada x do ponto a ser interpolado
%
% calcula o valor do polinomio
% variavel de saida
% Yint	o valor interpolado de Xint

n = length(x); % o comprimento de vetor x fornece o numero de coeficiente (e termos) do polinomio

% calcula os termos Li do produtorio
for i = 1:n
	L(i) = 1;
	for j = 1:n
		if j ~= i
			L(i) = L(i) * (Xint - x(j)) / (x(i) - x(j));
		endif
	endfor
endfor

% calcula o valor do prolinomio no ponto
Yint = sum(y.*L);

% para testar
% >> x=[1 2 4 5 7];
% >> y=[52 5 -5 -40 10];
% >> Yint = ex3_lagrange_int(x, y, 3)
%
% a saida sera
% Yint = 6.0000
