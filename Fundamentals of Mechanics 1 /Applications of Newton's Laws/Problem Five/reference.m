%% symbolic variables and constants
m = 0.25;  % kg
g = 9.81; % m/s^2
L0 = 4e-2; % m
DL0 = 5e-2; % m
w = 2 * (2*pi); % rad/s 
% Spring constant 
k = m * g / DL0;  
% Centripetal acceleration
syms DL 
% Velocity
v = w * (L0 + DL);
% Accelerations
aC = v^2 /(L0 + DL);
FC = m * aC;
DL = solve(k * DL == FC, DL); 
fprintf('The spring is stretched: %0.3f cm \n', DL*100);