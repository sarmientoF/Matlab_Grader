%% symbolic variables and constants
syms m R
 
th = 30; 
g = 9.8; % m/s^2
Dt = 3; % s
 
% Inertia for a cylinder
I0 = 1/2 * m * R^2;
% Inertia of rolling cylinder 
I = I0 + m * R^2; % inertia at the pivot
    
% Torque due to gravity at the pivot
W = m * g;
T_W = W * R * sind(th);
    
% Angular acceleration
alp = T_W / I;
aCM = vpa(alp * R);
fprintf('The acceleration of the cylinder is: %0.2f m/s^2\n', aCM);
 
% Distance in 3 s
D = vpa(aCM * Dt^2 / 2);
fprintf('The distance the cylinder travels in 3 seconds is: %0.2f m\n', D);