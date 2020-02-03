%% symbolic variables and constants
d = 3.85E8; % m : distance to the moon
T = 27.32 * 24 * 60 * 60; % s 
M_moon = 7.35E22;% kg
 
% Velocity of moon
v_moon = d * 2 * pi / T;
% Angular momentum
L = d * M_moon * v_moon;
fprintf('Angular momentum of the Moon in its orbit around the Earth: %0.3E kg m^2/s\n',L);
 
% Compairson
rMoon = 1.74E6; % radius of the moon
T = 27.32 * 24 * 60 * 60; % s : period on its axis
 
% Angular velocity
w = 2 * pi / T;
% Inertia
I_moon = 2/5 * M_moon * rMoon^2;
 
% Momentum 
L_moon = I_moon * w;
LRatio = L / L_moon;
fprintf('Angular momentum of the Moon on its axis: %0.3E kg m^2/s\n',L_moon);
fprintf('Ratio of angular momenta: %0.3E\n',LRatio);