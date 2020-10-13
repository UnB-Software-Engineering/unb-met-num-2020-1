% determine a solucao da equacao 8-4,5(x-senx) = 0 usando o metodo de newton

clear all; close all; clc;


Fun=inline('8-4.5*(x-sin(x))'); % funcao a ser analisada
D_Fun=inline('-4.5*(1-cos(x))'); % derivada

x0=2.5; % chute de ponto inicial
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

fprintf('Solucao xz = %11.6f, obtida em %i iteracoes', xz, i)