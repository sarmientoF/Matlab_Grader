%% symbolic variables and constants
m = 7; % kg
v0 = 1.7; % m/s
Dx = 23e-2; % m
 
% Kinetic Energy
K0 = m *v0^2/2;
fprintf('The initial kinetic energy is: %0.3f J \n',K0)
 
% Energy in the spring
vf = 0;
Kf = m *vf^2/2;
SpringW = Kf - K0;
fprintf('The work done by the spring is: %0.3f J \n',SpringW)
 
% Conservation of energy
syms k
SpringE = -SpringW;
k = solve(SpringE == (k * Dx^2/2), k);
fprintf('The spring constant is: %0.3f N/m \n',k)