clc; clear all;

% lagrange

x=[16 40 64 88 112];
y=[4.2 9.2 10 10.7 8.6];
Xint=105;

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