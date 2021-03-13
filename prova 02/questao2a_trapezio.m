clc; clear all; close all;

a=0;
b=4;
n=4;
f='3*x*x*x-3*x+1';

h = (b-a)/n;
func = inline(f);
x = a:h:b;

for i=1:n+1
	F(i) = func(x(i));
endfor

I = h*(F(1)+F(n+1))/2+h*sum(F(2:n));

fprintf('I = %.4f \n', I);
