%% symbolic variables and constants
n = 90e-2; 
W = 500; % J
r = 2e-3; % m 
Dt = 4; % s
 
% Intensity of laser
A = pi * r^2;
P = W / Dt;
I =  P / A / n;
fprintf('Intensity of the laser beam: %0.2E W/m^2\n',I);
% Ratio of intensities
I_sun = 1.360E3;
ratio = I / I_sun;
fprintf('Ratio of intensities: %0.2E \n',ratio);