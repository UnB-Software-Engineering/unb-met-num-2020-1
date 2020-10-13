% determine a solucao da equacao 8-4,5(x-senx) = 0 usando o metodo da secante

clear all; close all; clc;

% definir a funcao a ser analisada
Fun=inline('8-4.5*(x-sin(x))');

Err=1e-3;
imax=50;
a=2;
b=3;

for i=1: imax
	Fb=feval(Fun,b);
	Fa=feval(Fun,a);
	
	xi=b-Fb*(a-b)/(Fa-Fb); % funcao de iteracao
	
	if abs((xi-b)/b)<Err % criterio de parada
		xz=xi;
		break
	endif
	
	a=b;
	b=xi;
endfor

fprintf('Solucao xz = %11.6f, obtida em %i iteracoes', xz, i)