function Yint = lista4questao3d_lagrange(x, y, Xint)
	
n = length(x); 

for i = 1:n
	L(i) = 1;
	for j = 1:n
		if j ~= i
			L(i) = L(i) * (Xint - x(j)) / (x(i) - x(j));
		endif
	endfor
endfor

Yint = sum(y.*L);

% primeiro grau 2.2
% >> x=[2 2.5];
% >> y=[8 14];
% >> Yint = lista4questao3d_lagrange(x, y, 2.2)

% segundo grau 2.2
% >> x=[1.6 2 2.5];
% >> y=[2 8 14];
% >> Yint = lista4questao3d_lagrange(x, y, 2.2)

% terceiro grau 2.2
% >> x=[1.6 2 2.5 3.2];
% >> y=[2 8 14 15];
% >> Yint = lista4questao3d_lagrange(x, y, 2.2)

% primeiro grau 3.4
% >> x=[3.2 4];
% >> y=[15 8];
% >> Yint = lista4questao3d_lagrange(x, y, 3.4)

% segundo grau 3.4
% >> x=[2.5 3.2 4];
% >> y=[14 15 8];
% >> Yint = lista4questao3d_lagrange(x, y, 3.4)

% terceiro grau 3.4
% >> x=[2 2.5 3.2 4];
% >> y=[8 14 15 8];
% >> Yint = lista4questao3d_lagrange(x, y, 3.4)

% primeiro grau 4.2
% >> x=[4 4.5];
% >> y=[8 2];
% >> Yint = lista4questao3d_lagrange(x, y, 4.2)

% segundo grau 4.2
% >> x=[3.2 4 4.5];
% >> y=[15 8 2];
% >> Yint = lista4questao3d_lagrange(x, y, 4.2)

% terceiro grau 4.2
% >> x=[2.5 3.2 4 4.5];
% >> y=[14 15 8 2];
% >> Yint = lista4questao3d_lagrange(x, y, 4.2)