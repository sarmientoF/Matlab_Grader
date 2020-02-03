%% symbolic variables and constants
R = 1; % m
m = 6; % kg
v0 = 10; % m/s
th = 30; 
g = 9.81; % m/s^2
% Inertia
I0 = 2/3 * m * R^2;
% Angular velocity
w = v0 / R;
% Rotational kinetic energy
IK0 = I0 * w^2/2;
IKf = 0;
IDK = IKf - IK0;
% Translational kinetic energy
K0 = m * v0^2/2;
Kf = 0; 
DK = Kf - K0;
% Work
W = DK + IDK;
fprintf('%0.2f J of work is required to stop the sphere.\n',vpa(W));
% By using energies
hMax = -W / m / g;
DMax = hMax / sind(th);
fprintf('The sphere goes up %0.2f m before stopping.\n',vpa(DMax));