%% symbolic variables and constants
syms w positive 
L = 1; % m
M = 6; % kg
m1 = 4; % kg
m2 = 2; % kg
g = 9.81; % m/s^2
% By using energies 
E0 = 0;
h1 = -L/2;
h2 = L/2; 
I = m1 * (L/2)^2 + m2 * (L/2)^2 + 1/12 * M * L^2;
Ef = (m1*g*h1) + (m2*g*h2) + (I*w^2/2) ;
% Since there is energy conservation
w = solve(E0 == Ef, w);
w = vpa(w);
fprintf('Angular velocity of the stick when it swings through the vertical is: %0.2f rad/s\n',w);