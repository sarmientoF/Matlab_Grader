%% symbolic variables and constants
syms m R
v0 = 7; % m/s
th = -30; % degrees
g = 9.81; % m/s^2
% Moment of inertia of the hollow sphere
I0 = 2/3 * m * R^2;
% Total inertia 
I = I0 + m * R^2; 
% Rotational torque
W = m * g;
T_W = W * R * sind(th);
% Angular acceleration
alp = T_W / I;
aCM = alp * R;
% Distance until stops
vf = 0;
D = (vf^2 - v0^2)/ 2 / aCM;
D = vpa(D);
fprintf('The sphere travels %0.2f m before coming to rest.\n',D);
% Time to stop
Dt = (vf - v0)/ aCM;
Dt = vpa(Dt);
fprintf('The elapsed time is: %0.2f s\n',Dt);