clc; clear all;

% x e y gerados a partir do ajuste de reta

% para peso=80:
% x = [61.000 63.500 66.000 68.500 71.000 73.500 76.000 78.500 81.000];
% y = [157.02 160.99 164.95 168.91 172.88 176.84 180.81 184.77 188.73];
% Xint=80;

% para altura=175:
x = [157.02 160.99 164.95 168.91 172.88 176.84 180.81 184.77 188.73];
y = [61.000 63.500 66.000 68.500 71.000 73.500 76.000 78.500 81.000];
Xint=175;

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