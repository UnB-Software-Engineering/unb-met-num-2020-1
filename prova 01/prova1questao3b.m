clear all; close all; clc;

fprintf('Método de Newton\n\n')

Fun=inline('x.^5 - (10/9)*x.^3 + (5/21)*x'); % funcao a ser analisada
D_Fun=inline('5*x.^4 - (10/3)*x.^2 + (5/21)'); % derivada

x0=-0.9; % chute de ponto inicial
Err=1e-5;
imax=50;

for i=1: imax
	xi=x0-feval(Fun, x0)/feval(D_Fun, x0); % funcao de iteracao
	
	if abs((xi-x0)/x0)<Err % criterio de parada
		xz=xi;
		break
	endif
	
	x0=xi;
endfor

fprintf('Solucao xz = %2.6f, obtida em %i iteracoes\n', xz, i)