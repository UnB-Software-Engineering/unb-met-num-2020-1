clc; clear all;
% newton

x=[16 40 64 88 112];
y=[4.2 9.2 10 10.7 8.6];
Xint=48;

n = length(x); 
a(1) = y(1); 


for i = 1:n-1
	divDIF(i, 1) = (y(i+1) - y(i))/(x(i+1) - x(i));
endfor


for j = 2:n-1
	for i = 1:n-j
		divDIF(i,j) = (divDIF(i+1, j-1) - divDIF(i, j-1)) / (x(j+i) - x(i));
	endfor
endfor

for j = 2:n
	a(j) = divDIF(1, j-1);
endfor

Yint = a(1);
xn = 1;

for k = 2:n
	xn = xn * (Xint - x(k-1));
	Yint = Yint + a(k) * xn;
endfor

fprintf('Yint = %.4f \n', Yint);