clc; clear all; close all; 

x = linspace(0,4,100000);
y = 3*x.^3 - 3*x + 1;
dx = x(2)-x(1);
sum(y(1:end-1))*dx