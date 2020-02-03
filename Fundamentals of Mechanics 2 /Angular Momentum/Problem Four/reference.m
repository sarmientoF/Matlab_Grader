%% symbolic variables and constants
M_E = 5.98E24; % kg
rE = 6370E3; % m
th = 23.5; % degrees
Dt = 25780 * 365 * 24 * 60 * 60; % s
T_E = 24 * 60 * 60; % Ss : period of Earth
 
% Angular momentum
L = (2/5 * M_E * rE^2)* (2 * pi / T_E);
% Change in angular momentum
DL = 2 * L * sind(th);
fprintf('Change in angular momentum is: %0.2E kg m^2/s\n',DL);
 
% Average torque
Torque = DL/ (1/2 * Dt);
fprintf('Average torque produced by said change: %0.2E N m\n',Torque);
% Force acting on the equator
F = Torque / 2 / rE;
fprintf('Magnitude of forces at equator: %0.2E N\n',F);