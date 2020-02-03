%% symbolic variables and constants
v0 = 0; % m/s
vf = 100; % m/s
Dt = 10; % s
mc = 100; % kg
ce = 1500; % m/s
g = 9.81; % m/s^2
syms mi positive
me = mi - 100;
Dv = vf - v0;
% m*(v+dv) + dm*(v+dv-ce) -  (m+dm)*v = -g * (m+dm) * dt
% m * dv - dm * ce = -g * m * dt
% dv - dm/m * ce = -g * dt
% Integrate ( Since g is constant int(g*dt) = g * Dt
% Dv = log(mi/m0) -  g * Dt 
mi = solve(Dv == ce * log(mi/me) - g* Dt,mi);
mi = vpa(mi);
fprintf("The initial mass of the rocket is: %0.1f kg\n", mi)