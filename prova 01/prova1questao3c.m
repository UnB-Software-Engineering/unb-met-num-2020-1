clear all; close all; clc;

fprintf('Método da Bisseção\n\n')

% definir a funcao a ser analisada
F=inline('x.^5 - (10/9)*x.^3 + (5/21)*x');

% definir intervalos iniciais de analise
a=-0.9;
b=-0.5;

% quantidade maxima de iteracoes permitidas
imax=50;

% tolerancia para o resultado final
tol=1e-5;

% avaliar a funcao nos limites do intervalo
Fa=F(a);
Fb=F(b);

if Fa*Fb>0
	disp('Erro: Nao ha raiz no intervalo')
	
else
	disp('iter          a           b         (xNS)	F(xNS)       Tol')

	for i=1:imax
		xNS=(a+b)/2; %calcula o ponto medio do intervalo
		
		tol_i=(b-a)/2; % calcula a tolerancia
		F_xNS=F(xNS); % avalia a funcao no ponto medio
		fprintf('%3i	%11.6f %11.6f %11.6f %11.6f %11.6f\n', i, a, b, xNS, F_xNS, tol_i)
		
		% estabelecer criterio de parada com base na tolerancia estipulada
		if tol_i<tol
			break
		endif
		
		if F(a)*F_xNS<0
			b=xNS;
			
		else
			a=xNS;
		endif
	
	endfor
endif
