%% symbolic variables and constants
M = 1; % kg
R = 0.5; % m
D = 3; % m
Dt = 100; % s
w0 = 400 * 2* pi /60; % rad/s
f = -0.15; % N
 
% Inertia of sphere
I0 = 2/5 * M * R^2;
I = I0 + M * D^2;
 
% Angular acceleration
T = f * (R + D); % momentum
Dw =  T /  I;
 
% Angular velocity after Dt
w100 = w0  + Dw * Dt;
 
% Power 
P = abs(T) * w100;
fprintf('The power is: %0.2f W\n',P);