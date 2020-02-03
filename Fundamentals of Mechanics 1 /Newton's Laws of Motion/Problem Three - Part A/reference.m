%% symbolic variables and constants 
F = 7; % N
m = 1; % kg
th = 20; 
g = 9.81; % m/s^2
 
a = F/m - g * sind(th);
fprintf('The acceleration of the crate is: %0.2f m/s^2 \n', a);
 
% For the ramp with friction
f = 1.9; % N
 
aF = F/m - g * sind(th) - f;
 
fprintf('The acceleration of the crate with friction is: %0.2f m/s^2 \n', aF);