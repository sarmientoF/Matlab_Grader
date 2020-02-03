%% symbolic variables and constants
L = 10; % m
M = 10; % kg
th = 30; % degrees
l = 6; % m: distance from the ground to the pivot
g = 9.81; % m/s^2 
% By using momentum
syms F
M_F = F * (L-l);
 
W = M * g;
M_W = (l - L/2)* cosd(th) * W;
 
F = solve(M_F == M_W, F);
F = vpa(F);% There is a small mistake with the answer (chalk up to rounding error)
fprintf('The magnitude of the applied force is: %0.2f N\n',F);