%% symbolic variables and constants
F = 6; % N, vertical force
L0 = 2e-2; % m
D = 6e-3; % m, Diameter
R = D/ 2; % m, Radius
th = 20; % degrees 
Y_wood = 15E9; % Pa, Shear module, dont know the exact value
 
% Decomposition of F
F_per = F * cosd(th);
A = pi * R^2;
Dx_wood = 1/Y_wood  * F_per / A * L0;
fprintf('Amount of perpendicular flexing: %0.3E m\n', Dx_wood);
% For wood
F_par = F * sind(th);
A = pi * R^2;
DL_wood = 1/Y_wood  * F_par / A * L0;
fprintf('Amount of horizontal compression: %0.3E m\n', DL_wood);