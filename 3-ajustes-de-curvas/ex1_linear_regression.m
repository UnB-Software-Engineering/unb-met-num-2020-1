function [a1, a0] = ex1_linear_regression(x, y)
% Linear regression calculates the coefficients a1 and a0 of the linear
% equation y = a1*x + a0 that best fit n data points.
% Input variables
% x		a vector with the coordinates x of the data points
% y		a vector with the coordinates y of the data points
% Output variables
% a1	the coefficient a1
% a0	the coefficient a0

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

% para testar
% >> x=[0 30 70 100];
% >> y=[0.94 1.05 1.17 1.28];
% >> [a1, a0] = ex1_linear_regression(x, y)
%
% as saidas serao:
% a1 =  0.0033448
% a0 =  0.94276