clear all; close all; clc;

% definir a funcao a ser analisada
Fun=inline('x.^3 + (3.8*x.^2) - (8.6*x) - 24.4');

Err=1e-3;
imax=5;
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

fprintf('Solucao xz = %11.6f, obtida em %i iteracoes\n', xz, i)