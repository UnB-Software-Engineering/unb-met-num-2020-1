function [t,x,y] = questao3b_edoRK4(EDO1, EDO2, a, b, h, x1, y1)
	
t(1) = a; 
x(1) = x1; 
y(1) = y1;
n = (b-a)/h;

for i = 1:n
	t(i+1) = t(i) + h;
	tm = t(i) + h/2;
	Kx1 = feval(EDO1,t(i),x(i),y(i));
	Ky1 = feval(EDO2,t(i),x(i),y(i));
	Kx2 = feval(EDO1,tm,x(i)+Kx1*h/2,y(i)+Ky1*h/2);
	Ky2 = feval(EDO2,tm,x(i)+Kx1*h/2,y(i)+Ky1*h/2);
	Kx3 = feval(EDO1,tm,x(i)+Kx2*h/2,y(i)+Ky2*h/2);
	Ky3 = feval(EDO2,tm,x(i)+Kx2*h/2,y(i)+Ky2*h/2);
	Kx4 = feval(EDO1,t(i+1),x(i)+Kx3*h,y(i)+Ky3*h);
	Ky4 = feval(EDO2,t(i+1),x(i)+Kx3*h,y(i)+Ky3*h);
	x(i+1) = x(i) + (Kx1 + 2*Kx2 + 2*Kx3 + Kx4)*h/6;
	y(i+1) = y(i) + (Ky1 + 2*Ky2 + 2*Ky3 + Ky4)*h/6;
end