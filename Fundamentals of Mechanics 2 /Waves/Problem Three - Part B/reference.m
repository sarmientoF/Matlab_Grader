%% symbolic variables and constants
syms n v lambda
L = 4; % m
mu = 6e-3; % kg/m
f1 = 400; % Hz, first resonant frequency
f2 = 480; % Hz, second resonant frequency
 
% Equation of resonant frequency 
f(n) = n * v / (2 * L);
% lambda for resonant frequency 
lambda(n) = 2 * L/ n;
 
% Calculate the value n, f1 = f(n), f2 = f(n+1))
n = solve(f(n)/f(n+1) == f1 / f2, n);
 
% For f1
lambda1 = lambda(n);
lambda2 = lambda(n+1);
fprintf('The wavelengths of the two resonant modes are %0.3f and %0.3f meters.\n', lambda1, lambda2);
 
% find the velocity
v = solve(f1 == f(n), v);
% Tension Force
Tension = mu * v^2;
Tension = vpa(Tension);
fprintf('The tension in the string is: %0.2f N\n', Tension);