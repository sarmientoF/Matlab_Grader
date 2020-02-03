%% symbolic variables and constants
M_Earth = 5.972E24; % kg
D_moon = 3.844E8; % kg
D_Toutatis = 4 * D_moon; % m
M_Toutatis = 5E13; % kg
G = 6.67408E-11; % m^3/kg s^2
% Force
F = G*M_Earth*M_Toutatis / (D_Toutatis)^2;
fprintf('Magnitude of force Toutatis exerted on Earth: %0.2E N\n', F);
% Accelerations
a_Earth = F/M_Earth;
a_Toutatis = F/M_Toutatis;
fprintf('Acceleration of Earth caused by asteroid Toutatis: %0.2E m/s^2\n', a_Earth);
fprintf('Acceleration of asteroid Toutatis caused by Earth: %0.2E m/s^2\n', a_Toutatis);