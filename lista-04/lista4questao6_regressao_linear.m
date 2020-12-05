clc; clear all;
% regressao linear

x = [0 10 20 30 40 50];
y = [0 97.0225 205.0624 310.8169 374.0356 502.2081];

nx = length(x);
ny = length(y);

if nx ~= ny
	disp('ERROR: The number of elements in x must be the same as in y')
	a1 = 'Error';
	a0 = 'Error';

else
	Sx = sum(x);
	Sy = sum(y);
	Sxy = sum(x.*y);
	Sxx = sum(x.^2);
	a1 = (nx*Sxy - Sx*Sy)/(nx*Sxx - Sx^2);
	a0 = (Sxx*Sy - Sxy*Sx)/(nx*Sxx - Sx^2);
end

fprintf('a1 = %.6f\n', a1);
fprintf('a0 = %.6f\n', a0);