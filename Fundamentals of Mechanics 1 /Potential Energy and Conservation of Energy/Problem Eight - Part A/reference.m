%% symbolic variables and constants
syms m vf positive
v0 = 0; % m/s
h0 = 20; % m
g = 9.81; % m/s^2
hf = 0; % m
% Initial and final energies
E0 = m*g*h0;
Ef = m*vf^2/2;
vf = solve(E0 == Ef, vf);
fprintf('The speed of the skier is: %0.2f m/s \n', vf);
%nVf = vpa(vf)