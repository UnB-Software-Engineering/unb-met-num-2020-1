clc; clear all; 

% funcao 1 -----------------

% Inline Functions

% f = inline("a+(((a*b)/c)*(a*b*(a+d).^2)/(sqrt(abs(a*b))))")
% f(21,171,50,11)

% Anonymous Functions

printf("Funcao 1 --------------------------------------------------\n\n")
f = @(a,b,c,d) a+(((a*b)/c)*(a*b*(a+d).^2)/(sqrt(abs(a*b))))
f(21,171,50,11)


% funcao 2 -----------------

printf("\nFuncao 2 --------------------------------------------------\n\n")
h = @(a,b,c,d,e) d*e^(d/2)+(((a*d)+(c*d))/((25/a)+(35/b)))/a+b+c+d
h(21,171,50,11,4)


