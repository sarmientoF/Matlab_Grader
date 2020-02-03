%% symbolic variables and constants
syms x 
m = 2; % kg
F(x) = (-5*x^2 + 7*x); % N
% Initial Energy
v0 = 0; %m/s
x0 = -4; %m
E0 = (m*v0^2/2);
% Final Enery
vf = 9; %m/s
xf = 4; %m
Ef = (m*vf^2/2);
% Work from force F
F_work = abs(int(F,x,x0,xf));
% Work from friction
frictionW = F_work - (Ef - E0);
fprintf('The work done by friction is: %0.3f J \n',vpa(frictionW));