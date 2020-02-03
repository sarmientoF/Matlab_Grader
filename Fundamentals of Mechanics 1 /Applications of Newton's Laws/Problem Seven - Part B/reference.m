%% symbolic variables and constants
syms m g b positive
syms v(t)
vMax = 2e-2; % m/s
m = 4e-3; % kg
g = 9.81; % m/s^2
% Velocity equation
v(t) = m * g * (1 - exp(-b*t/m)) / b;
% Acceleration
a = diff(v,t);
% Terminal velocity
bSol = solve(vMax == limit(v,t,inf), b);
fprintf('Value of the constant b is: %0.4f \n',vpa(bSol));
% Resistive force 
FR = m * g - m*limit(a,t,inf);
fprintf('Value of the resistive force is: %0.4f N \n',vpa(FR));