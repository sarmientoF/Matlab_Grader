%% symbolic variables and constants
syms g1 L positive
 
g0 = 9.8; % m/s^2
T0 = 2 * pi * sqrt(L/g0);
 
L = solve(T0 == 2.00000, L);
 
T1 = 2 * pi * sqrt(L/g1);
 
g1 = solve(T1 == 1.99796, g1);
 
fprintf('The acceleration due to gravity is: %0.5f m/s^2 \n', g1);