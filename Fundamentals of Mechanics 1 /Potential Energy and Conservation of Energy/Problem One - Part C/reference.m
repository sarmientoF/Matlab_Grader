%% symbolic variables and constants
m = 2; % kg
h0 = 0; % m
v0 = 20; % m/s
g = 9.81; % m/s^2
th = 30; 
 
% Initial kinetic energy
K0 = KinecticE(m, v0);
fprintf('Initial kinetic energy: %0.3f J\n', K0)
% Inital potential energy 
P0 = PotentialE(m, g, h0);
fprintf('Initial potential energy: %0.3f J\n', P0)
% Total Energy
E0_tot = K0 + P0;
fprintf('a) Initial total energy: %0.3f J\n', E0_tot)
 
% Kinetic energy at the top
v_top = v0 * cosd(th);
Kf = KinecticE(m, v_top);
fprintf('b) Kinetic energy at the top: %0.3f J\n', Kf)
% Potential energy at the top
hMax = (K0-Kf) / (m*g);
Pf = PotentialE(m, g, hMax);
fprintf('c) Potential energy at the top: %0.3f J\n', Pf)
% Maximum height reached
hMax;
fprintf('d) Maximum height reached: %0.3f m\n', hMax)
% Comparison to projectile motion
[~, yFinal] = ParabolicMAX(v0,th,g);
proj_motion = hMax - yFinal;
fprintf('d) Comparison: %0.3f m\n', proj_motion)
%FUNCTIONS
function G = PotentialE(m, g, h)
    G = m * g * h;
end
function K =  KinecticE(m, v)
    K = m *v^2/2;
end
 
function[xMax, yMax] = ParabolicMAX(v,th,g)
    %g [m/s^2]
    % th in degree
    yMax = (v * sind(th))^2 / (2*g); %Maximum vertical position
    xMax = v^2 * sind(2*th)/ g; % Maximum horizontal distance
end