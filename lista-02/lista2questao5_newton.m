clear all; close all; clc;

Fun=inline('2*x.^3 - 11.7*x.^2 + 17.7*x - 5'); % funcao a ser analisada
D_Fun=inline('6*x.^2-23.4*x+17.7'); % derivada

x0=1.7; % chute de ponto inicial
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

fprintf('Solucao xz = %11.6f, obtida em %i iteracoes\n', xz, i)