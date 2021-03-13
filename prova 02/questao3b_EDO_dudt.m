function dudt = questao3b_EDO_dudt(t,y,u)
	
g=9.81; 
T=31400; 
w=13500-360*t;
dudt = (T-w-0.036*g*u.^2)*g./w;