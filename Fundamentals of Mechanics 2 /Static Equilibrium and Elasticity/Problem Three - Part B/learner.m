%% symbolic variables and constants
syms m th
assume(th>0 & th<90);
uS = 0.8; % coefficient of static friction
L_CM = 9e-2; % m
L = 20e-2; % m
g = 9.81; % m/s^2