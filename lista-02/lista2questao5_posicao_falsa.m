clear all; close all; clc;

% definir a funcao a ser analisada
F=inline('2*x.^3 - 11.7*x.^2 + 17.7*x - 5');

% definir intervalos iniciais de analise
a=1;
b=2;

% quantidade maxima de iteracoes permitidas
imax=50;

% tolerancia para o resultado final
tol=1e-3;

% avaliar a funcao nos limites do intervalo
Fa=F(a);
Fb=F(b);

if Fa*Fb>0
	disp('Erro: Nao ha raiz no intervalo')
	
else
	disp('iter          a           b         (xNS)	F(xNS)       Tol')

	for i=1:imax
		xNS=(a*Fb-b*Fa)/(Fb-Fa); %calcula o ponto onde a reta cruza o eixo x
		
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
