clc; clear all; close all;

a=0;
b=4;
n=100000;
h=(b-a)/n;
i=0;
for x = a:h:b
	i = i+1;
	f(i) = 3*(x^3) - 3*x + 1;
endfor

S1 = f(1);
Sn = f(n);

S2 = 0;
for i = 1:3:n-2
	S2 = S2 + f(i);
endfor

S3 = 0;
for i = 2:3:n-1
	S3 = S3 + f(i);
endfor

S4 = 0;
for i=3:3:n-3
	S4 = S4 + f(i);
endfor

I = (3*h/8)*(S1 + 3*S2 + 3*S3 + 2*S4 + Sn)

