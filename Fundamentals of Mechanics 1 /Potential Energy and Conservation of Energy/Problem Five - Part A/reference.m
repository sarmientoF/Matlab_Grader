%% symbolic variables and constants
k = 200; % N/m
m = 2; % kg
H = 17e-3; % m
g = 9.81; % m/s^2
% Initial Energy
h0 = H;
v0 = 0;
Dl0 = 0;
E0 = (m*g*h0) + (m*v0^2/2) + (k*Dl0^2/2);
% Final Energy
hf = 0;
vf = 0;
Dlf = H;
Ef = (m*g*hf) + (m*vf^2/2) + (k*Dlf^2/2);
% Work done by friction 
frictionW = Ef - E0;
fprintf('The work done by friction is: %0.3f J \n',vpa(frictionW));