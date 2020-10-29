clc; clear;

A = [2, 3, 1, 5; 
	1, 3.5, 1, 7.5;
	1.4, 2.7, 5.5, 12;
	-2, 1, 3, 28];

L = zeros(length(A));
U = zeros(length(A));

for j=1: length(A)
	for i=1:length(A)
		sum=0;
		p=j-1;
		for k=1:p
			sum=sum+(L(i,k)*U(k,j));
		end
		
		if i==j
			U(i,j) = 1;
		end
		
		if i>=j
			L(i,j) = A(i,j)-sum;
		else
			U(i,j) = (1/L(i,i))*(A(i,j)-sum);
		end
	end
end
A
L
U