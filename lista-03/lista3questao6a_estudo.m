clear all; close all; clc;

% A=[2 -6 -1; -3 -1 7 ; -8 1 -2];
% b=[-38 -34 -20]';

A = [5 -2 3 0;
	-3 9 1 -2;
	2 -1 -7 1; 
	4 3 -5 7]
	
b=[-1 2 3 0.5]'
x=[0 0 0 0]'
n=size(x,1);
normVal=Inf; 

tol=1e-5; itr=0;

while normVal>tol
    x_old=x;
    
    for i=1:n
        
        sigma=0;
        
        for j=1:i-1
                sigma=sigma+A(i,j)*x(j);
        end
        
        for j=i+1:n
                sigma=sigma+A(i,j)*x_old(j);
        end
        
        x(i)=(1/A(i,i))*(b(i)-sigma);
    end
    
    itr=itr+1;
    normVal=norm(x_old-x);
end
%%
fprintf('Solution of the system is : \n%11f\n%11f\n%11f\n%11f\n in %d iterations',x,itr);