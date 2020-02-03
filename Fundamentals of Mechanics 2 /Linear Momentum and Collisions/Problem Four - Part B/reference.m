%% symbolic variables and constants
v0 = 0; % m/s
vf = 100; % m/s
Dt = 10; % s
mc = 100; % kg
ce = 1500; % m/s
g = 9.81; % m/s^2
% For a space station("no gravity")
syms mi mi_ss positive
me = mi - 100;
Dv = vf - v0;
% m*(v+dv) + dm*(v+dv-ce) -  (m+dm)*v = 0
% m * dv - dm * ce = 0
% dv - dm/m * ce = 0
% Integrate 
% Dv = log(mi/m0)
mi = solve(Dv == ce * log(mi/me),mi);
mi_ss = vpa(mi);
fprintf("The initial mass of the rocket is: %0.1f kg\n", mi_ss )