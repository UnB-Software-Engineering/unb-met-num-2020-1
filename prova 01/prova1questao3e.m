clear all; close all; clc;

fprintf('Método da Secante\n\n')

% definir a funcao a ser analisada
Fun=inline('x.^5 - (10/9)*x.^3 + (5/21)*x');

Err=1e-5;
imax=50;
a=-0.7;
b=1;

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

fprintf('Solucao xz = %2.6f, obtida em %i iteracoes\n', xz, i)