%% symbolic variables and constants
syms L positive
 
g0 = 9.79; % m/s^2
T0 = 2 * pi * sqrt(L/g0);
 
L = solve(T0 == 3.00000, L);
 
g1 = 9.82; % m/s^2
T_new = 2 * pi * sqrt(L/g1);
 
fprintf('The new period for g = 9.82 m/s^2 is: %0.5f s \n', T_new);