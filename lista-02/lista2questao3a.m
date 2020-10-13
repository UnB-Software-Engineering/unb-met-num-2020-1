clear all; close all; clc;

Fun=inline('x.^3 + (3.8*x.^2) - (8.6*x) - 24.4'); % funcao a ser analisada
D_Fun=inline('3*x.^2+7.6*x-8.6'); % derivada

x0=2.6; % chute de ponto inicial
Err=1e-5;
imax=5;

for i=1: imax
	xi=x0-feval(Fun, x0)/feval(D_Fun, x0); % funcao de iteracao
	
	if abs((xi-x0)/x0)<Err % criterio de parada
		xz=xi;
		break
	endif
	
	x0=xi;
endfor

fprintf('Solucao xz = %11.6f, obtida em %i iteracoes\n', xz, i)