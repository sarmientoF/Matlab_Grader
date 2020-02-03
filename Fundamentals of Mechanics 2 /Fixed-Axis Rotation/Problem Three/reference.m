%% symbolic variables and constants
M_earth = 5.98E24; % kg
R_earth = 6.37E6; % kg
Dt = 6 * 24 * 60 * 60; % s
w0 = 0;
wf = 1 * 2 * pi / 24 / 60 /60; % rad/s
 
% Angular acceleration
Dw = (wf - w0) / Dt;
fprintf('The angular acceleration was: %0.3E rad/s^2\n',Dw);
 
% Inertia of Earth
I = 2/5 * M_earth * R_earth^2;
T = I * Dw;
fprintf('The torque applied to the Earth was: %0.3E N-m\n',T);
% The force
F = T / R_earth;
fprintf('The force needed was: %0.3E N\n',F);