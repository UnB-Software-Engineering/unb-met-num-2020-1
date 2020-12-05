clc; clear all;

% x e y gerados a partir do ajuste de reta

% para altura=175:
% x = [158.00 162.38 166.75 171.12 175.50 179.88 184.25 188.62 193.00];
% y = [63.278 65.586 67.894 70.202 72.511 74.819 77.127 79.435 81.743];
% Xint=175;

% para peso=80:
x = [63.278 65.586 67.894 70.202 72.511 74.819 77.127 79.435 81.743];
y = [158.00 162.38 166.75 171.12 175.50 179.88 184.25 188.62 193.00];
Xint=80;

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

fprintf('Yint = %.4f \n', Yint);