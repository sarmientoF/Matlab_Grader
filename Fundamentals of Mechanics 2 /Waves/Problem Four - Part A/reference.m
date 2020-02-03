%% symbolic variables and constants
r = 200e-6; % m
L0 = 5; % m
Tension = 300; % N 
rho = 8.96 * 1e-3/1e-6; % kg/m^3
Y = 1.1E11; % N/m
 
% Mass from the wire
A = pi * r^2; 
V = A * L0;
M = rho * V;
 
% By using Young's modulus, calculate the deformation
DL = Tension * L0 / (Y * A);
 
% The actual length of the wire
Lf = L0 +DL;
% Linear density
v = sqrt(Tension/ (M/Lf));
fprintf('Speed of the pulse is: %0.1f m/s\n',vpa(v));