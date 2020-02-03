% When air resistance cannot be ignored v0 = 0; % m/s
syms vf positive
m  = 50; %kg
v0 = 0; % m/s
h0 = 20; %m
g = 9.81; %m/s^2
hf = 0; %m
v0 = 0; %m/s
h0 = 20; %m
frictionW = -2000; % J
% Initial and final energies
E0 = m*g*h0;
Ef = m*vf^2/2; 
vf = solve(E0 + frictionW == Ef, vf);
fprintf('The speed of the skier at point B is: %0.2f m/s \n', vf);
%Nvf = vpa(vf)