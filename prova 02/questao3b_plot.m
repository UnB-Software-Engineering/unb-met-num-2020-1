clear all; clc;
[t, y, u] = questao3b_edoRK4('questao3b_EDO_dydt','questao3b_EDO_dudt',0,3,0.1,0,0)

subplot(3,1,1)
plot(t,y)
xlabel('Tempo (s)')
ylabel('Posição (m)')

subplot(3,1,2)
plot(t,u)
xlabel('Tempo (s)')
ylabel('Velocidade (m/s)')
Acel= questao3b_EDO_dudt(t,y,u)

subplot(3,1,3)
plot(t,Acel)
xlabel('Tempo (s)')
ylabel('Aceleração (m/s^2)')